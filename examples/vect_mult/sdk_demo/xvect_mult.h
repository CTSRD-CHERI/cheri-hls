// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//
// ==============================================================
#ifndef XVECT_MULT_H
#define XVECT_MULT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xvect_mult_hw.h"

/**************************** Type Definitions ******************************/
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long uint64_t;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long u64;

typedef struct {
  u64 Control_BaseAddress;
  u32 IsReady;
} XVect_mult;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#define XVect_mult_WriteReg(BaseAddress, RegOffset, Data)                      \
  *(volatile u32 *)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVect_mult_ReadReg(BaseAddress, RegOffset)                             \
  *(volatile u32 *)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr) (expr)
#define Xil_AssertNonvoid(expr) (expr)
// #define Xil_AssertVoid(expr) assert(expr)
// #define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS 0
#define XST_DEVICE_NOT_FOUND 2
#define XST_OPEN_DEVICE_FAILED 3
#define XIL_COMPONENT_IS_READY 1

/************************** Function Prototypes *****************************/
int XVect_mult_Initialize(XVect_mult *InstancePtr, const char *InstanceName);
int XVect_mult_Release(XVect_mult *InstancePtr);

void XVect_mult_Start(XVect_mult *InstancePtr);
u32 XVect_mult_IsDone(XVect_mult *InstancePtr);
u32 XVect_mult_IsIdle(XVect_mult *InstancePtr);
u32 XVect_mult_IsReady(XVect_mult *InstancePtr);
void XVect_mult_EnableAutoRestart(XVect_mult *InstancePtr);
void XVect_mult_DisableAutoRestart(XVect_mult *InstancePtr);

void XVect_mult_Set_size(XVect_mult *InstancePtr, u32 Data);
u32 XVect_mult_Get_size(XVect_mult *InstancePtr);
void XVect_mult_Set_a(XVect_mult *InstancePtr, u64 Data);
u64 XVect_mult_Get_a(XVect_mult *InstancePtr);
void XVect_mult_Set_b(XVect_mult *InstancePtr, u64 Data);
u64 XVect_mult_Get_b(XVect_mult *InstancePtr);
void XVect_mult_Set_c(XVect_mult *InstancePtr, u64 Data);
u64 XVect_mult_Get_c(XVect_mult *InstancePtr);

void XVect_mult_InterruptGlobalEnable(XVect_mult *InstancePtr);
void XVect_mult_InterruptGlobalDisable(XVect_mult *InstancePtr);
void XVect_mult_InterruptEnable(XVect_mult *InstancePtr, u32 Mask);
void XVect_mult_InterruptDisable(XVect_mult *InstancePtr, u32 Mask);
void XVect_mult_InterruptClear(XVect_mult *InstancePtr, u32 Mask);
u32 XVect_mult_InterruptGetEnabled(XVect_mult *InstancePtr);
u32 XVect_mult_InterruptGetStatus(XVect_mult *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
