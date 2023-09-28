#include "outer_product.hpp"

//extract row from csr and store it in an array
void extract_row(csr_t inp_csr, data_t* out_row, int row)
{
    int start_idx = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        #ifdef EXTRACT_ROW
            clock_counter++;
        #endif
        int col_idx = inp_csr.colind[j];
        data_t data = inp_csr.data[j];
        out_row[i] = (j < end_idx && col_idx == i) ? data : data_t(0);
        (j < end_idx && col_idx == i) ? j++ : j;
    }
}

//extract column from csc and store it in an array, csc is MxP
void extract_col(csc_t inp_csc, data_t* out_col, int col)
{
    int start_idx = inp_csc.colptr[col];
    int end_idx = inp_csc.colptr[col+1];
    int j = start_idx;
    int compare;
    for (int i = 0; i < M; i++)
    {
        #ifdef EXTRACT_COL
            clock_counter++;
        #endif
        compare = inp_csc.rowind[j];
        out_col[i] = (j < end_idx && compare == i) ? inp_csc.data[j] : data_t(0);
        (j < end_idx && compare == i) ? j++ : j;
    }
}

data_t mult(data_t a, data_t b)
{
    #pragma HLS INLINE off
    data_t c = a * b;
    #pragma HLS RESOURCE variable=c core=FMul_nodsp
    return c;
}

void multiply_row_col(data_t* row, data_t* col, csr_out_t out)
{
    //write 0 to the first element of rowptr    
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
                data_t temp = mult(row[j], col[i]);
                out.data[z_idx] = temp;
                z_idx++;
            }
        }
        out.rowptr[i+1] = z_idx;
    }
}

void accumulate(csr_out_t out, csr_out_t csr1, csr_out_t csr2)
{
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
        start_idx_1 = csr1.rowptr[i];
        end_idx_1 = csr1.rowptr[i+1];
        start_idx_2 = csr2.rowptr[i];
        end_idx_2 = csr2.rowptr[i+1];
        int j = start_idx_1;
        int k = start_idx_2;
        int z_idx = out.rowptr[i];
        while (j < end_idx_1 && k < end_idx_2)
        {
            element1 = csr1.colind[j];
            element2 = csr2.colind[k];
            if (element1 == element2)
            {
                // Append the sum to the end of the arrays
                data_1 = csr1.data[j];
                data_2 = csr2.data[k];
                sum = data_1 + data_2;
                out.data[z_idx] = sum;
                out.colind[z_idx] = csr1.colind[j];
                j++;
                k++;
                z_idx++;
            }
            else if (element1 < element2)
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
        out.rowptr[i + 1] = z_idx;
    }
}

void set_zero (csr_out_t out)
{
    for (int i = 0; i < M+1; i++)
    {
        #ifdef SET_ZERO
            clock_counter++;
        #endif
        out.rowptr[i] = 0;
    }
    for (int i = 0; i < M*N; i++)
    {
        #ifdef SET_ZERO
            clock_counter++;
        #endif
        out.colind[i] = 0;
        out.data[i] = 0;
    }
}

#ifdef DEBUG
void print_csr_out_t_t(csr_out_t z_csr)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            bool found = false;
            for (int k = z_csr.rowptr[i]; k < z_csr.rowptr[i + 1]; k++)
            {
                if (z_csr.colind[k] == j)
                {
                    std::cout << z_csr.data[k] << " ";
                    found = true;
                    break;
                }
            }
            if (!found)
            {
                std::cout << "0 ";
            }
        }
        std::cout << std::endl;
    }
}
#endif

void outer_product(int* x_rowptr, int* x_colind, data_t* x_data, int* y_colptr, int* y_rowind, data_t* y_data, int* z_rowptr, int* z_colind, data_t* z_data)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=25 port=x_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=x_colind
#pragma HLS INTERFACE m_axi depth=25 port=x_data
#pragma HLS INTERFACE m_axi depth=25 port=y_colptr
#pragma HLS INTERFACE m_axi depth=25 port=y_rowind
#pragma HLS INTERFACE m_axi depth=25 port=y_data
#pragma HLS INTERFACE m_axi depth=25 port=z_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=z_colind
#pragma HLS INTERFACE m_axi depth=25 port=z_data
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
    for (int i = 0; i < P+1; i++)
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
        set_zero(partial_z);
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
        #ifdef DEBUG
            print_csr_out_t_t(z_csr);
            std::cout << "=========================" << std::endl;
        #endif
    }
}
