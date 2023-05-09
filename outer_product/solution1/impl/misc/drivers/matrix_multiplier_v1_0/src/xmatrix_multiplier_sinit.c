// ==============================================================
// File generated on Sun May 07 01:20:28 IST 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatrix_multiplier.h"

extern XMatrix_multiplier_Config XMatrix_multiplier_ConfigTable[];

XMatrix_multiplier_Config *XMatrix_multiplier_LookupConfig(u16 DeviceId) {
	XMatrix_multiplier_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATRIX_MULTIPLIER_NUM_INSTANCES; Index++) {
		if (XMatrix_multiplier_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatrix_multiplier_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatrix_multiplier_Initialize(XMatrix_multiplier *InstancePtr, u16 DeviceId) {
	XMatrix_multiplier_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatrix_multiplier_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatrix_multiplier_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

