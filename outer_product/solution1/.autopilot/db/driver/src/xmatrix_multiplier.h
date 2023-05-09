// ==============================================================
// File generated on Sun May 07 01:20:28 IST 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATRIX_MULTIPLIER_H
#define XMATRIX_MULTIPLIER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatrix_multiplier_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XMatrix_multiplier_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XMatrix_multiplier;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatrix_multiplier_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatrix_multiplier_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatrix_multiplier_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatrix_multiplier_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMatrix_multiplier_Initialize(XMatrix_multiplier *InstancePtr, u16 DeviceId);
XMatrix_multiplier_Config* XMatrix_multiplier_LookupConfig(u16 DeviceId);
int XMatrix_multiplier_CfgInitialize(XMatrix_multiplier *InstancePtr, XMatrix_multiplier_Config *ConfigPtr);
#else
int XMatrix_multiplier_Initialize(XMatrix_multiplier *InstancePtr, const char* InstanceName);
int XMatrix_multiplier_Release(XMatrix_multiplier *InstancePtr);
#endif

void XMatrix_multiplier_Start(XMatrix_multiplier *InstancePtr);
u32 XMatrix_multiplier_IsDone(XMatrix_multiplier *InstancePtr);
u32 XMatrix_multiplier_IsIdle(XMatrix_multiplier *InstancePtr);
u32 XMatrix_multiplier_IsReady(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_EnableAutoRestart(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_DisableAutoRestart(XMatrix_multiplier *InstancePtr);

void XMatrix_multiplier_Set_matrix1(XMatrix_multiplier *InstancePtr, u32 Data);
u32 XMatrix_multiplier_Get_matrix1(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_Set_matrix2(XMatrix_multiplier *InstancePtr, u32 Data);
u32 XMatrix_multiplier_Get_matrix2(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_Set_output_matrix(XMatrix_multiplier *InstancePtr, u32 Data);
u32 XMatrix_multiplier_Get_output_matrix(XMatrix_multiplier *InstancePtr);

void XMatrix_multiplier_InterruptGlobalEnable(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_InterruptGlobalDisable(XMatrix_multiplier *InstancePtr);
void XMatrix_multiplier_InterruptEnable(XMatrix_multiplier *InstancePtr, u32 Mask);
void XMatrix_multiplier_InterruptDisable(XMatrix_multiplier *InstancePtr, u32 Mask);
void XMatrix_multiplier_InterruptClear(XMatrix_multiplier *InstancePtr, u32 Mask);
u32 XMatrix_multiplier_InterruptGetEnabled(XMatrix_multiplier *InstancePtr);
u32 XMatrix_multiplier_InterruptGetStatus(XMatrix_multiplier *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
