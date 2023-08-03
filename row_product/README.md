# Row Product

The following sparse matrix multiplier, multiplies an input matrix of size MxP in the format of CSR with another input matrix of size PxN in the format of CSR. The output is a matrix of size MxN in the format of CSR.

## File structure

```
.
├── hls.app
├── README.md
├── row_product_test (solution)
└── src
    ├── row_product.cpp
    ├── row_product.hpp
    └── row_product_tb.cpp
```

- `extract_row`: Extracts a row from a CSR matrix and stores it in a vector.
- `extract_element`: Extracts an element from a CSR matrix.
- `row_scalar_mult`: Multiplies a row with a scalar.
- `row_add`: Adds two rows.
- `append_row`: Appends a row to a CSR matrix.
- `row_product`: Performs row product of two matrices in CSR forma
