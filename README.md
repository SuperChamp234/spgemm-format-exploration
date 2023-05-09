# Exploration of Sparse Storage formats in SpGEMM

This repository contains the experiments for exploration of the role of Sparse storage formats when performing SpGEMM.

# Requirements

- Vivado HLS 2018.2 or greater

# Structure

```
.
├── README.md
├── basic_multiplication
│   └── src
├── outer_product
│   ├── solution1
│   ├── src
│   └── vivado_hls.app
└── vivado_hls.log
```
The `basic_multiplication` folder contains a demo on how HLS can be used to parallelize the multiplication of two matrices.
The folder `outer_product` contains a sparse matrix multiplier which uses the outer product dataflow for multiplication of two sparse matrices.

Refer the README.md in the respective folders for more details.