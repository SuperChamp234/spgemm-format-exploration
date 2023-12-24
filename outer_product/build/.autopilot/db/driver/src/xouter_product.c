// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xouter_product.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XOuter_product_CfgInitialize(XOuter_product *InstancePtr, XOuter_product_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XOuter_product_Start(XOuter_product *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XOuter_product_IsDone(XOuter_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XOuter_product_IsIdle(XOuter_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XOuter_product_IsReady(XOuter_product *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XOuter_product_EnableAutoRestart(XOuter_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XOuter_product_DisableAutoRestart(XOuter_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_AP_CTRL, 0);
}

void XOuter_product_InterruptGlobalEnable(XOuter_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_GIE, 1);
}

void XOuter_product_InterruptGlobalDisable(XOuter_product *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_GIE, 0);
}

void XOuter_product_InterruptEnable(XOuter_product *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_IER);
    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_IER, Register | Mask);
}

void XOuter_product_InterruptDisable(XOuter_product *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_IER);
    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XOuter_product_InterruptClear(XOuter_product *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOuter_product_WriteReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_ISR, Mask);
}

u32 XOuter_product_InterruptGetEnabled(XOuter_product *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_IER);
}

u32 XOuter_product_InterruptGetStatus(XOuter_product *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOuter_product_ReadReg(InstancePtr->Control_BaseAddress, XOUTER_PRODUCT_CONTROL_ADDR_ISR);
}

