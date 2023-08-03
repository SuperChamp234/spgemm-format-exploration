#ifndef OUTER_PRODUCT_CSR_H
#define OUTER_PRODUCT_CSR_H

#define NO_SYNTH
#define DEBUG

#include <cstring>
#include <ap_fixed.h>

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
    int* colptr;
    int* rowind;
    data_t* data;
};
struct csr_t {
    int* rowptr;
    int* colind;
    data_t* data;
};

struct csr_out_t {
    int* rowptr;
    int* colind;
    data_t* data;
};
/*
    * Extract a row from a matrix in CSR format
    * @param inp_csr: the matrix in CSR format
    * @param row: the row to be extracted
    * @return data_t*: the row in an array
*/
void extract_row(csr_t& inp_csr, data_t* out_row, int row);
/*
    * Extract a column from a matrix in CSC format
    * @param inp_csc: the matrix in CSC format
    * @param col: the column to be extracted
    * @return data_t*: the column in an array
*/
void extract_col(csc_t& inp_csc, data_t* out_col, int col);
/*
    * Multiply two matrices in CSR format
    * @param x_rowptr: the row pointer of the first matrix in CSR format
    * @param x_colind: the column index of the first matrix in CSR format
    * @param x_data: the data of the first matrix in CSR format
    * @param y_colptr: the row pointer of the second matrix in CSR format
    * @param y_rowind: the column index of the second matrix in CSR format
    * @param y_data: the data of the second matrix in CSR format
    * @param z_rowptr: the row pointer of the product matrix in CSR format
    * @param z_colind: the column index of the product matrix in CSR format
    * @param z_data: the data of the product matrix in CSR format
    * @return void
*/
void outer_product(int* x_rowptr, int* x_colind, data_t* x_data, int* y_colptr, int* y_rowind, data_t* y_data, int* z_rowptr, int* z_colind, data_t* z_data);
/*
    * Multiply a row and a column
    * @param row: the row in an array
    * @param col: the column in an array
    * @return csr_out_t: the product of the row and column
*/
void multiply_row_col(data_t* row, data_t* col, csr_out_t& out);
/*
    * Accumulate two matrices in CSR format
    * @param csr_out_t: the first matrix in CSR format
    * @param csr_out_t: the second matrix in CSR format
    * @return csr_out_t: the sum of the two matrices in CSR format
*/
void accumulate(csr_out_t& out, csr_out_t& csr1, csr_out_t& csr2);

#endif // OUTER_PRODUCT_CSR_H
