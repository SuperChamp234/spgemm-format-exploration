#ifndef OUTER_PRODUCT_CSR_H
#define OUTER_PRODUCT_CSR_H

#include <ap_fixed.h>
#include <hls_stream.h>
#define M 4
#define P 5
#define N 5
//X is of size MxP, Y is of size PxN, Z is of size MxN
//X is CSC, Y is CSR, Z is CSR

typedef ap_fixed<32, 16> data_t;
typedef hls::stream<data_t> stream_t;

struct csc_t {
    int colptr[P+1];
    int *rowind;
    data_t *data;
};
struct csr_t {
    int rowptr[P+1];
    int *colind;
    data_t *data;
};

struct csr_out_t {
    int rowptr[M+1];
    int *colind;
    data_t *data;
};
//extract rows from csr
void csr_to_stream(csr_t csr, int row_idx , stream_t& row_stream);
//extract columns from csc
void csc_to_stream(csc_t csc, int col_idx, stream_t& col_stream);
void outer_product_opt(csc_t x_csr, csr_t y_csc, csr_out_t &z_csr);
csr_out_t multiply_outer(stream_t& col_stream, stream_t& row_stream);

//print csr_out_t
void print_csr_out_t(csr_out_t z_csr);

#endif // OUTER_PRODUCT_CSR_H
