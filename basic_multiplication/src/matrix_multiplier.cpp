#include "matrix_multiplier.h"

int multiply(int a, int b)
{
#pragma HLS inline
    return a * b;
}

void matrix_multiplier(int *matrix1, int *matrix2, int *output_matrix)
{
#pragma HLS INTERFACE m_axi port=matrix1 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=matrix2 offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=output_matrix offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=matrix1 bundle=control
#pragma HLS INTERFACE s_axilite port=matrix2 bundle=control
#pragma HLS INTERFACE s_axilite port=output_matrix bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    int row1[MATRIX_COLS], col2[MATRIX_ROWS];

row_loop:
    for (int i = 0; i < MATRIX_ROWS; i++)
    {
    // Retrieve the i-th row of matrix1
    row1_loop:
        for (int j = 0; j < MATRIX_COLS; j++)
        {
#pragma HLS pipeline II=1
        	row1[j] = matrix1[i * MATRIX_COLS + j];
        }

    col_loop:
        for (int j = 0; j < MATRIX_COLS; j++)
        {
        // Retrieve the j-th column of matrix2
        col2_loop:
            for (int k = 0; k < MATRIX_ROWS; k++)
            {
#pragma HLS pipeline II=1
                col2[k] = matrix2[k * MATRIX_COLS + j];
            }

            // Multiply the row with the column and accumulate the result
            int accumulator = 0;
        mult_loop:
            for (int k = 0; k < MATRIX_COLS; k++)
            {
#pragma HLS unroll factor=MATRIX_COLS
                int result = multiply(row1[k], col2[k]);
                accumulator += result;
            }

// Store the result in the output matrix
#pragma HLS pipeline II=1
            output_matrix[i * MATRIX_COLS + j] = accumulator;
        }
    }
}
