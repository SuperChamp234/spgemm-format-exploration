#include "row_product.hpp"

//extract row from csr and store it in an array
hls::vector<data_t, N> extract_row(csr_t_2 inp_csr, int row)
{
    hls::vector<data_t, N> out_row;
    int start_idx  = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    int j = start_idx;
    #pragma HLS unroll
    for (int i = 0; i < N; i++)
    {
        if (j < end_idx && inp_csr.colind[j] == i)

        {
            out_row[i] = inp_csr.data[j];
            // #if  defined(NO_SYNTH) && defined(DEBUG)
            // std::cout << "out_row[" << i << "] = " << out_row[i] << std::endl;
            // #endif
            j++;
        }
        else
        {
            out_row[i] = 0;
        }
    }
    return out_row;
}

data_t extract_element(csr_t_1 inp_csr, int row, int col)
{
    int start_idx = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row + 1];

    for (int j = start_idx; j < end_idx; j++)
    {
        if (inp_csr.colind[j] == col)
        {
            return inp_csr.data[j];
        }
    }
    
    return 0; // Return 0 if the column index is not found
}


//multiply row with a scalar
hls::vector<data_t, N> row_scalar_mult(hls::vector<data_t, N>& row, data_t scalar)
{
    #pragma HLS inline
    #pragma HLS array_partition variable=row complete
    row *= scalar;
    return row;
}

//add two rows
void row_add(hls::vector<data_t, N>& row1, hls::vector<data_t, N>& row2)
{
    #pragma HLS inline
    #pragma HLS array_partition variable=row1 complete
    #pragma HLS array_partition variable=row2 complete
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
            out_csr->colind[j] = i;
            out_csr->data[j] = row[i];
            j++;
        }
    }
    out_csr->rowptr[row_idx+1] = j;
}

csr_out_t row_product(csr_t_1 x, csr_t_2 y){
#pragma HLS BIND_STORAGE variable=x.rowptr type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=x.colind type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=x.data type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=y.rowptr type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=y.colind type=ram_2p impl=bram
#pragma HLS BIND_STORAGE variable=y.data type=ram_2p impl=bram
    //init empty csr_out_t
    csr_out_t csr;
    #pragma HLS BIND_STORAGE variable=csr.rowptr type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=csr.colind type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=csr.data type=ram_2p impl=bram
    csr.rowptr[0] = 0;
    hls::vector<data_t, N> extracted_row = data_t(0);
    hls::vector<data_t, N> buffer_row = data_t(0);
    hls::vector<data_t, N> mult_row = data_t(0);
    data_t extracted_scalar = data_t(0);
    //C[I,:] = Sum(A[I,K]*B[K,:])
    //iterate over the rows of Y
    for (int i = 0; i < M; i++)
    {
        for (int k = 0; k < N; k++)
        {
            extracted_scalar = extract_element(x, i, k);
            if (extracted_scalar != 0)
            {
                extracted_row = extract_row(y, k);
                mult_row = row_scalar_mult(extracted_row, extracted_scalar);
                row_add(buffer_row, mult_row);
            }
        }
        append_row(&csr, buffer_row, i);
        buffer_row = data_t(0);
    }
    return csr;
}
