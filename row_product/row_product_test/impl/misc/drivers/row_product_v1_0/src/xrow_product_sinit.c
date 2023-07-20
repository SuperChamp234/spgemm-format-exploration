// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xrow_product.h"

extern XRow_product_Config XRow_product_ConfigTable[];

XRow_product_Config *XRow_product_LookupConfig(u16 DeviceId) {
	XRow_product_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XROW_PRODUCT_NUM_INSTANCES; Index++) {
		if (XRow_product_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRow_product_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRow_product_Initialize(XRow_product *InstancePtr, u16 DeviceId) {
	XRow_product_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRow_product_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRow_product_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

