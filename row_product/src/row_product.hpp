#ifndef ROW_PRODUCT_H
#define ROW_PRODUCT_H

#include <ap_fixed.h>
#include <hls_vector.h>
#include "string.h"

#define DEBUG

#ifdef NO_SYNTH
#include <iostream>
//#include "mmio.h"
#endif

const int M = 5;
const int P = 5;
const int N = 5;
//X is of size MxP, Y is of size PxN, Z is of size MxN
//X is CSC, Y is CSR, Z is CSR

typedef double data_t;

struct csr_t_1 {
    int* rowptr;
    int* colind;
    data_t* data;
};

struct csr_t_2 {
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
* Function row_product
* --------------------
* Computes the product of a CSR matrix X with a CSR matrix Y
* Input: CSR matrix X, CSR matrix Y
* Output: CSR output matrix Z
*/
void row_product(int* x_rowptr, int* x_colind, data_t* x_data, int* y_rowptr, int* y_colind, data_t* y_data, int* z_rowptr, int* z_colind, data_t* z_data);

/*
* Function extract_row
* --------------------
* Extracts a row from a CSR matrix and stores it in an array
* Input: CSR matrix, row index
* Output: Array containing the row
*/
hls::vector<data_t, N> extract_row(csr_t_2 inp_csr, int row);

/*
* Function row_scalar_mult
* --------------------
* Multiplies a row with a scalar
* Input: Row array, scalar
* Output: Array containing the row
*/
hls::vector<data_t, N> row_scalar_mult(hls::vector<data_t, N>& row, data_t scalar);

/*
* Function row_add
* --------------------
* Adds two rows
* Input: Two row arrays
* Output: None
*/
void row_add(hls::vector<data_t, N>& row1, hls::vector<data_t, N>& row2);

/*
* Function append_row
* --------------------
* Appends a row array to a CSR matrix by updating the rowptr, colind and data
* Input: CSR matrix, row array, row index
* Output: None
*/
void append_row(csr_out_t* out_csr, hls::vector<data_t, N>& row, int row_idx);
/*
* Function extract_element
* --------------------
* Extracts an element from a CSR matrix
* Input: CSR matrix, row index, column index
* Output: Element
*/
data_t extract_element(csr_t_1 inp_csr, int row_idx, int col_idx);

#endif
