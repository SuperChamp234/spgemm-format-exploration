#include "outer_product.hpp"

csr_t mmio_to_csr(const char* filename)
{
    csr_t csr;
    int ret_code;
    MM_typecode matcode;
    FILE *f = fopen(filename, "r");
    int M, N, nz;
    int i;


    if (mm_read_banner(f, &matcode) != 0)
    {
        printf("Could not process Matrix Market banner.\n");
        return csr;
    }
    printf("Matrix Market matcode: %s\n", mm_typecode_to_str(matcode));
    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) !=0)
        return csr;

    int I[nz];
    int J[nz];
    data_t val[nz];

    for (i=0; i<nz; i++)
    {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  /* adjust from 1-based to 0-based */
        J[i]--;
    }
    if (f !=stdin) fclose(f);
    //print nnz
    printf("nnz: %d\n", nz);
    //convert to csr
    // csr.rowptr[0] = 0;
    // int row = 0;
    // int idx = 0;
    // for (int i = 0; i < nz; i++)
    // {
    //     if (I[i] != row)
    //     {
    //         row = I[i];
    //         csr.rowptr[row+1] = idx;
    //     }
    //     csr.colind[idx] = J[i];
    //     csr.data[idx] = val[i];
    //     idx++;
    // }
    // csr.rowptr[M] = idx;
    // return csr;
}

//extract row from csr and store it in an array
data_t* extract_row(csr_t inp_csr, int row)
{
    static data_t out_row[P];
    int start_idx  = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    int j = start_idx;
    #pragma HLS unroll
    for (int i = 0; i < N; i++)
    {
        if (j < end_idx && inp_csr.colind[j] == i)
        
        {
            out_row[i] = inp_csr.data[j];
            #if  defined(NO_SYNTH) && defined(DEBUG)
            std::cout << "out_row[" << i << "] = " << out_row[i] << std::endl;
            #endif
            j++;
        }
        else
        {
            out_row[i] = 0;
        }
    }
    return out_row;
}

//extract column from csc and store it in an array, csc is MxP
data_t* extract_col(csc_t inp_csc, int col)
{
    static data_t out_col[M];
    int start_idx  = inp_csc.colptr[col];
    int end_idx = inp_csc.colptr[col+1];
    int j = start_idx;
    #pragma HLS unroll
    for (int i = 0; i < M; i++)
    {
        if (j < end_idx && inp_csc.rowind[j] == i)
        {
            out_col[i] = inp_csc.data[j];
            #if  defined(NO_SYNTH) && defined(DEBUG)
            std::cout << "out_col[" << i << "] = " << out_col[i] << std::endl;
            #endif
            j++;
        }
        else
        {
            out_col[i] = 0;
        }
    }
    return out_col;
}

data_t mult(data_t a, data_t b)
{
    #pragma HLS INLINE off
    data_t c = a * b;
    #pragma HLS RESOURCE variable=c core=FMul_nodsp
    return c;
}

csr_out_t multiply_row_col(data_t* row, data_t* col)
{
    csr_out_t out;
    out.rowptr[0] = 0;
    int z_idx = 0;
    
    for(int i = 0; i < M; i++)
    {
        #pragma HLS unroll
        //#pragma HLS unroll factor=0
        for(int j = 0; j < N; j++)
        {
            if (row[j] != 0 && col[i] != 0)
            {
                out.colind[z_idx] = j;
                out.data[z_idx] = mult(row[j], col[i]);
                z_idx++;
            }
        }
        out.rowptr[i+1] = z_idx;
    }
    return out;
}

csr_out_t accumulate(csr_out_t csr1, csr_out_t csr2)
{
    csr_out_t out;
    out.rowptr[0] = 0;
    int z_idx = 0;
    for(int i = 0; i < M; i++)
    {
        int start_idx_1 = csr1.rowptr[i];
        int end_idx_1 = csr1.rowptr[i+1];
        int start_idx_2 = csr2.rowptr[i];
        int end_idx_2 = csr2.rowptr[i+1];
        int j = start_idx_1;
        int k = start_idx_2;
        z_idx = out.rowptr[i];
        while (j < end_idx_1 && k < end_idx_2)
        {
            if(csr1.colind[j] == csr2.colind[k])
            {
                //append the sum to the end of the arrays
                out.data[z_idx] = csr1.data[j] + csr2.data[k];
                out.colind[z_idx] = csr1.colind[j];
                j++;
                k++;
                z_idx++;
            }
            else if(csr1.colind[j] < csr2.colind[k])
            {
                out.data[z_idx] = csr1.data[j];
                out.colind[z_idx] = csr1.colind[j];
                j++;
                z_idx++;
            }
            else
            {
                out.data[z_idx] = csr2.data[k];
                out.colind[z_idx] = csr2.colind[k];
                k++;
                z_idx++;
            }
        }
        while (j < end_idx_1)
        {
            out.data[z_idx] = csr1.data[j];
            out.colind[z_idx] = csr1.colind[j];
            j++;
            z_idx++;
        }
        while (k < end_idx_2)
        {
            out.data[z_idx] = csr2.data[k];
            out.colind[z_idx] = csr2.colind[k];
            k++;
            z_idx++;
        }
        out.rowptr[i+1] = z_idx;
    }
    return out;
}

csr_out_t outer_product(csc_t x_csc, csr_t y_csr)
{

    // Step 1: Initialize the partial matrix of Z
    csr_out_t z_csr;

    data_t* row;
    data_t* col;
    // Step 2: For each column in x_csc and row in y_csr, extract them and compute the outer product
    for (int i = 0; i < P; i++)
    {
        // Step 2.1: Extract the column from x_csc and row from y_csr
        col = extract_col(x_csc, i);
        row = extract_row(y_csr, i);
        // Step 2.2: Compute the outer product of the column and row
        csr_out_t partial_z = multiply_row_col(row, col);
        // Step 2.3: Accumulate the partial matrix of Z
        if(i == 0)
        {
            z_csr = partial_z;
        }
        else
        {
            z_csr = accumulate(z_csr, partial_z);
        }
    }
    return z_csr;
}
