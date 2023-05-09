#include "outer_product.h"

void csr_to_stream(csr_t csr, int row_idx, stream_t& row_stream)
{
    int start_idx = csr.rowptr[row_idx];
    int end_idx = csr.rowptr[row_idx + 1];

    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        if (j < end_idx && csr.colind[j] == i)
        {
            row_stream.write(csr.data[j]);
            j++;
        }
        else
        {
            row_stream.write(0);
        }
    }
}

void csc_to_stream(csc_t csc, int col_idx, stream_t& col_stream)
{
    int start_idx = csc.colptr[col_idx];
    int end_idx = csc.colptr[col_idx + 1];

    int j = start_idx;
    for (int i = 0; i < M; i++)
    {
        if (j < end_idx && csc.rowind[j] == i)
        {
            col_stream.write(csc.data[j]);
            j++;
        }
        else
        {
            col_stream.write(0);
        }
    }
}
//print a stream without consuming it, used for debugging
void print_stream(stream_t& s) {
    stream_t temp_stream;
    while (!s.empty()) {
        auto val = s.read();
        temp_stream.write(val);
        std::cout << val << " ";
    }
    while (!temp_stream.empty()) {
        s.write(temp_stream.read());
    }
    std::cout << std::endl;
}

//print csr_out_t, debugging purposes
void print_csr_out_t(csr_out_t z_csr){
    for (int i = 0; i < P; i++) {
        for (int j = 0; j < P; j++) {
            bool found = false;
            for (int k = z_csr.rowptr[i]; k < z_csr.rowptr[i + 1]; k++) {
                if (z_csr.colind[k] == j) {
                    std::cout << z_csr.data[k] << " ";
                    found = true;
                    break;
                }
            }
            if (!found) {
                std::cout << "0 ";
            }
        }
        std::cout << std::endl;
    }
}
csr_out_t multiply_outer(stream_t& col_stream, stream_t& row_stream){
    csr_out_t z_csr;
    int z_idx = 0;
    z_csr.rowptr[0] = 0;
    for (int i = 0; i < N; i++) {
        int row_val = row_stream.read();
        for (int j = 0; j < M; j++) {
            int col_val = col_stream.read();
            int prod = row_val * col_val;
            if (prod != 0) {
                //std::cout << prod  << " ";
                z_csr.data[z_idx] = prod;
                z_csr.colind[z_idx] = j;
                z_idx++;
            }
            col_stream.write(col_val);
        }
        std::cout << std::endl;
        z_csr.rowptr[i+1] = z_idx;
    }
    return z_csr;
}

void accumulate(csr_out_t& z_csr, csr_out_t& z_partial){
    for (int i = 0; i < P + 1; i++) {
        int start_idx = z_partial.rowptr[i];
        int end_idx = z_partial.rowptr[i + 1];
        for (int j = start_idx; j < end_idx; j++) {
            int col_idx = z_partial.colind[j];
            z_csr.data[j] += z_partial.data[j];
        }
    }
}

void outer_product_opt(csc_t x_csc, csr_t y_csr, csr_out_t &z_csr)
{
    // Step 1: Initialize the partial matrix of Z
    int z_idx = 0;
    z_csr.rowptr[0] = 0;
    
    // Step 2: For each column in X and row in Y, extract the corresponding streams
    for (int x_col = 0; x_col < P; x_col++) {
        stream_t x_col_stream;
        csc_to_stream(x_csc, x_col, x_col_stream);
        print_stream(x_col_stream);

        for (int y_row = 0; y_row < P; y_row++) {
            stream_t y_row_stream;
            csr_out_t partial_z_csr;
            csr_to_stream(y_csr, y_row, y_row_stream);
            print_stream(y_row_stream);
            
            partial_zcsr = multiply_outer(x_col_stream, y_row_stream);
        }
    }
}