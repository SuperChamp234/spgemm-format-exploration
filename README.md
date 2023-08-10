# Exploration of Sparse Storage formats in SpGEMM

This repository contains the experiments for exploration of the role of Sparse storage formats when performing SpGEMM.

# Requirements

- Vivado HLS 2018.2 or greater

# Structure

```
.
├── basic_multiplication
│   └── src
├── outer_product
│   ├── hls.app
│   ├── README.md
│   ├── solution1
│   └── src
├── README.md
├── row_product
│   ├── hls.app
│   ├── README.md
│   ├── row_product_test
│   └── src
├── test_matrices
│   ├── 494_bus.mtx
│   ├── A.mtx
│   ├── B.mtx
│   ├── C.mtx
│   └── output.mtx
├── utils
│   ├── calculate_sparsity.py
│   ├── converter.cpp
│   ├── converter.out
│   ├── generate_synthetic_mmio.py
│   ├── generate_testing_output.py
│   └── Other_Sparse_Structures.md
├── vitis_hls.log
└── vivado_hls.log
```
The `basic_multiplication` folder contains a demo on how HLS can be used to parallelize the multiplication of two matrices.
The folder `outer_product` contains a sparse matrix multiplier which uses the outer product dataflow for multiplication of two sparse matrices. The folder `row_product` contains a sparse matrix multiplier which uses the row product dataflow for multiplication. 

Refer the README.md in the respective folders for more details.