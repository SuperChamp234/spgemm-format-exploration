#ifndef OUTER_PRODUCT_CSR_H
#define OUTER_PRODUCT_CSR_H

#include <ap_fixed.h>
#include "hls_stream.h"

#ifdef NO_SYNTH
#include <iostream>
#endif

const int M =  5;
const int P =  5;
const int N =  5;
//X is of size MxP, Y is of size PxN, Z is of size MxN
//X is CSC, Y is CSR, Z is CSR

typedef ap_fixed<32, 16> data_t;
typedef struct csc_t {
    int* colptr;
    int* rowind;
    data_t* data;
} csc_t;
typedef struct csr_t {
    int* rowptr;
    int* colind;
    data_t* data;
} csr_t;

typedef struct csr_out_t {
    int* rowptr;
    int* colind;
    data_t* data;
} csr_out_t;
/**
    * Extract a row from a matrix in CSR format
    * @param inp_csr: the matrix in CSR format
    * @param row: the row to be extracted
    * @return data_t*: the row in an array
*/
void extract_row(csr_t inp_csr, data_t* out_row, int row);
/**
    * Extract a column from a matrix in CSC format
    * @param inp_csc: the matrix in CSC format
    * @param col: the column to be extracted
    * @return data_t*: the column in an array
*/
void extract_col(csc_t inp_csc, data_t* out_col, int col);
/**
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
/**
    * Multiply a row and a column
    * @param row: the row in an array
    * @param col: the column in an array
    * @return csr_out_t: the product of the row and column
*/
void multiply_row_col(data_t* row, data_t* col, csr_out_t& out);
/**
    * Accumulate two matrices in CSR format
    * @param csr_out_t: the first matrix in CSR format
    * @param csr_out_t: the second matrix in CSR format
    * @return csr_out_t: the sum of the two matrices in CSR format
*/
void accumulate(csr_out_t csr1, csr_out_t csr2, csr_out_t out_csr);

/**
 * Merges two arrays of column indices and their corresponding data arrays into a single merged array.
 * 
 * @param colind1 The first array of column indices.
 * @param colind2 The second array of column indices.
 * @param colind1_size The size of the first array of column indices.
 * @param colind2_size The size of the second array of column indices.
 * @param merged_colind The resulting merged array of column indices.
 * @param data1 The first array of data corresponding to the first array of column indices.
 * @param data2 The second array of data corresponding to the second array of column indices.
 * @param merged_data The resulting merged array of data.
 */
void mergeRows(hls::stream<int>& colind1, hls::stream<int>& colind2, hls::stream<data_t>& data1, hls::stream<data_t>& data2, hls::stream<int>& merged_colind, hls::stream<data_t>& merged_data);

void extractCSRrows(csr_out_t csr, int row, hls::stream<int>& colind, hls::stream<data_t>& data);


#endif // OUTER_PRODUCT_CSR_H
