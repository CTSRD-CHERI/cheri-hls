// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//
// ==============================================================
#ifndef XHLS_TOP_H
#define XHLS_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xhls_top_hw.h"
#include <stdint.h>

/**************************** Type Definitions ******************************/
// typedef unsigned char uint8_t;
// typedef unsigned short uint16_t;
// typedef unsigned int uint32_t;
// typedef unsigned long uint64_t;
// typedef unsigned char u8;
// typedef unsigned short u16;
// typedef unsigned int u32;
// typedef unsigned long u64;

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  volatile u32 *Control_BaseAddress;
  u32 IsReady;
} XHls_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
// #define XHls_top_WriteReg(BaseAddress, RegOffset, Data)                      \
//   *(volatile u32 *)((BaseAddress) + (RegOffset >> 4)) = (u32)(Data)
// #define XHls_top_ReadReg(BaseAddress, RegOffset)                             \
//   *(volatile u32 *)((BaseAddress) + (RegOffset >> 4))
#define XHls_top_WriteReg(BaseAddress, RegOffset, Data)                        \
  *(volatile u32 *)((BaseAddress) + (RegOffset >> 2)) = (u32)(Data)
#define XHls_top_ReadReg(BaseAddress, RegOffset)                               \
  *(volatile u32 *)((BaseAddress) + (RegOffset >> 2))

#define Xil_AssertVoid(expr) (expr)
#define Xil_AssertNonvoid(expr) (expr)
// #define Xil_AssertVoid(expr) assert(expr)
// #define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS 0
#define XST_DEVICE_NOT_FOUND 2
#define XST_OPEN_DEVICE_FAILED 3
#define XIL_COMPONENT_IS_READY 1

/************************** Function Prototypes *****************************/
int XHls_top_Initialize(XHls_top *InstancePtr, const char *InstanceName);
int XHls_top_Release(XHls_top *InstancePtr);

void XHls_top_Start(XHls_top *InstancePtr);
u32 XHls_top_IsDone(XHls_top *InstancePtr);
u32 XHls_top_IsIdle(XHls_top *InstancePtr);
u32 XHls_top_IsReady(XHls_top *InstancePtr);
void XHls_top_EnableAutoRestart(XHls_top *InstancePtr);
void XHls_top_DisableAutoRestart(XHls_top *InstancePtr);

void XHls_top_Set_size(XHls_top *InstancePtr, u32 Data);
u32 XHls_top_Get_size(XHls_top *InstancePtr);
void XHls_top_Set_a(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_a(XHls_top *InstancePtr);
void XHls_top_Set_b(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_b(XHls_top *InstancePtr);
void XHls_top_Set_c(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_c(XHls_top *InstancePtr);

void XHls_top_InterruptGlobalEnable(XHls_top *InstancePtr);
void XHls_top_InterruptGlobalDisable(XHls_top *InstancePtr);
void XHls_top_InterruptEnable(XHls_top *InstancePtr, u32 Mask);
void XHls_top_InterruptDisable(XHls_top *InstancePtr, u32 Mask);
void XHls_top_InterruptClear(XHls_top *InstancePtr, u32 Mask);
u32 XHls_top_InterruptGetEnabled(XHls_top *InstancePtr);
u32 XHls_top_InterruptGetStatus(XHls_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
