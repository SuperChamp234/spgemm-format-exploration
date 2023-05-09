#ifndef MATRIX_MULTIPLIER_H_
#define MATRIX_MULTIPLIER_H_

const int MATRIX_ROWS = 3;
const int MATRIX_COLS = 3;

// HLS function to multiply two elements
int multiply(int a, int b);

// HLS function to perform a matrix multiplication
void matrix_multiplier(int *matrix1, int *matrix2, int *output_matrix);

#endif // MATRIX_MULTIPLIER_H_
