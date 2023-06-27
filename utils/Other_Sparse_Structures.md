# List of Sparse Structures 

1. BCSR/BCSC
2. COO & DOK
3. LIL
4. ELL & SELL

## BCSR/BCSC

This is similar to CSR, but the arrays are stored in blocks. The block size is fixed. This allows for better dealing with large matrices. For a matrix of size n x n, the number of blocks is n / block_size. The block size is usually chosen to be a power of 2. Since we can use HLS pragmas like `array partition`, I do not feel the need to implement this.

## COO & DOK

The COO (Coordinate) format stores the matrix as a list of (row, column, value) tuples. The DOK (Dictionary of Keys) format is a dictionary of (row, column) -> value. Both of these formats are useful for constructing sparse matrices. I feel that I can use the COO format in row-based sparse matrix-general matrix multiplication (SpGEMM). 

## LIL (List of Lists)

This is a list of lists. In this structure, one list is used for each row/col. Each list contains the non-zero elements in that row/col. This is useful for constructing sparse matrices in HLS, as I already have to predefine the size of the arrays of any sparse structure, therefore I don't have to worry about wasted memory since the sparse structure will utilize it all.

## ELL & SELL

Similar to LIL format, but they are stored in column major order, and padded with zeros to make all rows the same length(in the indices and values arrays). This is ideal for SIMD processing, but Vivado 2018 HLS does not support vectorization of arrays, so I should update my Vivado to properly take advantage of this.



