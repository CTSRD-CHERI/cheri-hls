// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_top_CfgInitialize(XHls_top *InstancePtr, XHls_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_top_Start(XHls_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_top_IsDone(XHls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_top_IsIdle(XHls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_top_IsReady(XHls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_top_EnableAutoRestart(XHls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHls_top_DisableAutoRestart(XHls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XHls_top_Set_sets(XHls_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_SETS_DATA, Data);
}

u32 XHls_top_Get_sets(XHls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_SETS_DATA);
    return Data;
}

void XHls_top_Set_xweights1(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS1_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS1_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xweights1(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS1_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS1_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xweights2(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS2_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS2_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xweights2(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS2_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS2_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xweights3(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS3_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS3_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xweights3(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS3_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XWEIGHTS3_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xbiases1(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES1_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES1_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xbiases1(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES1_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES1_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xbiases2(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES2_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES2_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xbiases2(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES2_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES2_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xbiases3(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES3_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES3_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xbiases3(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES3_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XBIASES3_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xtraining_data(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_DATA_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xtraining_data(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_DATA_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_DATA_DATA + 4) << 32;
    return Data;
}

void XHls_top_Set_xtraining_targets(XHls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_TARGETS_DATA, (u32)(Data));
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_TARGETS_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_xtraining_targets(XHls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_TARGETS_DATA);
    Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_XTRAINING_TARGETS_DATA + 4) << 32;
    return Data;
}

void XHls_top_InterruptGlobalEnable(XHls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_GIE, 1);
}

void XHls_top_InterruptGlobalDisable(XHls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_GIE, 0);
}

void XHls_top_InterruptEnable(XHls_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER);
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XHls_top_InterruptDisable(XHls_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER);
    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XHls_top_InterruptClear(XHls_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XHls_top_InterruptGetEnabled(XHls_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER);
}

u32 XHls_top_InterruptGetStatus(XHls_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_top_ReadReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_ISR);
}

