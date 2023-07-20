// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XROW_PRODUCT_H
#define XROW_PRODUCT_H

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
#include "xrow_product_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XRow_product_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XRow_product;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRow_product_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRow_product_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRow_product_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRow_product_ReadReg(BaseAddress, RegOffset) \
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
int XRow_product_Initialize(XRow_product *InstancePtr, u16 DeviceId);
XRow_product_Config* XRow_product_LookupConfig(u16 DeviceId);
int XRow_product_CfgInitialize(XRow_product *InstancePtr, XRow_product_Config *ConfigPtr);
#else
int XRow_product_Initialize(XRow_product *InstancePtr, const char* InstanceName);
int XRow_product_Release(XRow_product *InstancePtr);
#endif

void XRow_product_Start(XRow_product *InstancePtr);
u32 XRow_product_IsDone(XRow_product *InstancePtr);
u32 XRow_product_IsIdle(XRow_product *InstancePtr);
u32 XRow_product_IsReady(XRow_product *InstancePtr);
void XRow_product_EnableAutoRestart(XRow_product *InstancePtr);
void XRow_product_DisableAutoRestart(XRow_product *InstancePtr);

void XRow_product_Set_x_rowptr(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_x_rowptr(XRow_product *InstancePtr);
void XRow_product_Set_x_colind(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_x_colind(XRow_product *InstancePtr);
void XRow_product_Set_x_data(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_x_data(XRow_product *InstancePtr);
void XRow_product_Set_y_rowptr(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_y_rowptr(XRow_product *InstancePtr);
void XRow_product_Set_y_colind(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_y_colind(XRow_product *InstancePtr);
void XRow_product_Set_y_data(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_y_data(XRow_product *InstancePtr);
void XRow_product_Set_z_rowptr(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_z_rowptr(XRow_product *InstancePtr);
void XRow_product_Set_z_colind(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_z_colind(XRow_product *InstancePtr);
void XRow_product_Set_z_data(XRow_product *InstancePtr, u64 Data);
u64 XRow_product_Get_z_data(XRow_product *InstancePtr);

void XRow_product_InterruptGlobalEnable(XRow_product *InstancePtr);
void XRow_product_InterruptGlobalDisable(XRow_product *InstancePtr);
void XRow_product_InterruptEnable(XRow_product *InstancePtr, u32 Mask);
void XRow_product_InterruptDisable(XRow_product *InstancePtr, u32 Mask);
void XRow_product_InterruptClear(XRow_product *InstancePtr, u32 Mask);
u32 XRow_product_InterruptGetEnabled(XRow_product *InstancePtr);
u32 XRow_product_InterruptGetStatus(XRow_product *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
