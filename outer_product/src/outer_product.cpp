#include "outer_product.h"

//read matrix market file from path and store as csr
// csr_t read_matrix_market_file(const char *path)
// {
//     std::ifstream fin(path);
//     while (fin.peek() == '%') {
//         fin.ignore(2048, '\n');
//     }
//     int Rows, Cols, Entries;
//     fin >> Rows >> Cols >> Entries;
//     std::cout << "Rows: " << Rows << " Cols: " << Cols << " Entries: " << Entries << std::endl;

//     csr_t csr;
//     csr.colind = new int[Entries];
//     csr.data = new data_t[Entries];

//     int prev_row = 1;
//     csr.rowptr[0] = 0;
//     for (int i = 0; i < Entries; i++)
//     {
//         int row, col;
//         data_t val;
//         fin >> row >> col >> val;
//         //std:: cout << row << " " << col << " " << val << std::endl;
//         csr.colind[i] = col - 1;
//         csr.data[i] = val;
//         if (row != prev_row)
//         {
//             //push back i to rowptr
//             csr.rowptr[prev_row] = i;
//             prev_row = row;
//         }
//     }
//     csr.rowptr[Rows] = Entries;
//     fin.close();

//     return csr;
// }

// void calculate_sparsity(csr_t csr){
//     int nnz = 0;
//     for (int i = 0; i < M; i++){
//         nnz += csr.rowptr[i+1] - csr.rowptr[i];
//     }
//     std::cout << "NNZ: " << nnz << std::endl;
//     float sparsity = 1 - (float)nnz / (M * N);
//     std::cout << "Sparsity: " << sparsity << std::endl;
// }

    

void csr_to_stream(csr_t csr, int row_idx, stream_t &row_stream)
{
    int start_idx = csr.rowptr[row_idx];
    int end_idx = csr.rowptr[row_idx + 1];

    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        if (j < end_idx && csr.colind[j] == i)
        {
            row_stream.write(csr.data[j]);
            j++;
        }
        else
        {
            row_stream.write(0);
        }
    }
}

void csc_to_stream(csc_t csc, int col_idx, stream_t &col_stream)
{
    int start_idx = csc.colptr[col_idx];
    int end_idx = csc.colptr[col_idx + 1];

    int j = start_idx;
    for (int i = 0; i < M; i++)
    {
        if (j < end_idx && csc.rowind[j] == i)
        {
            col_stream.write(csc.data[j]);
            j++;
        }
        else
        {
            col_stream.write(0);
        }
    }
}
#ifdef NO_SYNTH

// print a stream without consuming it, used for debugging
void print_stream(stream_t &s)
{
    stream_t temp_stream;
    while (!s.empty())
    {
        auto val = s.read();
        temp_stream.write(val);
        std::cout << val << " ";
    }
    while (!temp_stream.empty())
    {
        s.write(temp_stream.read());
    }
    std::cout << std::endl;
}

// print csr_out_t, debugging purposes
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
#endif

csr_out_t multiply_outer(stream_t &col_stream, stream_t &row_stream)
{
    //std::cout << "Multiplying outer" << std::endl;
    csr_out_t z_csr;
    data_t row[N];
    int k = 0;
    while(!row_stream.empty()){
        row[k] = row_stream.read();
        k++;
    }
    int z_idx = 0;
    z_csr.rowptr[0] = 0;
    for (int i = 0; i < M; i++)
    {
        data_t col_val = col_stream.read();
        for(int j = 0; j < N; j++){
            data_t row_val = row[j];
            data_t prod = col_val * row_val;
            //std::cout << col_val << " * " << row_val << " = " << prod << std::endl;
            if(prod != 0){
                z_csr.colind[z_idx] = j;
                z_csr.data[z_idx] = prod;
                z_idx++;
            }
            z_csr.rowptr[i+1] = z_idx;
        }
    }
    //empty the streams
    while(!col_stream.empty()){
        col_stream.read();
    }
    return z_csr;
}

csr_out_t accumulate(csr_out_t csr1, csr_out_t csr2){
    #pragma HLS dataflow
    hls::stream<int> out_csr_rowptr;
    hls::stream<int> out_csr_colind;
    stream_t out_csr_data;
    int data_stream_size = 0;
    
    for(int i = 0; i < M; i++){
        int start_idx_1 = csr1.rowptr[i];
        int end_idx_1 = csr1.rowptr[i+1];
        int start_idx_2 = csr2.rowptr[i];
        int end_idx_2 = csr2.rowptr[i+1];
        int j = start_idx_1;
        int k = start_idx_2;
        while(j < end_idx_1 && k < end_idx_2){
            if(csr1.colind[j] == csr2.colind[k]){
                out_csr_data.write(csr1.data[j] + csr2.data[k]);
                out_csr_colind.write(csr1.colind[j]);
                j++;
                k++;
                data_stream_size++;
            }
            else if(csr1.colind[j] < csr2.colind[k]){
                out_csr_data.write(csr1.data[j]);
                out_csr_colind.write(csr1.colind[j]);
                j++;
                data_stream_size++;
            }
            else{
                out_csr_data.write(csr2.data[k]);
                out_csr_colind.write(csr2.colind[k]);
                k++;
                data_stream_size++;
            }
        }
        while(j < end_idx_1){
            out_csr_data.write(csr1.data[j]);
            out_csr_colind.write(csr1.colind[j]);
            j++;
            data_stream_size++;
        }
        while(k < end_idx_2){
            out_csr_data.write(csr2.data[k]);
            out_csr_colind.write(csr2.colind[k]);
            k++;
            data_stream_size++;
        }
        out_csr_rowptr.write(data_stream_size);
    }
    csr_out_t out_csr;
    out_csr.rowptr[0] = 0;
    int i = 0;
    while(!out_csr_rowptr.empty()){
        out_csr.rowptr[i+1] = out_csr_rowptr.read();
        i++;
    }
    i = 0;
    while(!out_csr_colind.empty()){
        out_csr.colind[i] = out_csr_colind.read();
        i++;
    }
    i = 0;
    while(!out_csr_data.empty()){
        out_csr.data[i] = out_csr_data.read();
        i++;
    }
    return out_csr;
}

csr_out_t outer_product_opt(csc_t x_csc, csr_t y_csr)
{
    csr_out_t z_csr;
    z_csr.rowptr[0] = 0;
    for (int i = 0; i < M; i++) {
        z_csr.rowptr[i + 1] = 0;
    }
    // Step 1: Initialize the partial matrix of Z
    int z_idx = 0;

    // Step 2: For each column in X and row in Y, extract the corresponding streams
    for (int i = 0; i < P; i++)
    {
        stream_t col_stream;
        stream_t row_stream;
        #pragma HLS dataflow
        csc_to_stream(x_csc, i, col_stream);
        csr_to_stream(y_csr, i, row_stream);
        #ifdef NO_SYNTH
        std::cout << "Column " << i << std::endl;
        print_stream(col_stream);
        std::cout << std::endl;
        std::cout << "Row " << i << std::endl;
        print_stream(row_stream);
        std::cout << std::endl;
        #endif
        // Step 3: Multiply the streams and accumulate the result in the partial matrix of Z
        csr_out_t z_partial = multiply_outer(col_stream, row_stream);
        #ifdef NO_SYNTH
        print_csr_out_t(z_partial);
        std::cout << std::endl;
        print_csr_out_t(z_csr);
        #endif
        z_csr = accumulate(z_csr, z_partial);
        std::cout << "Partial result for column " << i << std::endl;
        #ifdef NO_SYNTH
        print_csr_out_t(z_csr);
        #endif
        std::cout << "=============================" << std::endl;
    }
    return z_csr;
}
