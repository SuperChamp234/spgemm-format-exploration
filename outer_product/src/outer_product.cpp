#include "outer_product.hpp"

//extract row from csr and store it in an array
void extract_row(csr_t inp_csr, data_t* out_row, int row)
{
    int start_idx = inp_csr.rowptr[row];
    int end_idx = inp_csr.rowptr[row+1];
    int j = start_idx;
    for (int i = 0; i < N; i++)
    {
        #ifdef EXTRACT_ROW
            clock_counter++;
        #endif
        int col_idx = inp_csr.colind[j];
        data_t data = inp_csr.data[j];
        out_row[i] = (j < end_idx && col_idx == i) ? data : data_t(0);
        (j < end_idx && col_idx == i) ? j++ : j;
    }
}

//extract column from csc and store it in an array, csc is MxP
void extract_col(csc_t inp_csc, data_t* out_col, int col)
{
    int start_idx = inp_csc.colptr[col];
    int end_idx = inp_csc.colptr[col+1];
    int j = start_idx;
    int compare;
    for (int i = 0; i < M; i++)
    {
        #ifdef EXTRACT_COL
            clock_counter++;
        #endif
        compare = inp_csc.rowind[j];
        out_col[i] = (j < end_idx && compare == i) ? inp_csc.data[j] : data_t(0);
        (j < end_idx && compare == i) ? j++ : j;
    }
}

data_t mult(data_t a, data_t b)
{
    #pragma HLS INLINE off
    data_t c = a * b;
    #pragma HLS RESOURCE variable=c core=FMul_nodsp
    return c;
}

void multiply_row_col(data_t* row, data_t* col, csr_out_t& out)
{
    //write 0 to the first element of rowptr    
    out.rowptr[0] = 0;
    int z_idx = 0;
    
    for(int i = 0; i < M; i++)
    {
        #pragma HLS unroll
        //#pragma HLS unroll factor=0
        for(int j = 0; j < N; j++)
        {
            if (row[j] != 0 && col[i] != 0)
            {
                out.colind[z_idx] = j;
                data_t temp = mult(row[j], col[i]);
                out.data[z_idx] = temp;
                z_idx++;
            }
        }
        out.rowptr[i+1] = z_idx;
    }
    out.rowptr[M] = z_idx;
}

#ifdef DEBUG
void printStream(hls::stream<int>& colind, hls::stream<data_t>& data){
    //duplicate the stream
    hls::stream<int> colind_copy;
    hls::stream<data_t> data_copy;
    while(!colind.empty()){
        colind_copy.write(colind.read());
    }
    while(!data.empty()){
        data_copy.write(data.read());
    }
    //print the stream
    std::cout << "Colind: ";
    while(!colind_copy.empty()){
        int temp = colind_copy.read();
        std::cout << temp << " ";
        colind.write(temp);
    }
    std::cout << std::endl;
    std::cout << "Data: ";
    while(!data_copy.empty()){
        data_t temp = data_copy.read();
        std::cout << temp << " ";
        data.write(temp);
    }
    std::cout << std::endl;
}
#endif

void mergeRows(hls::stream<int>& colind1, hls::stream<int>& colind2, hls::stream<data_t>& data1, hls::stream<data_t>& data2, hls::stream<int>& merged_colind, hls::stream<data_t>& merged_data, int& merge_data_size)
{
    //merge colind1 and colind2 into merged_colind
    //merge data1 and data2 into merged_data
    //peek the first element of colind1 and colind2 using a buffer and compare them
    hls::stream<int> colind1_buff;
    hls::stream<int> colind2_buff;
    int colind1_peek, colind2_peek;
    data_t data1_peek, data2_peek;
    while ((!colind1.empty() || !colind1_buff.empty()) && (!colind2.empty() || !colind2_buff.empty()))
    {
        #ifdef MERGE_ROWS
            clock_counter++;
        #endif
        if (colind1_buff.empty())
        {
            colind1_peek = colind1.read();
        }
        else
        {
            colind1_peek = colind1_buff.read();
        }
        if (colind2_buff.empty())
        {
            colind2_peek = colind2.read();
        }
        else
        {
            colind2_peek = colind2_buff.read();
        }
        //
        if (colind1_peek < colind2_peek)
        {
            merged_colind.write(colind1_peek);
            data1_peek = data1.read();
            merged_data.write(data1_peek);
            merge_data_size++;
            colind2_buff.write(colind2_peek);
        }
        else if (colind1_peek > colind2_peek)
        {
            merged_colind.write(colind2_peek);
            data2_peek = data2.read();
            merged_data.write(data2_peek);
            merge_data_size++;
            colind1_buff.write(colind1_peek);
        }
        else
        {
            merged_colind.write(colind1_peek);
            data1_peek = data1.read();
            data2_peek = data2.read();
            merged_data.write(data1_peek + data2_peek);
            merge_data_size++;
        }
    }
    //write the remaining elements of colind1 and colind2 to merged_colind
    while (!colind1.empty() || !colind1_buff.empty())
    {
        #ifdef MERGE_ROWS
            clock_counter++;
        #endif
        if (colind1_buff.empty())
        {
            colind1_peek = colind1.read();
        }
        else
        {
            colind1_peek = colind1_buff.read();
        }
        merged_colind.write(colind1_peek);
        data1_peek = data1.read();
        merged_data.write(data1_peek);
        merge_data_size++;
    }
    while (!colind2.empty() || !colind2_buff.empty())
    {
        #ifdef MERGE_ROWS
            clock_counter++;
        #endif
        if (colind2_buff.empty())
        {
            colind2_peek = colind2.read();
        }
        else
        {
            colind2_peek = colind2_buff.read();
        }
        merged_colind.write(colind2_peek);
        data2_peek = data2.read();
        merged_data.write(data2_peek);
        merge_data_size++;
    }
}

void extractCSRrows(csr_out_t csr, int row, hls::stream<int>& colind, hls::stream<data_t>& dat){
    int start_idx = csr.rowptr[row];
    int end_idx = csr.rowptr[row+1];
    #ifdef DEBUG
        std::cout << "Start: " << start_idx << " End: " << end_idx << std::endl;
    #endif
    for (int i = start_idx; i < end_idx; i++){
        #ifdef EXTRACT_CSR_ROWS
            clock_counter++;
        #endif
        colind.write(csr.colind[i]);
        dat.write(csr.data[i]);
        #ifdef DEBUG
            std::cout << "{ " << csr.colind[i] << ", " << csr.data[i] << " }";
        #endif
    }
    #ifdef DEBUG
        std::cout << std::endl;
    #endif
    // #ifdef DEBUG
    //     if (row == 2)
    //     {
    //         std::cout << "@@@@@@" << std::endl;
    //         //print full rowptr
    //         std::cout << "Rowptr: ";
    //         for (int i = 0; i < M+1; i++)
    //         {
    //             std::cout << csr.rowptr[i] << " ";
    //         }
    //         std::cout << std::endl;
    //         std::cout << "Row: " << row << " " << std::endl;
    //         printStream(colind, dat);
    //     }
    // #endif
}

#ifdef DEBUG
void print_csr_out_t_t(csr_out_t z_csr)
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

void accumulate(csr_out_t& csr1, csr_out_t& csr2, csr_out_t& out_csr)
{
    int nnz = 0;
    for (int i = 0; i < M; i++)
    {   
        // Step 1: Extract the row from csr1 and csr2
        hls::stream<int> colind1, colind2;
        hls::stream<data_t> data1, data2;
        extractCSRrows(csr1, i, colind1, data1);
        extractCSRrows(csr2, i, colind2, data2);
        #ifdef DEBUG
            std::cout << "+++++++++++++++++++++++++" << std::endl;
            std::cout << i << " Row1: ";
            printStream(colind1, data1);
            std::cout << i << " Row2: ";
            printStream(colind2, data2);
        #endif
        // Step 2: Merge the two rows
        hls::stream<int> merged_colind;
        hls::stream<data_t> merged_data;
        int merge_data_size = 0;
        mergeRows(colind1, colind2, data1, data2, merged_colind, merged_data, merge_data_size);
        #ifdef DEBUG
            std::cout << "Merged: ";
            printStream(merged_colind, merged_data);
        #endif
        // Step 3: Write to the output csr
        out_csr.rowptr[i] = nnz;
        for (int j = 0; j < merge_data_size; j++)
        {
            #ifdef ACCUMULATE
                clock_counter++;
            #endif
            out_csr.colind[nnz] = merged_colind.read();
            out_csr.data[nnz] = merged_data.read();
            nnz++;
        }
        #ifdef DEBUG
            std::cout << "Final Rowptr: ";
            for (int j = 0; j < M+1; j++)
            {
                std::cout << out_csr.rowptr[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Final Colind: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << out_csr.colind[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Final Data: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << out_csr.data[j] << " ";
            }
            std::cout << "data size: " << merge_data_size << std::endl;
            std::cout << std::endl;
            //print_csr_out_t_t(csr1);
            std::cout << "+++++++++++++++++++++++++" << std::endl;
        #endif
    }
    out_csr.rowptr[M] = nnz;
}

void set_zero (csr_out_t out)
{
    for (int i = 0; i < M+1; i++)
    {
        #ifdef SET_ZERO
            clock_counter++;
        #endif
        out.rowptr[i] = 0;
    }
    for (int i = 0; i < M*N; i++)
    {
        #ifdef SET_ZERO
            clock_counter++;
        #endif
        out.colind[i] = 0;
        out.data[i] = 0;
    }
}

void copy_csr(csr_out_t csr1, csr_out_t csr2)
{
    for (int i = 0; i < M+1; i++)
    {
        #ifdef COPY_CSR
            clock_counter++;
        #endif
        csr2.rowptr[i] = csr1.rowptr[i];
    }
    for (int i = 0; i < M*N; i++)
    {
        #ifdef COPY_CSR
            clock_counter++;
        #endif
        csr2.colind[i] = csr1.colind[i];
        csr2.data[i] = csr1.data[i];
    }
}



void outer_product(int* x_rowptr, int* x_colind, data_t* x_data, int* y_colptr, int* y_rowind, data_t* y_data, int* z_rowptr, int* z_colind, data_t* z_data)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi depth=25 port=x_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=x_colind
#pragma HLS INTERFACE m_axi depth=25 port=x_data
#pragma HLS INTERFACE m_axi depth=25 port=y_colptr
#pragma HLS INTERFACE m_axi depth=25 port=y_rowind
#pragma HLS INTERFACE m_axi depth=25 port=y_data
#pragma HLS INTERFACE m_axi depth=25 port=z_rowptr
#pragma HLS INTERFACE m_axi depth=25 port=z_colind
#pragma HLS INTERFACE m_axi depth=25 port=z_data
    csc_t x_csc;
    x_csc.colptr = x_rowptr;
    x_csc.rowind = x_colind;
    x_csc.data = x_data;
    csr_t y_csr;
    y_csr.rowptr = y_colptr;
    y_csr.colind = y_rowind;
    y_csr.data = y_data;

    // Step 1: Initialize the partial matrix of Z
    csr_out_t z_csr;
    z_csr.rowptr = z_rowptr;
    z_csr.colind = z_colind;
    z_csr.data = z_data;

    csr_out_t temp_csr;
    int temp_rowptr[M+1]; int temp_colind[M*N]; data_t temp_data[M*N];
    temp_csr = {temp_rowptr, temp_colind, temp_data};
    set_zero(temp_csr);

    data_t col[M];
    data_t row[N];

    // Step 2: For each column in x_csc and row in y_csr, extract them and compute the outer product
    for (int i = 0; i < P+1; i++)
    {
        // Step 2.1: Extract the column from x_csc and row from y_csr
        extract_col(x_csc, col, i);
        extract_row(y_csr, row, i);
        // Step 2.2: Compute the outer product of the column and row
        int partial_z_rowptr[M+1]; int partial_z_colind[M*N]; data_t partial_z_data[M*N];
        csr_out_t partial_z;
        partial_z.rowptr = partial_z_rowptr;
        partial_z.colind = partial_z_colind;
        partial_z.data = partial_z_data;
        set_zero(partial_z);
        multiply_row_col(row, col, partial_z);
        // Step 2.3: Accumulate the partial matrix of Z
        #ifdef DEBUG
            print_csr_out_t_t(partial_z);
            std::cout << "Rowptr: ";
            for (int j = 0; j < M+1; j++)
            {
                std::cout << partial_z.rowptr[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Colind: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << partial_z.colind[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Data: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << partial_z.data[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "=========================" << std::endl;
        #endif
        if(i == 0)
        {
            copy_csr(partial_z, z_csr);
        }
        else
        {
            //pass the arrays in z_csr to the accumulate function, pass by value
            accumulate(z_csr, partial_z, temp_csr);
            copy_csr(temp_csr, z_csr);
        }
        #ifdef DEBUG
            print_csr_out_t_t(z_csr);
            //print rowptr, colind, data
            std::cout << "Rowptr: ";
            for (int j = 0; j < M+1; j++)
            {
                std::cout << z_csr.rowptr[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Colind: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << z_csr.colind[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "Data: ";
            for (int j = 0; j < M*N; j++)
            {
                std::cout << z_csr.data[j] << " ";
            }
            std::cout << std::endl;
            std::cout << "=========================" << std::endl;
            std::cout << "=========================" << std::endl;
        #endif
    }
}
