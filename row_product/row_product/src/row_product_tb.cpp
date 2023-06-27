#include "row_product.hpp"

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

void test_extract_row(csr_t_2 inp_csr)
{
    for (int i = 0; i < N; i++)
    {
        data_t *row = extract_row(inp_csr, i);
        for (int j = 0; j < P; j++)
        {
            if (row[j] != 0)
            {
                std::cout << "row[" << j << "] = " << row[j] << std::endl;
            }
        }
    }
}

void test_append_row()
{
    // init empty csr_out_t
    csr_out_t out_csr;
    out_csr.rowptr[0] = 0;
    // write 1,1,1,1,1 to each row of out_csr using append_row
    data_t row[P];
    for (int j = 0; j < P; j++)
    {
        row[j] = 1;
    }
    for (int i = 0; i < M; i++)
    {
        append_row(&out_csr, row, i);
    }
    // print out_csr
    print_csr_out_t(out_csr);
}

int main()
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

    csr_t_1 A = {
        .rowptr = {0, 2, 4, 7, 9},
        .colind = {0, 1, 1, 2, 0, 2, 3, 3, 4},
        .data = {1, 2, 3, 4, 5, 6, 7, 8, 9}};
    csr_t_2 B = {
        .rowptr = {0, 2, 4, 5, 8, 9},
        .colind = {0, 2, 1, 3, 0, 1, 2, 4, 4},
        .data = {1, 5, 2, 6, 3, 4, 7, 8, 9}};
    csr_out_t test = {
        .rowptr = {0, 4, 7, 11, 14},
        .colind = {0, 1, 2, 3, 0, 1, 3, 0, 1, 2, 4, 1, 2, 4},
        .data = {1, 4, 5, 12, 12, 6, 18, 23, 28, 74, 56, 32, 56, 145}};
    csr_out_t test2 = {
        .rowptr = {0, 2, 4, 5, 8},
        .colind = {0, 2, 1, 3, 0, 1, 2, 4},
        .data = {1, 5, 2, 6, 3, 4, 7, 8}};

    //run test_extract_row
    //test_extract_row(B);
    //run test_append_row
    //test_append_row();
    //run row_product
    csr_out_t z_csr = row_product(A, B);
    //print z_csr
    print_csr_out_t(z_csr);
    return 0;
}