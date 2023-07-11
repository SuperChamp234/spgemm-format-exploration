#include "outer_product.hpp"
#include <vector>
#include <fstream>
#include <algorithm>
#include <cmath>

using namespace std;

struct COO_unit
{
    int row;
    int col;
    data_t data;
};
struct COO
{
    vector<COO_unit> units;
};

COO assemble_COO_matrix(std::string filePath)
{
    int M, N, L;
    COO matrix;
    std::ifstream fin(filePath);
    // Ignore headers and comments:
    while (fin.peek() == '%')
        fin.ignore(2048, '\n');
    // Read defining parameters:
    fin >> M >> N >> L;

    for (int l = 0; l < L; l++)
    {
        int row, col;
        double data;
        fin >> row >> col >> data;
        matrix.units.push_back({row - 1, col - 1, data});
    }
    // sort the matrix
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
         { return (a.row == b.row) ? (a.col < b.col) : (a.row < b.row); });
    fin.close();
    return matrix;
}

COO assemble_simetric_COO_matrix(std::string filePath)
{
    int M, N, L;
    vector<int> rows, cols;
    vector<double> data;
    COO matrix;
    std::ifstream fin(filePath);
    // Ignore headers and comments:
    while (fin.peek() == '%')
        fin.ignore(2048, '\n');
    // Read defining parameters:
    fin >> M >> N >> L;
    for (int l = 0; l < L; l++)
    {
        // Read (i,j,A[i,j]) triplets:
        int i, j;
        double Aij;
        fin >> i >> j >> Aij;
        // fill COO matrix
        matrix.units.push_back({i-1, j-1, Aij});
    }
    // since the matrix is simetric, we need to have the same elements in the lower triangle
    for (int l = 0; l < L; l++)
    {
        // fill COO matrix
        if (matrix.units[l].row != matrix.units[l].col)
            matrix.units.push_back({matrix.units[l].col, matrix.units[l].row, matrix.units[l].data});
    }
    // sort the matrix
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
         { return (a.row == b.row) ? (a.col < b.col) : (a.row < b.row); });
    fin.close();
    return matrix;
}

void print_COO(const COO& coo, int numRows, int numCols) {
    std::vector<std::vector<double>> denseMatrix(numRows, std::vector<double>(numCols, 0.0));

    for (const auto& unit : coo.units) {
        denseMatrix[unit.row][unit.col] = unit.data;
    }

    for (const auto& row : denseMatrix) {
        for (const auto& element : row) {
            std::cout << element << " ";
        }
        std::cout << std::endl;
    }
}

// convert COO matrix to CSR matrix
csr_t COO_to_CSR(COO matrix)
{
    csr_t csr;
    int row = 0;
    int rowptr = 0;
    csr.rowptr[row] = rowptr;
    for (int i = 0; i <= matrix.units.size(); i++)
    {
        if (matrix.units[i].row == row)
        {
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
        }
        else
        {
            row++;
            csr.rowptr[row] = rowptr;
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
        }
    }
    return csr;
}

csc_t COO_to_CSC(COO matrix)
{
    csc_t csc;
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
                                { return (a.col == b.col) ? (a.row < b.row) : (a.col < b.col); });
    int col = 0;
    int colptr = 0;
    csc.colptr[col] = colptr;
    for (int i = 0; i <= matrix.units.size(); i++)
    {
        if (matrix.units[i].col == col)
        {
            csc.rowind[colptr] = matrix.units[i].row;
            csc.data[colptr] = matrix.units[i].data;
            colptr++;
        }
        else
        {
            col++;
            csc.colptr[col] = colptr;
            csc.rowind[colptr] = matrix.units[i].row;
            csc.data[colptr] = matrix.units[i].data;
            colptr++;
        }
    }
    return csc;
}

csr_out_t COO_to_CSR_OUT(COO matrix)
{
    csr_out_t csr;
    int row = 0;
    int rowptr = 0;
    csr.rowptr[row] = rowptr;
    for (int i = 0; i <= matrix.units.size(); i++)
    {
        if (matrix.units[i].row == row)
        {
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
        }
        else
        {
            row++;
            csr.rowptr[row] = rowptr;
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
        }
    }
    return csr;
}

//compare if two csr_out_t are equal
bool compare_csr_out_t(csr_out_t z_csr, csr_out_t z_csr2)
{
    bool equal = true;
    for (int i = 0; i < M; i++)
    {
        if (z_csr.rowptr[i] != z_csr2.rowptr[i])
        {
            equal = false;
            break;
        }
    }
    //print if rowptr is equal
    cout << "rowptr is equal: " << equal << endl;
    for (int i = 0; i < z_csr.rowptr[M]; i++)
    {
        if (z_csr.colind[i] != z_csr2.colind[i])
        {
            equal = false;
            break;
        }
    }
    //print if colind is equal
    cout << "colind is equal: " << equal << endl;
    for (int i = 0; i < z_csr.rowptr[M]; i++)
    {
        //check data till 2 fixed point precision
        int check = std::abs(z_csr.data[i] - z_csr2.data[i]) > 0.01;
        if (check)
        {
            equal = false;
            break;
        }
    }
    //print if data is equal
    cout << "data is equal: " << equal << endl;
    return equal;
}

void test_extract_row(csr_t test_case){
    for (int i = 0; i < N; i++) {
        std::cout << "row " << i << std::endl;
        data_t* out_row = extract_row(test_case, i);
        for (int j = 0; j < P; j++) {
            std::cout << out_row[j] << " ";
        }
        std::cout << std::endl;
    }
}

void test_extract_col(csc_t test_case){
    for (int i = 0; i < P; i++) {
        std::cout << "col " << i << std::endl;
        data_t* out_col = extract_col(test_case, i);
        for (int j = 0; j < M; j++) {
            std::cout << out_col[j] << " ";
        }
        std::cout << std::endl;
    }
}

void print_csr_out_t(csr_out_t z_csr)
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            bool found = false;
            for (int k = z_csr.rowptr[i]; k < z_csr.rowptr[i + 1]; k++)
            {
                if (z_csr.colind[k] == j)
                {
                    std::cout << z_csr.data[k] << " ";
                    found = true;
                    break;
                }
            }
            if (!found)
            {
                std::cout << "0 ";
            }
        }
        std::cout << std::endl;
    }
}

void test_mult(csr_t test_case1, csc_t test_case2){
    data_t* row; 
    data_t* col;
    for(int i = 0; i < P; i++){
        row = extract_row(test_case1, i);
        col = extract_col(test_case2, i);
        std::cout << "row " << i << std::endl;
        for (int j = 0; j < P; j++) {
            std::cout << row[j] << " ";
        }
        std::cout << std::endl;
        std::cout << "col " << i << std::endl;
        for (int j = 0; j < M; j++) {
            std::cout << col[j] << " ";
        }
        std::cout << std::endl;
        csr_out_t out = multiply_row_col(row, col);
        print_csr_out_t(out);
        std::cout << "----------------" << std::endl;
    }
}

void test_accumulate(csr_out_t test_case1, csr_out_t test_case2){
    csr_out_t out = accumulate(test_case1, test_case2);
    print_csr_out_t(out);
}

void basic_test() {



// csc_t csc: A 4x5

// 1 2 0 0 0
// 0 3 4 0 0
// 5 0 6 7 0
// 0 0 0 8 9

// csr_t csr: B 5x5

// 1  0  5  0  0
// 0  2  0  6  0
// 3  0  0  0  0
// 0  4  7  0  8
// 0  0  0  0  9

//csr_out_t csr: test 4x5

// 1   4  5  12   0
// 12  6  0  18   0
// 23 28 74	  0  56
// 0  32 56   0	145

    csc_t A = {
        .colptr= {0, 2, 4, 6, 8, 9},
        .rowind= {0, 2, 0, 1, 1, 2, 2, 3, 3},
        .data= {1, 5, 2, 3, 4, 6, 7, 8, 9}
    };
    csr_t B = {
        .rowptr= {0, 2, 4, 5, 8, 9},
        .colind = {0, 2, 1, 3, 0, 1, 2, 4, 4},
        .data = {1, 5, 2, 6, 3, 4, 7, 8, 9}
    };
    csr_out_t test = {
        .rowptr= {0, 4, 7, 11, 14},
        .colind = {0, 1, 2, 3, 0, 1, 3, 0, 1, 2, 4, 1, 2, 4},
        .data = {1, 4, 5, 12, 12, 6, 18, 23, 28, 74, 56, 32, 56, 145}
    };
    csr_out_t test2 = {
        .rowptr= {0, 2, 4, 5, 8},
        .colind = {0, 2, 1, 3, 0, 1, 2, 4},
        .data = {1, 5, 2, 6, 3, 4, 7, 8}
    };

    // Test extract_row
    //test_extract_row(B);
    // Test extract_col
    //test_extract_col(A);
    // Test multiply_row_col
    //test_mult(B, A);
    // Test accumulate
    //test_accumulate(test, test2);

    // Test outer_product
    csr_out_t out = outer_product(A, B);
    print_csr_out_t(out);
}

void synth_test(){
    COO coo_A = assemble_simetric_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/A.mtx");
    COO coo_B = assemble_simetric_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/B.mtx");
    COO coo_C = assemble_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/C.mtx");

    csr_t csr_A = COO_to_CSR(coo_A);
    csc_t csc_B = COO_to_CSC(coo_B);
    csr_out_t csr_C = COO_to_CSR_OUT(coo_C);
    print_COO(coo_C, M, N);
    std::cout << "----------------" << std::endl;

    csr_out_t out = outer_product(csc_B, csr_A);
    print_csr_out_t(out);
    std::cout << "----------------" << std::endl;
    cout << "CSR_OUT == CSR_OUT: ? " << endl;
    if(compare_csr_out_t(out, csr_C)){
        cout << "TRUE" << endl;
    } else {
        cout << "FALSE" << endl;
    }
}

int main() {
    //basic_test();
    synth_test();
    return 0;
}
