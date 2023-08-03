#include "outer_product.hpp"

//extract row from csr and store it in an array
void extract_row(csr_t& inp_csr, data_t* out_row, int row)
{
    int start_idx;
    int end_idx;
    //access the rowptr using memcpy
    memcpy(&start_idx, &(inp_csr.rowptr[row]), sizeof(int));
    memcpy(&end_idx, &(inp_csr.rowptr[row+1]), sizeof(int));
    int compare;
    int j = start_idx;
    #pragma HLS unroll
    for (int i = 0; i < N; i++)
    {
        memcpy(&compare, &(inp_csr.colind[j]), sizeof(int));
        if (j < end_idx && compare == i)
        {
            memcpy(&(out_row[i]), &(inp_csr.data[j]), sizeof(data_t));
            j++;
        }
        else
        {
            out_row[i] = 0;
        }
    }
}

//extract column from csc and store it in an array, csc is MxP
void extract_col(csc_t& inp_csc, data_t* out_col, int col)
{
    int start_idx;
    int end_idx;
    //access the colptr using memcpy
    memcpy(&start_idx, &(inp_csc.colptr[col]), sizeof(int));
    memcpy(&end_idx, &(inp_csc.colptr[col+1]), sizeof(int));
    int j = start_idx;
    int compare;
    #pragma HLS unroll
    for (int i = 0; i < M; i++)
    {
        memcpy(&compare, &(inp_csc.rowind[j]), sizeof(int));
        if (j < end_idx && compare == i)
        {
            memcpy(&(out_col[i]), &(inp_csc.data[j]), sizeof(data_t));
            j++;
        }
        else
        {
            out_col[i] = 0;
        }
    }
}

data_t mult(data_t a, data_t b)
{
    #pragma HLS INLINE off
    data_t c = a * b;
    #pragma HLS RESOURCE variable=c core=FMul_nodsp
    return c;
}

void multiply_row_col(data_t* row, data_t* col, csr_out_t& out)
{
    //write 0 to the first element of rowptr    
    int zero = 0;
    memcpy(&(out.rowptr[0]), &zero, sizeof(int));
    int z_idx = 0;
    
    for(int i = 0; i < M; i++)
    {
        #pragma HLS unroll
        //#pragma HLS unroll factor=0
        for(int j = 0; j < N; j++)
        {
            if (row[j] != 0 && col[i] != 0)
            {
                memcpy(&(out.colind[z_idx]), &j, sizeof(int));
                data_t temp = mult(row[j], col[i]);
                memcpy(&(out.data[z_idx]), &temp, sizeof(data_t));
                z_idx++;
            }
        }
        memcpy(&(out.rowptr[i+1]), &z_idx, sizeof(int));
    }
}

void accumulate(csr_out_t& out, csr_out_t& csr1, csr_out_t& csr2)
{
    memcpy(&(out.rowptr[0]), &(csr1.rowptr[0]), sizeof(int));
    int z_idx = 0;
    
    for (int i = 0; i < M; i++)
    {
        int start_idx_1;
        int end_idx_1;
        int start_idx_2;
        int end_idx_2;
        int element1; int element2;
        int data_1; int data_2;
        int colind_1; int colind_2;
        data_t sum;
        memcpy(&start_idx_1, &(csr1.rowptr[i]), sizeof(int));
        memcpy(&end_idx_1, &(csr1.rowptr[i+1]), sizeof(int));
        memcpy(&start_idx_2, &(csr2.rowptr[i]), sizeof(int));
        memcpy(&end_idx_2, &(csr2.rowptr[i+1]), sizeof(int));
        int j = start_idx_1;
        int k = start_idx_2;
        memcpy(&(z_idx), &(out.rowptr[i]), sizeof(int));
        while (j < end_idx_1 && k < end_idx_2)
        {
            memcpy(&element1, &(csr1.colind[j]), sizeof(int));
            memcpy(&element2, &(csr2.colind[k]), sizeof(int));
            if (element1 == element2)
            {
                // Append the sum to the end of the arrays
                memcpy(&data_1, &(csr1.data[j]), sizeof(data_t));
                memcpy(&data_2, &(csr2.data[k]), sizeof(data_t));
                sum = data_1 + data_2;
                memcpy(&(out.data[z_idx]), &(sum), sizeof(data_t));
                memcpy(&(out.colind[z_idx]), &(csr1.colind[j]), sizeof(int));
                j++;
                k++;
                z_idx++;
            }
            else if (element1 < element2)
            {
                memcpy(&(out.data[z_idx]), &(csr1.data[j]), sizeof(data_t));
                memcpy(&(out.colind[z_idx]), &(csr1.colind[j]), sizeof(int));
                j++;
                z_idx++;
            }
            else
            {
                memcpy(&(out.data[z_idx]), &(csr2.data[k]), sizeof(data_t));
                memcpy(&(out.colind[z_idx]), &(csr2.colind[k]), sizeof(int));
                k++;
                z_idx++;
            }
        }

        while (j < end_idx_1)
        {
            memcpy(&(out.data[z_idx]), &(csr1.data[j]), sizeof(data_t));
            memcpy(&(out.colind[z_idx]), &(csr1.colind[j]), sizeof(int));
            j++;
            z_idx++;
        }

        while (k < end_idx_2)
        {
            memcpy(&(out.data[z_idx]), &(csr2.data[k]), sizeof(data_t));
            memcpy(&(out.colind[z_idx]), &(csr2.colind[k]), sizeof(int));
            k++;
            z_idx++;
        }
        memcpy(&(out.rowptr[i + 1]), &z_idx, sizeof(int));
    }
}

void outer_product(int* x_rowptr, int* x_colind, data_t* x_data, int* y_colptr, int* y_rowind, data_t* y_data, int* z_rowptr, int* z_colind, data_t* z_data)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi port=x_rowptr offset=slave
#pragma HLS INTERFACE m_axi port=x_colind offset=slave
#pragma HLS INTERFACE m_axi port=x_data offset=slave
#pragma HLS INTERFACE m_axi port=y_colptr offset=slave
#pragma HLS INTERFACE m_axi port=y_rowind offset=slave
#pragma HLS INTERFACE m_axi port=y_data offset=slave
#pragma HLS INTERFACE m_axi port=z_rowptr offset=slave
#pragma HLS INTERFACE m_axi port=z_colind offset=slave
#pragma HLS INTERFACE m_axi port=z_data offset=slave
    csc_t x_csc;
    x_csc.colptr = x_rowptr;
    x_csc.rowind = x_colind;
    x_csc.data = x_data;
    csr_t y_csr;
    y_csr.rowptr = y_colptr;
    y_csr.colind = y_rowind;
    y_csr.data = y_data;

    // Step 1: Initialize the partial matrix of Z
    csr_out_t z_csr;
    z_csr.rowptr = z_rowptr;
    z_csr.colind = z_colind;
    z_csr.data = z_data;

    data_t col[M];
    data_t row[N];
    // Step 2: For each column in x_csc and row in y_csr, extract them and compute the outer product
    for (int i = 0; i < P; i++)
    {
        // Step 2.1: Extract the column from x_csc and row from y_csr
        extract_col(x_csc, col, i);
        extract_row(y_csr, row, i);
        // Step 2.2: Compute the outer product of the column and row
        int partial_z_rowptr[M+1]; int partial_z_colind[M*N]; data_t partial_z_data[M*N];
        #pragma HLS RESOURCE variable=partial_z_rowptr core=RAM_1P_BRAM
        #pragma HLS RESOURCE variable=partial_z_colind core=RAM_1P_BRAM
        #pragma HLS RESOURCE variable=partial_z_data core=RAM_1P_BRAM
        #pragma HLS ARRAY_PARTITION variable=partial_z_rowptr complete
        #pragma HLS ARRAY_PARTITION variable=partial_z_colind complete
        #pragma HLS ARRAY_PARTITION variable=partial_z_data complete
        csr_out_t partial_z = {partial_z_rowptr, partial_z_colind, partial_z_data};
        multiply_row_col(row, col, partial_z);
        // Step 2.3: Accumulate the partial matrix of Z
        if(i == 0)
        {
            z_csr = partial_z;
        }
        else
        {
            csr_out_t temp_z;
            temp_z.rowptr = z_rowptr;
            temp_z.colind = z_colind;
            temp_z.data = z_data;
            accumulate(z_csr, temp_z, partial_z);
        }
    }
}
