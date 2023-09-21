// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvect_mult.h"

extern XVect_mult_Config XVect_mult_ConfigTable[];

XVect_mult_Config *XVect_mult_LookupConfig(u16 DeviceId) {
	XVect_mult_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVECT_MULT_NUM_INSTANCES; Index++) {
		if (XVect_mult_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVect_mult_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVect_mult_Initialize(XVect_mult *InstancePtr, u16 DeviceId) {
	XVect_mult_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVect_mult_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVect_mult_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

