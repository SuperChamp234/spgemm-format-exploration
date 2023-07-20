#include "row_product.hpp"
#include <vector>
#include <fstream>
#include <algorithm>

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
    while (fin.peek() == '%')
        fin.ignore(2048, '\n');
    fin >> M >> N >> L;

    for (int l = 0; l < L; l++)
    {
        int row, col;
        double data;
        fin >> row >> col >> data;
        matrix.units.push_back({row - 1, col - 1, data});
    }
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
    while (fin.peek() == '%')
        fin.ignore(2048, '\n');
    fin >> M >> N >> L;
    for (int l = 0; l < L; l++)
    {
        // Read (i,j,A[i,j]) triplets:
        int i, j;
        double Aij;
        fin >> i >> j >> Aij;
        matrix.units.push_back({i-1, j-1, Aij});
    }
    for (int l = 0; l < L; l++)
    {
        if (matrix.units[l].row != matrix.units[l].col)
            matrix.units.push_back({matrix.units[l].col, matrix.units[l].row, matrix.units[l].data});
    }
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
csr_t_1 COO_to_CSR1(COO matrix)
{
    csr_t_1 csr;
    csr.rowptr = new int[M + 1];
    csr.colind = new int[M * P];
    csr.data = new data_t[M * P];
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
csr_t_2 COO_to_CSR2(COO matrix)
{
    csr_t_2 csr;    
    csr.rowptr = new int[P + 1];
    csr.colind = new int[P * N];
    csr.data = new data_t[P * N];

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
csr_out_t COO_to_CSR3(COO matrix)
{
    csr_out_t csr;
    csr.rowptr = new int[M + 1];
    csr.colind = new int[M * N];
    csr.data = new data_t[M * N];
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

csr_out_t new_csr_out_t()
{
    csr_out_t csr;
    csr.rowptr = new int[M + 1];
    csr.colind = new int[M * N];
    csr.data = new data_t[M * N];
    //check if allocation was successful
    if (!csr.rowptr || !csr.colind || !csr.data)
    {
        cout << "Memory allocation failed" << endl;
        exit(1);
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
        //check data till 2 fixed point precision
        if (abs(z_csr.data[i] - z_csr2.data[i]) > 0.01)
        {
            equal = false;
            break;
        }
    }
    cout << "data is equal: " << equal << endl;
    return equal;
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
void test_row_scalar_mult()
{
    // init row
    hls::vector<data_t, N> row = (data_t)1;
    // multiply row by 2
    hls::vector<data_t, N> out_row = row_scalar_mult(row, 2);
    // print out_row
    std::cout << "out_row = ";
    for (int i = 0; i < N; i++)
    {
        std::cout << out_row[i] << " ";
    }
    std::cout << std::endl;
}
void test_row_add()
{
    // init row1
    hls::vector<data_t, N> row1 = (data_t)1;
    // init row2
    hls::vector<data_t, N> row2 = (data_t)2;
    // add row1 and row2
    row_add(row1, row2);
    // print row1
    std::cout << "row1 = ";
    for (int i = 0; i < N; i++)
    {
        std::cout << row1[i] << " ";
    }
    std::cout << std::endl;
}

void test_extract_row(csr_t_2 inp_csr)
{
    for (int i = 0; i < N; i++)
    {
        hls::vector<data_t, N> out_row = extract_row(inp_csr, i);
        std::cout << "out_row[" << i << "] = ";
        for (int j = 0; j < N; j++)
        {
            std::cout << out_row[j] << " ";
        }
        std::cout << std::endl;
    }
}

// test extract_element by extracting 2nd element of 3rd row of csr_t_1
void test_extract_element(csr_t_1 inp_csr)
{
    data_t out_element = extract_element(inp_csr, 2, 3);
    std::cout << "out_element[2][3] = " << out_element << std::endl;
}

void test_append_row()
{
    // init empty csr_out_t
    csr_out_t out_csr;
    out_csr.rowptr[0] = 0;
    hls::vector<data_t, N> row = (data_t)1;
    for (int i = 0; i < M; i++)
    {
        append_row(&out_csr, row, i);
    }
    std::cout << "out_csr = " << std::endl;
    print_csr_out_t(out_csr);
}

void basic_test()
{

    // csr_t_1 csr: A 4x5

    // 1 2 0 0 0
    // 0 3 4 0 0
    // 5 0 6 7 0
    // 0 0 0 8 9

    // csr_t_2 csr: B 5x5

    // 1  0  5  0  0
    // 0  2  0  6  0
    // 3  0  0  0  0
    // 0  4  7  0  8
    // 0  0  0  0  9

    // csr_out_t csr: test 4x5

    // 1   4  5  12   0
    // 12  6  0  18   0
    // 23 28 74	  0  56
    // 0  32 56   0	145

    // csr_t_1 A = {
    //     .rowptr = new int[M + 1],
    //     .colind = new int[M*P],
    //     .data = new data_t[M*P]};
    // csr_t_2 B = {
    //     .rowptr = new int[P + 1],
    //     .colind = new int[P*N],
    //     .data = new data_t[P*N]};

    // A = {
    //     .rowptr =  {0, 2, 4, 7, 9},
    //     .colind = {0, 1, 1, 2, 0, 2, 3, 3, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
    //     .data = {1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};

    // B = {
    //     .rowptr = {0, 2, 4, 5, 8, 9},
    //     .colind = {0, 2, 1, 3, 0, 1, 2, 4, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
    //     .data = {1, 5, 2, 6, 3, 4, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};

    // csr_out_t test = {
    //     .rowptr = {0, 4, 7, 11, 14},
    //     .colind = {0, 1, 2, 3, 0, 1, 3, 0, 1, 2, 4, 1, 2, 4, -1, -1, -1, -1, -1, -1},
    //     .data = {1, 4, 5, 12, 12, 6, 18, 23, 28, 74, 56, 32, 56, 145, -1, -1, -1, -1, -1, -1}};
    // csr_out_t A = {
    //     .rowptr = {0, 2, 4, 7, 9},
    //     .colind = {0, 1, 1, 2, 0, 2, 3, 3, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
    //     .data = {1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};

    // run test_extract_row
    // test_extract_row(B);
    // run test_extract_element
    // test_extract_element(A);
    // run test_append_row
    // test_append_row();
    // test_row_scalar_mult();
    // test_row_add();
    // run row_product
    csr_out_t z_csr;
    z_csr.rowptr[0] = 0;
    //row_product(A.rowptr, A.colind, A.data, B.rowptr, B.colind, B.data, z_csr.rowptr, z_csr.colind, z_csr.data);
    print_csr_out_t(z_csr);
}

void synth_test()
{

    /*
A:
[[0.         0.56115024 0.92400029 0.05400305 0.11787452]
 [0.56115024 0.98022243 0.         0.03803377 0.81608697]
 [0.92400029 0.         1.12113544 0.         0.52212819]
 [0.05400305 0.03803377 0.         0.         0.54444086]
 [0.11787452 0.81608697 0.52212819 0.54444086 1.05173082]]
B:
[[0.         0.47421382 0.62969125 1.40192456 0.24738928]
 [0.47421382 0.         0.67589367 0.60552725 0.85560371]
 [0.62969125 0.67589367 0.         0.03017726 0.07082242]
 [1.40192456 0.60552725 0.03017726 0.         0.84333283]
 [0.24738928 0.85560371 0.07082242 0.84333283 0.        ]]
C:
[[0.9528092  0.75808015 0.38925572 0.46708301 0.59110472]
 [0.72004667 0.98738273 1.07482255 2.06847463 1.00957963]
 [0.8351381  1.64267688 0.61881328 1.76953934 0.30798929]
 [0.15272497 0.49143461 0.09827066 0.55788354 0.04590161]
 [1.73923121 1.63833943 0.71672843 1.5621296  1.22353116]]
    */

    // read COO matrix from file
    csr_out_t csr_out = new_csr_out_t();
    COO coo_A = assemble_simetric_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/A.mtx");
    COO coo_B = assemble_simetric_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/B.mtx");
    COO coo_C = assemble_COO_matrix("/home/leoh/Documents/spgemm-format-exploration/test_matrices/C.mtx");

    cout << "COO A" << endl;
    print_COO(coo_A, M, P);
    cout << "-------------------" << endl;
    cout << "COO B" << endl;
    print_COO(coo_B , P, N);
    cout << "-------------------" << endl;
    //cout << "COO C" << endl;
    //print_COO(coo_C , M, N);
    //cout << "-------------------" << endl;

    // convert COO to CSR
    csr_t_1 csr_A = COO_to_CSR1(coo_A);
    csr_t_2 csr_B = COO_to_CSR2(coo_B);
    csr_out_t csr_C = COO_to_CSR3(coo_C);
    cout << "CSR C" << endl;
    print_csr_out_t(csr_C);
    // cout << "-------------------" << endl;

    //delete COO matrices
    // delete[] coo_A.units.data();
    // delete[] coo_B.units.data();
    // delete[] coo_C.units.data();

    //C = A*B
    //init empty csr_out_t
    //run row_product
    row_product(&csr_A.rowptr[0], &csr_A.colind[0], &csr_A.data[0], &csr_B.rowptr[0], &csr_B.colind[0], &csr_B.data[0], &csr_out.rowptr[0], &csr_out.colind[0], &csr_out.data[0]);
    
    cout << "CSR out" << endl;
    print_csr_out_t(csr_out);
    cout << "-------------------" << endl;

    cout << "CSR out == CSR C ?" << endl;
    if (compare_csr_out_t(csr_out, csr_C))
    {
        cout << "OK" << endl;
    }
    else
    {
        cout << "FAIL" << endl;
    }

}

int main()
{
    // basic_test();
    synth_test();
    return 0;
}
