#include "outer_product.hpp"
#include <gmp.h> 
#include <vector>
#include <fstream>
#include <algorithm>
#include <cmath>

using namespace std;

void test_extract_row(csr_t test_case){
    for (int i = 0; i < N; i++) {
        std::cout << "row " << i << std::endl;
        data_t out_row[N];
        extract_row(test_case, out_row, i);
        for (int j = 0; j < P; j++) {
            std::cout << out_row[j] << " ";
        }
        std::cout << std::endl;
    }
}

void test_extract_row_stream()
{
    csr_out_t test = {
        .rowptr = new int[M + 1]{0, 2, 2, 4, 4},
        .colind = new int[M * N]{0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        .data = new data_t[M * N]{1, 5, 5, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    };
    hls::stream<int> colind;
    hls::stream<data_t> data;
    for (int i = 0; i < M; i++)
    {
        extractCSRrows(test, i, colind, data);
        std::cout << "row " << i << std::endl;
        while (!colind.empty())
        {
            std::cout << colind.read() << " ";
        }
        std::cout << std::endl;
        while (!data.empty())
        {
            std::cout << data.read() << " ";
        }
        std::cout << std::endl;
    }
}

void test_extract_col(csc_t test_case){
    for (int i = 0; i < P; i++) {
        std::cout << "col " << i << std::endl;
        data_t out_col[M];
        extract_col(test_case, out_col, i);
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
    data_t row [N];
    data_t col [M];
    int out_rowptr[M+1];
    int out_colind[M*N];
    data_t out_data[M*N];
    csr_out_t out = {out_rowptr, out_colind, out_data};
    for(int i = 0; i < P; i++){
        extract_col(test_case2, col, i);
        extract_row(test_case1, row, i);
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
        std::cout << std::endl;
        multiply_row_col(row, col, out);
        print_csr_out_t(out);
        std::cout << "----------------" << std::endl;
    }
}

void test_accumulate(csr_out_t test_case1, csr_out_t test_case2){
    cout << "test_case1" << endl;
    print_csr_out_t(test_case1);
    cout << "test_case2" << endl;
    print_csr_out_t(test_case2);
    cout << "out" << endl << endl;
    int out_rowptr[M+1];
    int out_colind[M*N];
    data_t out_data[M*N];
    csr_out_t out = {out_rowptr, out_colind, out_data};
    accumulate(test_case1, test_case2, out);
    print_csr_out_t(out);
    std::cout << "----------------" << std::endl;
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

    int A_colptr[P+1]=    {0, 2, 4, 6, 8, 9};
    int A_rowind[M*P]=    {0, 2, 0, 1, 1, 2, 2, 3, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    data_t A_data[M*P] =  {1, 5, 2, 3, 4, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    csc_t A = {A_colptr, A_rowind, A_data};
    int B_rowptr[P+1]=    {0, 2, 4, 5, 8, 9};
    int B_colind[N*P]=    {0, 2, 1, 3, 0, 1, 2, 4, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    data_t B_data[N*P]=   {1, 5, 2, 6, 3, 4, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    csr_t B = {B_rowptr, B_colind, B_data};
    int test_rowptr[M+1]= {0, 4, 7, 11, 14};
    int test_colind[M*N]= {0, 1, 2, 3, 0, 1, 3, 0, 1,  2,  4,  1,  2,  4, -1, -1, -1, -1, -1, -1};
    data_t test_data[M*N]={1, 4, 5, 12, 12, 6, 18, 23, 28, 74, 0, 56, 32, 56, -1, -1, -1, -1, -1};
    csr_out_t test = {test_rowptr, test_colind, test_data};
    // csr_out_t test2 = {
    //     .rowptr= new int[M+1]{0, 2, 4, 5, 8},
    //     .colind = new int[M*N]{0, 2, 1, 3, 0, 1, 2, 4},
    //     .data = new data_t[M*N]{1, 5, 2, 6, 3, 4, 7, 8}
    // };
    int test_rowptr2[M+1]= {0, 2, 4, 5, 8};
    int test_colind2[M*N]= {0, 2, 1, 3, 0, 1, 2, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    data_t test_data2[M*N]={1, 5, 2, 6, 3, 4, 7, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    csr_out_t test2 = {test_rowptr2, test_colind2, test_data2};
    // Test extract_row
    //test_extract_row(B);
    // Test extract_col
    //test_extract_col(A);
    // Test multiply_row_col
    //test_mult(B, A);
    // Test accumulate
    //test_accumulate(test, test2);
    //test_extract_row_stream();

    // Test outer_product
     static int out_rowptr[M+1]; 
     static int out_colind[M*N];
     static data_t out_data[M*N];
     csr_out_t out = {out_rowptr, out_colind, out_data};
     outer_product(A_colptr, A_rowind, A_data, B_rowptr, B_colind, B_data, out_rowptr, out_colind, out_data);
     print_csr_out_t({out_rowptr, out_colind, out_data});
     cout<< "----------------" << endl;
    //print each out_rowptr, out_colind, out_data
    // for(int i = 0; i < M+1; i++){
    //     cout << out_rowptr[i] << " ";
    // }
    // cout << endl;
    // for(int i = 0; i < M*N; i++){
    //     cout << out_colind[i] << " ";
    // }
    // cout << endl;
    // for(int i = 0; i < M*N; i++){
    //     cout << out_data[i] << " ";
    // }
}

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

csr_out_t new_csr_out_t()
{
    csr_out_t csr;
    int rowptr[M + 1];
    int colind[M * N];
    data_t data[M * N];
    csr.rowptr = rowptr;
    csr.colind = colind;
    csr.data = data;
    //check if allocation was successful
    if (!csr.rowptr || !csr.colind || !csr.data)
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
    }
    return csr;
}

COO assemble_COO_matrix(std::string filePath)
{
    int M, N, L;
    COO matrix;
    FILE * f = fopen(filePath.c_str(), "r");
    while (fgetc(f) == '%')
        fscanf(f, "%*[^\n]\n");
    fseek(f, -1, SEEK_CUR);
    fscanf(f, "%d %d %d", &M, &N, &L);
    for (int l = 0; l < L; l++)
    {
        int row, col;
        double data;
        fscanf(f, "%d %d %lg\n", &row, &col, &data);
        COO_unit unit = {row - 1, col - 1, data};
        matrix.units.push_back(unit);
    }
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
         { return (a.row == b.row) ? (a.col < b.col) : (a.row < b.row); });
    fclose(f);
    return matrix;
}

COO assemble_simetric_COO_matrix(std::string filePath)
{
    int M, N, L;
    vector<int> rows, cols;
    vector<data_t> data;
    COO matrix;
    FILE * f = fopen(filePath.c_str(), "r");    
    while (fgetc(f) == '%')
        fscanf(f, "%*[^\n]\n");
    //read M, N, L
    fseek(f, -1, SEEK_CUR);
    fscanf(f, "%d %d %d", &M, &N, &L);
    for (int l = 0; l < L; l++)
    {
        // Read (i,j,A[i,j]) triplets:
        int i, j;
        double Aij;
        fscanf(f, "%d %d %lg\n", &i, &j, &Aij);
        COO_unit unit = {i - 1, j - 1, Aij};
        matrix.units.push_back(unit);
    }
    for (int l = 0; l < L; l++)
    {
        if (matrix.units[l].row != matrix.units[l].col)
            matrix.units.push_back({matrix.units[l].col, matrix.units[l].row, matrix.units[l].data});
    }
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
         { return (a.row == b.row) ? (a.col < b.col) : (a.row < b.row); });
    fclose(f);
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
void COO_to_CSR1(COO matrix, csr_t &csr)
{
    int row = 0;
    int rowptr = 0;
    int nnz = 0;
    csr.rowptr[row] = rowptr;
    for (int i = 0; i < matrix.units.size(); i++)
    {
        if (matrix.units[i].row == row)
        {
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
            nnz++;
        }
        else
        {
            row++;
            csr.rowptr[row] = rowptr;
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
            nnz++;
        }
    }
    csr.rowptr[M] = nnz;
}
void COO_to_CSC(COO matrix, csc_t& csc)
{
    //sort by column
    sort(matrix.units.begin(), matrix.units.end(), [](COO_unit a, COO_unit b)
         { return (a.col == b.col) ? (a.row < b.row) : (a.col < b.col); });
    int col = 0;
    int colptr = 0;
    int nnz = 0;
    csc.colptr[col] = colptr;
    for (int i = 0; i < matrix.units.size(); i++)
    {
        if (matrix.units[i].col == col)
        {
            csc.rowind[colptr] = matrix.units[i].row;
            csc.data[colptr] = matrix.units[i].data;
            colptr++;
            nnz++;
        }
        else
        {
            col++;
            csc.colptr[col] = colptr;
            csc.rowind[colptr] = matrix.units[i].row;
            csc.data[colptr] = matrix.units[i].data;
            colptr++;
            nnz++;
        }
    }
    csc.colptr[N] = nnz;
}

void COO_to_CSR3(COO matrix, csr_out_t &csr)
{
    int row = 0;
    int rowptr = 0;
    csr.rowptr[row] = rowptr;
    int nnz = 0;
    for (int i = 0; i < matrix.units.size(); i++)
    {
        if (matrix.units[i].row == row)
        {
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
            nnz++;
        }
        else
        {
            row++;
            csr.rowptr[row] = rowptr;
            csr.colind[rowptr] = matrix.units[i].col;
            csr.data[rowptr] = matrix.units[i].data;
            rowptr++;
            nnz++;
        }
    }
    csr.rowptr[M] = nnz;
}

//compare if two csr_out_t are equal
bool compare_csr_out_t(csr_out_t &z_csr, csr_out_t &z_csr2)
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
    cout << "rowptr is equal: " << equal << endl;
    for (int i = 0; i < z_csr.rowptr[M]; i++)
    {
        if (z_csr.colind[i] != z_csr2.colind[i])
        {
            equal = false;
            break;
        }
    } 
    cout << "colind is equal: " << equal << endl;
    for (int i = 0; i < z_csr.rowptr[M]; i++)
    {
        //check if they are equal to two decimal places
        if ((z_csr.data[i] - z_csr2.data[i]) > (data_t)0.5 || (z_csr.data[i] - z_csr2.data[i]) < (data_t)-0.5)
        {
            cout << "z_csr.data["<< i <<"] = "<< z_csr.data[i] << endl;
            cout << "z_csr2.data[" << i << "] = " << z_csr2.data[i] << endl;
            cout << "z_csr.data[" << i << "] - z_csr2.data[i] = " << z_csr.data[i] - z_csr2.data[i] << endl;
            equal = false;
            break;
        }
    }
    cout << "data is equal: " << equal << endl;
    return equal;
}

void synth_test(){
    COO coo_A = assemble_simetric_COO_matrix("/home/leoh/spgemm-format-exploration/test_matrices/A.mtx");
    COO coo_B = assemble_simetric_COO_matrix("/home/leoh/spgemm-format-exploration/test_matrices/B.mtx");
    COO coo_C = assemble_COO_matrix("/home/leoh/spgemm-format-exploration/test_matrices/C.mtx");

    cout << "COO A" << endl;
    //print_COO(coo_A, M, P);
    cout << "-------------------" << endl;
    cout << "COO B" << endl;
    //print_COO(coo_B , P, N);
    cout << "-------------------" << endl;
    cout << "COO C" << endl;
    //print_COO(coo_C , M, N);
    cout << "-------------------" << endl;

    //convert coo to csc
    csc_t csc_A;
    int A_colptr_arr[P + 1]; int A_rowind[P * N]; data_t A_data[P * N];
    csc_A.colptr = A_colptr_arr; csc_A.rowind = A_rowind; csc_A.data = A_data;

    COO_to_CSC(coo_A, csc_A);

    // convert COO to CSR
    csr_t csr_B;
    int B_rowptr_arr[P + 1]; int B_colind[P * N]; data_t B_data[P * N];
    csr_B.rowptr = B_rowptr_arr; csr_B.colind = B_colind; csr_B.data = B_data;
    
    COO_to_CSR1(coo_B, csr_B);

    //convert coo to csr_out_t
    csr_out_t csr_out_C;
    int C_rowptr_arr[M + 1]; int C_colind[M * N]; data_t C_data[M * N];
    csr_out_C.rowptr = C_rowptr_arr; csr_out_C.colind = C_colind; csr_out_C.data = C_data;

    COO_to_CSR3(coo_C, csr_out_C);

    csr_out_t csr_out_C2;
    static int C_rowptr_arr2[M + 1]; static int C_colind2[M * N]; static data_t C_data2[M * N];
    csr_out_C2.rowptr = C_rowptr_arr2; csr_out_C2.colind = C_colind2; csr_out_C2.data = C_data2;

    // Test outer_product
    outer_product(A_colptr_arr, A_rowind, A_data, B_rowptr_arr, B_colind, B_data, C_rowptr_arr2, C_colind2, C_data2);

    //compare csr_out_t
    cout << "csr_out_C" << endl;
    //print_csr_out_t(csr_out_C);
    cout << "-------------------" << endl;
    cout << "csr_out_C2" << endl;
    //print_csr_out_t(csr_out_C2);
    cout << "-------------------" << endl;
    cout << "csr_out_C == csr_out_C2: " << compare_csr_out_t(csr_out_C, csr_out_C2) << endl;
    cout << "-------------------" << endl;

}

int main() {
    basic_test();
    //synth_test();
    return 0;
}
