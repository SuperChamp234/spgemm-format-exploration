// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_outer_product (
volatile void* x_rowptr,
volatile void* x_colind,
volatile void* x_data,
volatile void* y_colptr,
volatile void* y_rowind,
volatile void* y_data,
volatile void* z_rowptr,
volatile void* z_colind,
volatile void* z_data);
