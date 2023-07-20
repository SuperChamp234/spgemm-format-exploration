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

void XRow_product_Start(XRow_product *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRow_product_IsDone(XRow_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRow_product_IsIdle(XRow_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRow_product_IsReady(XRow_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRow_product_EnableAutoRestart(XRow_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRow_product_DisableAutoRestart(XRow_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_AP_CTRL, 0);
}

void XRow_product_InterruptGlobalEnable(XRow_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_GIE, 1);
}

void XRow_product_InterruptGlobalDisable(XRow_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_GIE, 0);
}

void XRow_product_InterruptEnable(XRow_product *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_IER);
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_IER, Register | Mask);
}

void XRow_product_InterruptDisable(XRow_product *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_IER);
    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRow_product_InterruptClear(XRow_product *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRow_product_WriteReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_ISR, Mask);
}

u32 XRow_product_InterruptGetEnabled(XRow_product *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_IER);
}

u32 XRow_product_InterruptGetStatus(XRow_product *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRow_product_ReadReg(InstancePtr->Control_BaseAddress, XROW_PRODUCT_CONTROL_ADDR_ISR);
}

