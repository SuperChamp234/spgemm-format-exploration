// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of x_rowptr
//        bit 31~0 - x_rowptr[31:0] (Read/Write)
// 0x14 : Data signal of x_rowptr
//        bit 31~0 - x_rowptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of x_colind
//        bit 31~0 - x_colind[31:0] (Read/Write)
// 0x20 : Data signal of x_colind
//        bit 31~0 - x_colind[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of x_data
//        bit 31~0 - x_data[31:0] (Read/Write)
// 0x2c : Data signal of x_data
//        bit 31~0 - x_data[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of y_rowptr
//        bit 31~0 - y_rowptr[31:0] (Read/Write)
// 0x38 : Data signal of y_rowptr
//        bit 31~0 - y_rowptr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of y_colind
//        bit 31~0 - y_colind[31:0] (Read/Write)
// 0x44 : Data signal of y_colind
//        bit 31~0 - y_colind[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of y_data
//        bit 31~0 - y_data[31:0] (Read/Write)
// 0x50 : Data signal of y_data
//        bit 31~0 - y_data[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of z_rowptr
//        bit 31~0 - z_rowptr[31:0] (Read/Write)
// 0x5c : Data signal of z_rowptr
//        bit 31~0 - z_rowptr[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of z_colind
//        bit 31~0 - z_colind[31:0] (Read/Write)
// 0x68 : Data signal of z_colind
//        bit 31~0 - z_colind[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of z_data
//        bit 31~0 - z_data[31:0] (Read/Write)
// 0x74 : Data signal of z_data
//        bit 31~0 - z_data[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XROW_PRODUCT_CONTROL_ADDR_X_ROWPTR_DATA 0x10
#define XROW_PRODUCT_CONTROL_BITS_X_ROWPTR_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_X_COLIND_DATA 0x1c
#define XROW_PRODUCT_CONTROL_BITS_X_COLIND_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_X_DATA_DATA   0x28
#define XROW_PRODUCT_CONTROL_BITS_X_DATA_DATA   64
#define XROW_PRODUCT_CONTROL_ADDR_Y_ROWPTR_DATA 0x34
#define XROW_PRODUCT_CONTROL_BITS_Y_ROWPTR_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_Y_COLIND_DATA 0x40
#define XROW_PRODUCT_CONTROL_BITS_Y_COLIND_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_Y_DATA_DATA   0x4c
#define XROW_PRODUCT_CONTROL_BITS_Y_DATA_DATA   64
#define XROW_PRODUCT_CONTROL_ADDR_Z_ROWPTR_DATA 0x58
#define XROW_PRODUCT_CONTROL_BITS_Z_ROWPTR_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_Z_COLIND_DATA 0x64
#define XROW_PRODUCT_CONTROL_BITS_Z_COLIND_DATA 64
#define XROW_PRODUCT_CONTROL_ADDR_Z_DATA_DATA   0x70
#define XROW_PRODUCT_CONTROL_BITS_Z_DATA_DATA   64

