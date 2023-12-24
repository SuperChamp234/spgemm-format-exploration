// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xouter_product.h"

extern XOuter_product_Config XOuter_product_ConfigTable[];

XOuter_product_Config *XOuter_product_LookupConfig(u16 DeviceId) {
	XOuter_product_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XOUTER_PRODUCT_NUM_INSTANCES; Index++) {
		if (XOuter_product_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XOuter_product_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XOuter_product_Initialize(XOuter_product *InstancePtr, u16 DeviceId) {
	XOuter_product_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XOuter_product_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XOuter_product_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

