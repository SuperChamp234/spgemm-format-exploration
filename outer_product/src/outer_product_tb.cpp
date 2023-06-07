#include <iostream>
#include "outer_product.h"

void test_streams(csr_t csr, csc_t csc) {
    stream_t row_stream;
    stream_t col_stream;

    // Print the csc stream
    std::cout << "CSC stream: " << std::endl;
    for (int i = 0; i < P; i++) {
        std::cout << "Column " << i << ": ";
        csc_to_stream(csc, i, col_stream);
        while (!col_stream.empty()) {
            std::cout << col_stream.read() << " ";
        }
        std::cout << std::endl;
    }

    // Print the csr stream
    std::cout << "CSR stream: " << std::endl;
    for (int i = 0; i < P; i++) {
        std::cout << "Row " << i << ": ";
        csr_to_stream(csr, i, row_stream);
        while (!row_stream.empty()) {
            std::cout << row_stream.read() << " ";
        }
        std::cout << std::endl;
    }
}

void final_test_multiplication(csr_t csr, csc_t csc) {
    csr_out_t z_csr = outer_product_opt(csc, csr);
    //print matrix in dense format with 0s
    print_csr_out_t(z_csr);
}

void multiply_outer_test(csc_t csc, csr_t csr, stream_t& col_stream, stream_t& row_stream) {
    for (int i = 0; i < P; i++) {
        std::cout << "Column " << i << ": ";
        csc_to_stream(csc, i, col_stream);
        print_stream(col_stream);
        csr_to_stream(csr, i, row_stream);
        std::cout << "Row " << i << ": ";
        print_stream(row_stream);
        std::cout << "Result: " << std::endl;
        csr_out_t z_csr;
        z_csr = multiply_outer(col_stream, row_stream);
        print_csr_out_t(z_csr);
        std::cout << std::endl;
    }
}

void accumulator_test(csr_out_t mat, csr_out_t mat2){
    csr_out_t mat3;
    mat3 = accumulate(mat, mat2);
    std::cout << "Accumulator: " << std::endl;
    print_csr_out_t(mat3);
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

    //stream_t col_stream;
    //stream_t row_stream;
    //multiply_outer_test(A, B, col_stream, row_stream);

    //accumulator_test(test, test2);

    final_test_multiplication(B, A);

    // csr_t bus_matrix = read_matrix_market_file("/home/zain/Documents/hls/processing_elements/outer_product/src/494_bus.mtx");
    // calculate_sparsity(bus_matrix);

    return 0;
}
