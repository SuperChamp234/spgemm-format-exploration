#ifndef OUTER_PRODUCT_CSR_H
#define OUTER_PRODUCT_CSR_H

#include <ap_fixed.h>

#include "mmio.h"
#define NO_SYNTH
//#define DEBUG

#ifdef NO_SYNTH
#include <iostream>
#endif

const int M =  4;
const int P =  5;
const int N =  5;
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
/*
    * Extract a row from a matrix in CSR format
    * @param inp_csr: the matrix in CSR format
    * @param row: the row to be extracted
    * @return data_t*: the row in an array
*/
data_t* extract_row(csr_t inp_csr, int row);
/*
    * Extract a column from a matrix in CSC format
    * @param inp_csc: the matrix in CSC format
    * @param col: the column to be extracted
    * @return data_t*: the column in an array
*/
data_t* extract_col(csc_t inp_csc, int col);
/*
    * Multiply two matrices in CSR format
    * @param x_csr: the first matrix in CSR format
    * @param y_csr: the second matrix in CSR format
    * @return csr_out_t: the product of the two matrices in CSR format
*/
csr_out_t outer_product(csc_t x_csc, csr_t y_csr);
/*
    * Multiply a row and a column
    * @param row: the row in an array
    * @param col: the column in an array
    * @return csr_out_t: the product of the row and column
*/
csr_out_t multiply_row_col(data_t* row, data_t* col);
/*
    * Accumulate two matrices in CSR format
    * @param csr_out_t: the first matrix in CSR format
    * @param csr_out_t: the second matrix in CSR format
    * @return csr_out_t: the sum of the two matrices in CSR format
*/
csr_out_t accumulate(csr_out_t csr1, csr_out_t csr2);

/*
    * Convert a matrix in Matrix Market format to CSR format
    * @param filename: path to the matrix file
    * @return csr_t: the matrix in CSR format
*/

csr_t mmio_to_csr(const char* filename);

#endif // OUTER_PRODUCT_CSR_H
