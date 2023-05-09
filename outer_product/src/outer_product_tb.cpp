#include <iostream>
#include "outer_product.h"

// void test_streams(csr_t csr, csc_t csc){
//     stream_t csr_stream[P];
//     stream_t csc_stream[P];
//     csr_to_stream(csr, csr_stream);
//     csc_to_stream(csc, csc_stream);

//     // Print the csc stream
//     std::cout << "CSC stream: " << std::endl;
//     for (int i = 0; i < P; i++) {
//         std::cout << "Column " << i << ": ";
//         while (!csc_stream[i].empty()) {
//             std::cout << csc_stream[i].read() << " ";
//         }
//         std::cout << std::endl;
//     }

//     // Print the csr stream
//     std::cout << "CSR stream: " << std::endl;
//     for (int i = 0; i < P; i++) {
//         std::cout << "Row " << i << ": ";
//         while (!csr_stream[i].empty()) {
//             std::cout << csr_stream[i].read() << " ";
//         }
//         std::cout << std::endl;
//     }

    
// }

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

void final_test(csr_t csr, csc_t csc) {
    csr_out_t z_csr;
    outer_product_opt(csc, csr, z_csr);
    //print matrix in dense format with 0s
    print_csr_out_t(z_csr);
}

void multiply_outer_test(csc_t csc, csr_t csr, stream_t& col_stream, stream_t& row_stream) {
    csr_out_t z_csr;
    //extract first col from csc using csc_to_stream
    csc_to_stream(csc, 0, col_stream);
    //extract first row from csr using csr_to_stream
    csr_to_stream(csr, 0, row_stream);
    //multiply using outer_product
    z_csr = multiply_outer(col_stream, row_stream);
    //print matrix in dense format with 0s
    // std::cout << "z_csr: " << std::endl;
    // print_csr_out_t(z_csr);
}

int main() {



// csc_t csr: A 4x5

// 1 2 0 0 0
// 0 3 4 0 0
// 5 0 6 7 0
// 0 0 0 8 9

// csr_t csc: B 5x5

// 1  0  5  0  0
// 0  2  0  6  0
// 3  0  0  0  0
// 0  4  7  0  8
// 0  0  0  0  9

    csc_t A = {
        .colptr= {0, 2, 4, 6, 8, 9},
        .rowind= new int[9]{0, 2, 0, 1, 1, 2, 2, 3, 3},
        .data= new data_t[9]{1, 5, 2, 3, 4, 6, 7, 8, 9}
    };
    csr_t B = {
        .rowptr= {0, 2, 4, 5, 8, 9},
        .colind = new int[9]{0, 2, 1, 3, 0, 1, 2, 4, 4},
        .data = new data_t[9]{1, 5, 2, 6, 3, 4, 7, 8, 9}
    };

    // stream_t col_stream;
    // stream_t row_stream;
    // multiply_outer_test(A, B, col_stream, row_stream);

    final_test(B, A);

    return 0;
}
