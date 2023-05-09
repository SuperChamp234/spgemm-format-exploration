#include <iostream>
#include "matrix_multiplier.h"

int main()
{
    int matrix1[MATRIX_ROWS * MATRIX_COLS] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int matrix2[MATRIX_ROWS * MATRIX_COLS] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
    int output_matrix[MATRIX_ROWS * MATRIX_COLS] = {0};

    matrix_multiplier(matrix1, matrix2, output_matrix);

    std::cout << "Matrix 1:\n";
    for (int i = 0; i < MATRIX_ROWS; i++)
    {
        for (int j = 0; j < MATRIX_COLS; j++)
        {
            std::cout << matrix1[i * MATRIX_COLS + j] << " ";
        }
        std::cout << "\n";
    }

    std::cout << "\nMatrix 2:\n";
    for (int i = 0; i < MATRIX_ROWS; i++)
    {
        for (int j = 0; j < MATRIX_COLS; j++)
        {
            std::cout << matrix2[i * MATRIX_COLS + j] << " ";
        }
        std::cout << "\n";
    }

    std::cout << "\nOutput Matrix:\n";
    for (int i = 0; i < MATRIX_ROWS; i++)
    {
        for (int j = 0; j < MATRIX_COLS; j++)
        {
            std::cout << output_matrix[i * MATRIX_COLS + j] << " ";
        }
        std::cout << "\n";
    }

    return 0;
}
