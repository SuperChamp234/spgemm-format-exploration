#include "row_product.hpp"

//extract row from csr and store it in an array
data_t* extract_row(csr_t_2 inp_csr, int row)
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

//multiply row with a scalar
void row_scalar_mult(data_t* row, data_t scalar)
{
    #pragma HLS inline
    #pragma HLS array_partition variable=row complete
    #pragma HLS array_partition variable=scalar complete
    for (int i = 0; i < N; i++)
    {
        if (row[i] != 0)
        {
            row[i] = row[i] * scalar;
        }
    }
}

//add two rows
void row_add(data_t* row1, data_t* row2)
{
    #pragma HLS inline
    #pragma HLS array_partition variable=row1 complete
    #pragma HLS array_partition variable=row2 complete
    for (int i = 0; i < N; i++)
    {
        row1[i] = row1[i] + row2[i];
    }
}

//append a row array to a csr_out_t by updating the rowptr and colind and data
void append_row(csr_out_t* out_csr, data_t* row, int row_idx)
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
    //init empty csr_out_t
    csr_out_t csr;
    csr.rowptr[0] = 0;
    int idx = 0;
    //iterate over rows of x
    for (int i = 0; i < M; i++)
    {
        //extract elements of row i of x without extract_row function
        int start_idx  = x.rowptr[i];
        int end_idx = x.rowptr[i+1];
        int j = start_idx;
        #pragma HLS unroll
        for (int k = 0; k < N; k++)
        {
            if (j < end_idx && x.colind[j] == k)
            {
                //extract row k of y
                data_t* row = extract_row(y, k);
                //multiply element-wise row i of x with row k of y
                row_scalar_mult(row, x.data[j]);
                //add row i of x with row k of y
                row_add(row, csr.data);
                //append row to csr_out_t
                append_row(&csr, row, idx);
                idx++;
                j++;
            }
        }
    }
    return csr;
}