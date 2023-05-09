// ==============================================================
// File generated on Sun May 07 01:20:28 IST 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatrix_multiplier.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatrix_multiplier_CfgInitialize(XMatrix_multiplier *InstancePtr, XMatrix_multiplier_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatrix_multiplier_Start(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatrix_multiplier_IsDone(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatrix_multiplier_IsIdle(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatrix_multiplier_IsReady(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatrix_multiplier_EnableAutoRestart(XMatrix_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMatrix_multiplier_DisableAutoRestart(XMatrix_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_AP_CTRL, 0);
}

void XMatrix_multiplier_Set_matrix1(XMatrix_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_MATRIX1_DATA, Data);
}

u32 XMatrix_multiplier_Get_matrix1(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_MATRIX1_DATA);
    return Data;
}

void XMatrix_multiplier_Set_matrix2(XMatrix_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_MATRIX2_DATA, Data);
}

u32 XMatrix_multiplier_Get_matrix2(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_MATRIX2_DATA);
    return Data;
}

void XMatrix_multiplier_Set_output_matrix(XMatrix_multiplier *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_OUTPUT_MATRIX_DATA, Data);
}

u32 XMatrix_multiplier_Get_output_matrix(XMatrix_multiplier *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_OUTPUT_MATRIX_DATA);
    return Data;
}

void XMatrix_multiplier_InterruptGlobalEnable(XMatrix_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_GIE, 1);
}

void XMatrix_multiplier_InterruptGlobalDisable(XMatrix_multiplier *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_GIE, 0);
}

void XMatrix_multiplier_InterruptEnable(XMatrix_multiplier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_IER);
    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_IER, Register | Mask);
}

void XMatrix_multiplier_InterruptDisable(XMatrix_multiplier *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_IER);
    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMatrix_multiplier_InterruptClear(XMatrix_multiplier *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_multiplier_WriteReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_ISR, Mask);
}

u32 XMatrix_multiplier_InterruptGetEnabled(XMatrix_multiplier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_IER);
}

u32 XMatrix_multiplier_InterruptGetStatus(XMatrix_multiplier *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrix_multiplier_ReadReg(InstancePtr->Control_BaseAddress, XMATRIX_MULTIPLIER_CONTROL_ADDR_ISR);
}

