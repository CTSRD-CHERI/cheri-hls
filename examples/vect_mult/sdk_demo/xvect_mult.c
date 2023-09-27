// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//
// ==============================================================
/***************************** Include Files *********************************/
#include "xvect_mult.h"

/************************** Function Implementation *************************/
void XVect_mult_Start(XVect_mult *InstancePtr) {
  u32 Data;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_AP_CTRL) &
         0x80;
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVect_mult_IsDone(XVect_mult *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_AP_CTRL);
  return (Data >> 1) & 0x1;
}

u32 XVect_mult_IsIdle(XVect_mult *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_AP_CTRL);
  return (Data >> 2) & 0x1;
}

u32 XVect_mult_IsReady(XVect_mult *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_AP_CTRL);
  // check ap_start to see if the pcore is ready for next input
  return !(Data & 0x1);
}

void XVect_mult_EnableAutoRestart(XVect_mult *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XVect_mult_DisableAutoRestart(XVect_mult *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_AP_CTRL, 0);
}

void XVect_mult_Set_size(XVect_mult *InstancePtr, u32 Data) {
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XVect_mult_Get_size(XVect_mult *InstancePtr) {
  u32 Data;

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_SIZE_DATA);
  return Data;
}

void XVect_mult_Set_a(XVect_mult *InstancePtr, u64 Data) {
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA, (u32)(Data));
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XVect_mult_Get_a(XVect_mult *InstancePtr) {
  u64 Data;

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_A_DATA);
  Data += (u64)XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_A_DATA + 4)
          << 32;
  return Data;
}

void XVect_mult_Set_b(XVect_mult *InstancePtr, u64 Data) {
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA, (u32)(Data));
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XVect_mult_Get_b(XVect_mult *InstancePtr) {
  u64 Data;
  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_B_DATA);
  Data += (u64)XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_B_DATA + 4)
          << 32;
  return Data;
}

void XVect_mult_Set_c(XVect_mult *InstancePtr, u64 Data) {
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA, (u32)(Data));
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XVect_mult_Get_c(XVect_mult *InstancePtr) {
  u64 Data;

  Data = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_C_DATA);
  Data += (u64)XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_C_DATA + 4)
          << 32;
  return Data;
}

void XVect_mult_InterruptGlobalEnable(XVect_mult *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_GIE, 1);
}

void XVect_mult_InterruptGlobalDisable(XVect_mult *InstancePtr) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_GIE, 0);
}

void XVect_mult_InterruptEnable(XVect_mult *InstancePtr, u32 Mask) {
  u32 Register;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Register = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                                XVECT_MULT_CONTROL_ADDR_IER);
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_IER, Register | Mask);
}

void XVect_mult_InterruptDisable(XVect_mult *InstancePtr, u32 Mask) {
  u32 Register;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Register = XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                                XVECT_MULT_CONTROL_ADDR_IER);
  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XVect_mult_InterruptClear(XVect_mult *InstancePtr, u32 Mask) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XVect_mult_WriteReg(InstancePtr->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_ISR, Mask);
}

u32 XVect_mult_InterruptGetEnabled(XVect_mult *InstancePtr) {
  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  return XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_IER);
}

u32 XVect_mult_InterruptGetStatus(XVect_mult *InstancePtr) {
  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  return XVect_mult_ReadReg(InstancePtr->Control_BaseAddress,
                            XVECT_MULT_CONTROL_ADDR_ISR);
}
