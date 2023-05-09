# Basic Multiplication example

## HLS Pragmas used

- `#pragma HLS inline` to generate inline code for a function.
- `#pragma HLS pipeline II=1` is used to pipeline a loop or function, with a specific initiation interval (II) of 1. Each iteration of the loop can start on every clock cycle. 
