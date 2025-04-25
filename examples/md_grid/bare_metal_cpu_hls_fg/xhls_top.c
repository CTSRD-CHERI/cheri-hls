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

void XHls_top_Start(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_AP_CTRL) &
         0x80;
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_top_IsDone(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

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
  u32 Data;

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

void XHls_top_Set_size(XHls_top *InstancePtr, u32 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XHls_top_Get_size(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_SIZE_DATA);
  return Data;
}

void XHls_top_Set_xn_points(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_XN_POINTS_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_XN_POINTS_DATA + 4,
                    (u32)(Data >> 32));
}

u64 XHls_top_Get_xn_points(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_XN_POINTS_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_XN_POINTS_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_force_x(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_X_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_X_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_force_x(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_FORCE_X_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_FORCE_X_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_force_y(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_Y_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_force_y(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_FORCE_Y_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_FORCE_Y_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_force_z(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_Z_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_FORCE_Z_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_force_z(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_FORCE_Z_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_FORCE_Z_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_position_x(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_X_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_X_DATA + 4,
                    (u32)(Data >> 32));
}

u64 XHls_top_Get_position_x(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_POSITION_X_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_POSITION_X_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_position_y(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_Y_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_Y_DATA + 4,
                    (u32)(Data >> 32));
}

u64 XHls_top_Get_position_y(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_POSITION_Y_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_POSITION_Y_DATA + 4)
          << 32;
  return Data;
}

void XHls_top_Set_position_z(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_Z_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_POSITION_Z_DATA + 4,
                    (u32)(Data >> 32));
}

u64 XHls_top_Get_position_z(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_POSITION_Z_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_POSITION_Z_DATA + 4)
          << 32;
  return Data;
}

u32 XHls_top_Get_flag(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_FLAG_DATA);
  return Data;
}

u32 XHls_top_Get_flag_vld(XHls_top *InstancePtr) {
  u32 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_FLAG_CTRL);
  return Data & 0x1;
}

void XHls_top_Set_cap(XHls_top *InstancePtr, u64 Data) {
  Xil_AssertVoid(InstancePtr != 0);
  Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_CAP_DATA, (u32)(Data));
  XHls_top_WriteReg(InstancePtr->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_CAP_DATA + 4, (u32)(Data >> 32));
}

u64 XHls_top_Get_cap(XHls_top *InstancePtr) {
  u64 Data;

  Xil_AssertNonvoid(InstancePtr != 0);
  Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

  Data = XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                          XHLS_TOP_CONTROL_ADDR_CAP_DATA);
  Data += (u64)XHls_top_ReadReg(InstancePtr->Control_BaseAddress,
                                XHLS_TOP_CONTROL_ADDR_CAP_DATA + 4)
          << 32;
  return Data;
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
