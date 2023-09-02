#include "row_product.hpp"

//extract row from csr and store it in an array
void extract_row(csr_t_2 inp_csr, int row, hls::vector<data_t, N>& out_row)
{
    int start_idx = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        int col_idx = inp_csr.colind[j];
        data_t data = inp_csr.data[j];
        out_row[i] = (j < end_idx && col_idx == i) ? data : data_t(0);
        (j < end_idx && col_idx == i) ? j++ : j;
    }
}

void extract_element(csr_t_1 inp_csr, int row, int col, data_t& out_data)
{
    int start_idx = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    bool found = false;

    for (int j = start_idx; j < end_idx; j++)
    {
        int col_idx = inp_csr.colind[j];
        if (col_idx == col)
        {
            out_data = inp_csr.data[j];
            found = true;
        }
    }
    if (!found)
    {
        out_data = data_t(0);
    }
}


//multiply row with a scalar
void row_scalar_mult(data_t scalar, hls::vector<data_t, N>& row)
{
    row *= scalar;
}

//add two rows
void row_add(hls::vector<data_t, N>& row1, hls::vector<data_t, N>& row2)
{
    row1 += row2;
}

//append a row array to a csr_out_t by updating the rowptr and colind and data
void append_row(csr_out_t* out_csr, hls::vector<data_t, N>& row, int row_idx)
{
    #pragma HLS array_partition variable=row complete
    int start_idx = out_csr->rowptr[row_idx];
    int end_idx = out_csr->rowptr[row_idx+1];
    
    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        if (row[i] != 0)
        {
            int col_idx = i;
            data_t data = row[i];
            out_csr->colind[j] = col_idx;
            out_csr->data[j] = data;
            j++;
        }
    }
    
    out_csr->rowptr[row_idx+1] = j;
}

void row_product( int* x_rowptr, int* x_colind, data_t* x_data, int* y_rowptr, int* y_colind, data_t* y_data, int* z_rowptr,  int* z_colind,  data_t* z_data)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=25 port=x_rowptr 
#pragma HLS INTERFACE m_axi depth=25 port=x_colind
#pragma HLS INTERFACE m_axi depth=25 port=x_data
#pragma HLS INTERFACE m_axi depth=25 port=y_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=y_colind
#pragma HLS INTERFACE m_axi depth=25 port=y_data
#pragma HLS INTERFACE m_axi depth=25 port=z_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=z_colind
#pragma HLS INTERFACE m_axi depth=25 port=z_data


    //init csr_t_1
    csr_t_1 x;
    x.rowptr = x_rowptr;
    x.colind = x_colind;
    x.data = x_data;
    csr_t_2 y;
    y.rowptr = y_rowptr;
    y.colind = y_colind;
    y.data = y_data;

    //init empty csr_out_t
    csr_out_t csr;
    csr.rowptr = z_rowptr;
    csr.colind = z_colind;
    csr.data = z_data;

    csr.rowptr[0] = 0;
    hls::vector<data_t, N> extracted_row = data_t(0);
    hls::vector<data_t, N> buffer_row = data_t(0);
    data_t extracted_scalar = data_t(0);
    //C[I,:] = Sum(A[I,K]*B[K,:])
    //iterate over the rows of Y
    #pragma HLS dataflow
    for (int i = 0; i < M; i++)
    {
        for (int k = 0; k < N; k++)
        {
            extract_element(x, i, k, extracted_scalar);
            if (extracted_scalar != 0)
            {                
                extract_row(y, k, extracted_row);
                row_scalar_mult(extracted_scalar, extracted_row);
                row_add(buffer_row, extracted_row);
            }
        }
        append_row(&csr, buffer_row, i);
        buffer_row = data_t(0);
    }
}
