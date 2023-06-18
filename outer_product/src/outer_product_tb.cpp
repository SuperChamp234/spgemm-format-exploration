#include "outer_product.h"

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

int main() {



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

    return 0;
}
