// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XOUTER_PRODUCT_H
#define XOUTER_PRODUCT_H

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
#include "xouter_product_hw.h"

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
} XOuter_product_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XOuter_product;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XOuter_product_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XOuter_product_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XOuter_product_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XOuter_product_ReadReg(BaseAddress, RegOffset) \
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
int XOuter_product_Initialize(XOuter_product *InstancePtr, u16 DeviceId);
XOuter_product_Config* XOuter_product_LookupConfig(u16 DeviceId);
int XOuter_product_CfgInitialize(XOuter_product *InstancePtr, XOuter_product_Config *ConfigPtr);
#else
int XOuter_product_Initialize(XOuter_product *InstancePtr, const char* InstanceName);
int XOuter_product_Release(XOuter_product *InstancePtr);
#endif

void XOuter_product_Start(XOuter_product *InstancePtr);
u32 XOuter_product_IsDone(XOuter_product *InstancePtr);
u32 XOuter_product_IsIdle(XOuter_product *InstancePtr);
u32 XOuter_product_IsReady(XOuter_product *InstancePtr);
void XOuter_product_EnableAutoRestart(XOuter_product *InstancePtr);
void XOuter_product_DisableAutoRestart(XOuter_product *InstancePtr);


void XOuter_product_InterruptGlobalEnable(XOuter_product *InstancePtr);
void XOuter_product_InterruptGlobalDisable(XOuter_product *InstancePtr);
void XOuter_product_InterruptEnable(XOuter_product *InstancePtr, u32 Mask);
void XOuter_product_InterruptDisable(XOuter_product *InstancePtr, u32 Mask);
void XOuter_product_InterruptClear(XOuter_product *InstancePtr, u32 Mask);
u32 XOuter_product_InterruptGetEnabled(XOuter_product *InstancePtr);
u32 XOuter_product_InterruptGetStatus(XOuter_product *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
