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
#include "xhls_top.h"

extern XHls_top_Config XHls_top_ConfigTable[];

XHls_top_Config *XHls_top_LookupConfig(u16 DeviceId) {
	XHls_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_TOP_NUM_INSTANCES; Index++) {
		if (XHls_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_top_Initialize(XHls_top *InstancePtr, u16 DeviceId) {
	XHls_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

