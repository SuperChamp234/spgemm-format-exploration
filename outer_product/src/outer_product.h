#ifndef OUTER_PRODUCT_CSR_H
#define OUTER_PRODUCT_CSR_H

#include <ap_fixed.h>
#define NO_SYNTH
//#define DEBUG

#ifdef NO_SYNTH
#include <iostream>
#endif

#define M 4
#define P 5
#define N 5
//X is of size MxP, Y is of size PxN, Z is of size MxN
//X is CSC, Y is CSR, Z is CSR

typedef ap_fixed<32, 16> data_t;
struct csc_t {
    int colptr[P+1];
    int rowind[M*P];
    data_t data[M*P];
};
struct csr_t {
    int rowptr[P+1];
    int colind[M*P];
    data_t data[M*P];
};

struct csr_out_t {
    int rowptr[M+1];
    int colind[M*N];
    data_t data[M*N];
};

data_t* extract_row(csr_t inp_csr, int row);
data_t* extract_col(csc_t inp_csc, int col);\
csr_out_t outer_product(csc_t x_csc, csr_t y_csr);
csr_out_t multiply_row_col(data_t* row, data_t* col);
csr_out_t accumulate(csr_out_t csr1, csr_out_t csr2);

#endif // OUTER_PRODUCT_CSR_H
