// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrow_product.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRow_product_CfgInitialize(XRow_product *InstancePtr, XRow_product_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRow_product_Set_x_rowptr(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_ROWPTR_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_ROWPTR_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_x_rowptr(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_ROWPTR_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_ROWPTR_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_x_colind(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_COLIND_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_COLIND_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_x_colind(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_COLIND_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_COLIND_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_x_data(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_DATA_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_x_data(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_DATA_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_X_DATA_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_y_rowptr(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_ROWPTR_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_ROWPTR_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_y_rowptr(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_ROWPTR_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_ROWPTR_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_y_colind(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_COLIND_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_COLIND_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_y_colind(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_COLIND_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_COLIND_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_y_data(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_DATA_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_y_data(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_DATA_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Y_DATA_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_z_rowptr(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_ROWPTR_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_ROWPTR_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_z_rowptr(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_ROWPTR_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_ROWPTR_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_z_colind(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_COLIND_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_COLIND_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_z_colind(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_COLIND_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_COLIND_DATA + 4) << 32;
    return Data;
}

void XRow_product_Set_z_data(XRow_product *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_DATA_DATA, (u32)(Data));
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XRow_product_Get_z_data(XRow_product *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_DATA_DATA);
    Data += (u64)XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_Z_DATA_DATA + 4) << 32;
    return Data;
}

