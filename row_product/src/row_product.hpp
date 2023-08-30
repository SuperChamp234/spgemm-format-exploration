/**
 * @file row_product.hpp
 * @brief Header file containing function declarations for performing row product of two matrices in CSR format.
 * 
 * This file contains function declarations for performing row product of two matrices in CSR format. The matrices are assumed to be of sizes MxP and PxN, and the resulting matrix is of size MxN. The matrices are assumed to be in CSC and CSR formats, and the resulting matrix is in CSR format.
 * 
 * The following functions are declared in this file:
 * 
 * - extract_row: Extracts a row from a CSR matrix and stores it in a vector.
 * - extract_element: Extracts an element from a CSR matrix.
 * - row_scalar_mult: Multiplies a row with a scalar.
 * - row_add: Adds two rows.
 * - append_row: Appends a row to a CSR matrix.
 * - row_product: Performs row product of two matrices in CSR format.
 * 
 * The following structures are defined in this file:
 * 
 * - csr_t_1: Structure representing a CSR matrix.
 * - csr_t_2: Structure representing a CSR matrix.
 * - csr_out_t: Structure representing a CSR matrix.
 * 
 * The following constants are defined in this file:
 * 
 * - M: The number of rows in the first matrix.
 * - P: The number of columns in the first matrix and the number of rows in the second matrix.
 * - N: The number of columns in the second matrix.
 */
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

typedef ap_fixed<32, 16> data_t;

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

/**
 * @brief Extracts a row from a CSR matrix and stores it in a vector.
 * 
 * @param inp_csr The input CSR matrix.
 * @param row The row to be extracted.
 * @param out_row The output vector to store the extracted row.
 */
void extract_row(csr_t_2 inp_csr, int row, hls::vector<data_t, N>& out_row);

/**
 * @brief Extracts an element from a CSR matrix.
 * 
 * @param inp_csr The input CSR matrix.
 * @param row The row of the element to be extracted.
 * @param col The column of the element to be extracted.
 * @param out_data The output variable to store the extracted element.
 */
void extract_element(csr_t_1 inp_csr, int row, int col, data_t& out_data);

/**
 * @brief Multiplies a row with a scalar.
 * 
 * @param scalar The scalar to multiply the row with.
 * @param row The row to be multiplied.
 */
void row_scalar_mult(data_t scalar, hls::vector<data_t, N>& row);

/**
 * @brief Adds two rows.
 * 
 * @param row1 The first row to be added.
 * @param row2 The second row to be added.
 */
void row_add(hls::vector<data_t, N>& row1, hls::vector<data_t, N>& row2);

/**
 * @brief Appends a row to a CSR matrix.
 * 
 * @param out_csr The output CSR matrix to append the row to.
 * @param row The row to be appended.
 * @param row_idx The index of the row to be appended.
 */
void append_row(csr_out_t* out_csr, hls::vector<data_t, N>& row, int row_idx);

/**
 * @brief Performs row product of two matrices in CSR format.
 * 
 * @param x_rowptr The row pointer array of the first matrix.
 * @param x_colind The column index array of the first matrix.
 * @param x_data The data array of the first matrix.
 * @param y_rowptr The row pointer array of the second matrix.
 * @param y_colind The column index array of the second matrix.
 * @param y_data The data array of the second matrix.
 * @param z_rowptr The row pointer array of the resulting matrix.
 * @param z_colind The column index array of the resulting matrix.
 * @param z_data The data array of the resulting matrix.
 */
void row_product( int* x_rowptr, int* x_colind, data_t* x_data, int* y_rowptr, int* y_colind, data_t* y_data,  int* z_rowptr,  int* z_colind,  data_t* z_data);
#endif
