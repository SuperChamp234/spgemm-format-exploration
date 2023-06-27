/*
* This file contains other sparse structures for the outer product
*/

#ifndef SPARSE_STRUCTURES_HPP
#define SPARSE_STRUCTURES_HPP
#include <ap_fixed.h>
#include "outer_product.hpp"

//X is of size MxP, Y is of size PxN, Z is of size MxN

typedef ap_fixed<32, 16> data_t;
//LIL sparse matrix struct
struct lil_t_1 {
    int index[M][P];
    data_t data[M][P];
};
struct lil_t_2 {
    int index[P][N];
    data_t data[P][N];
};
/*
* The above lil struct still consumes a lot of memory, we must instead know how many max number of non-zero elements are present in a column of the matrix
* In that case, int index[NNZ][P] and data_t data[NNZ][P] where NNZ is the max number of non-zero elements in a column.
*/

//ELL sparse matrix struct
struct ell_t_1 {
    int index[M][P+1];
    data_t data[M][P+1];
};
struct ell_t_2 {
    int index[P][N+1];
    data_t data[P][N+1];
};
/*
* The above ell struct still consumes a lot of memory, we must instead know how many max number of non-zero elements are present in a row of the matrix
* In that case, int index[M][NNZ+1] and data_t data[M][NNZ+1] where NNZ is the max number of non-zero elements in a row.
*/

#endif // SPARSE_STRUCTURES_HPP