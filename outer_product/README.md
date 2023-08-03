# Outer Product Dataflow

The following sparse matrix multiplier, multiplies an input matrix of size MxP in the format of CSC with another input matrix of size PxN in the format of CSR. The output is a matrix of size MxN in the format of CSR.

## File structure

```
.
├── README.md
├── solution1
├── src
|   ├── outer_product.cpp
│   ├── outer_product.h
│   └── outer_product_tb.cpp
└── vivado_hls.app
```

The `outer_product.h` file contains all of the function prototypes and data structures used in the `outer_product.cpp` file. 
The function `outer_product_opt()` is the top level function which, taking in the input matrices, performs the multiplication and returns the output matrix in the specified format above.