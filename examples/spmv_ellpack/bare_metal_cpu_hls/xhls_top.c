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
void XHls_top_Set_n(XHls_top *InstancePtr, u32 Data) {
  Xil_AssertVoid(InstancePtr != NULL);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_N_DATA, Data);
}

u32 XHls_top_Get_n(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != NULL);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_N_DATA);
  return Data;
}

void XHls_top_Set_l(XHls_top *InstancePtr, u32 Data) {
  Xil_AssertVoid(InstancePtr != NULL);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_L_DATA, Data);
}

u32 XHls_top_Get_l(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != NULL);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_L_DATA);
  return Data;
}

void XHls_top_Start(XHls_top *InstancePtr) {
  u32 Data;

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_AP_CTRL) &
         0x80;
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_top_IsDone(XHls_top *InstancePtr) {
  u32 Data;

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_AP_CTRL);
  return (Data >> 1) & 0x1;
}

u32 XHls_top_IsIdle(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_AP_CTRL);
  return (Data >> 2) & 0x1;
}

u32 XHls_top_IsReady(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_AP_CTRL);
  // check ap_start to see if the pcore is ready for next input
  return !(Data & 0x1);
}

void XHls_top_EnableAutoRestart(XHls_top *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHls_top_DisableAutoRestart(XHls_top *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XHls_top_InterruptGlobalEnable(XHls_top *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_GIE,
                    1);
}

void XHls_top_InterruptGlobalDisable(XHls_top *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_GIE,
                    0);
}

void XHls_top_InterruptEnable(XHls_top *InstancePtr, u32 Mask) {
  u32 Register;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Register = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                              XHLS_TOP_CONTROL_ADDR_IER);
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER,
                    Register | Mask);
}

void XHls_top_InterruptDisable(XHls_top *InstancePtr, u32 Mask) {
  u32 Register;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Register = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                              XHLS_TOP_CONTROL_ADDR_IER);
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_IER,
                    Register & (~Mask));
}

void XHls_top_InterruptClear(XHls_top *InstancePtr, u32 Mask) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_ISR,
                    Mask);
}

u32 XHls_top_InterruptGetEnabled(XHls_top *InstancePtr) {
  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  return XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_IER);
}

u32 XHls_top_InterruptGetStatus(XHls_top *InstancePtr) {
  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  return XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_ISR);
}
