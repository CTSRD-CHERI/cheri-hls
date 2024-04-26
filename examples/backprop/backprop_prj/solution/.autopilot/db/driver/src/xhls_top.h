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
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhls_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XHls_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XHls_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHls_top_Initialize(XHls_top *InstancePtr, u16 DeviceId);
XHls_top_Config* XHls_top_LookupConfig(u16 DeviceId);
int XHls_top_CfgInitialize(XHls_top *InstancePtr, XHls_top_Config *ConfigPtr);
#else
int XHls_top_Initialize(XHls_top *InstancePtr, const char* InstanceName);
int XHls_top_Release(XHls_top *InstancePtr);
#endif

void XHls_top_Start(XHls_top *InstancePtr);
u32 XHls_top_IsDone(XHls_top *InstancePtr);
u32 XHls_top_IsIdle(XHls_top *InstancePtr);
u32 XHls_top_IsReady(XHls_top *InstancePtr);
void XHls_top_EnableAutoRestart(XHls_top *InstancePtr);
void XHls_top_DisableAutoRestart(XHls_top *InstancePtr);

void XHls_top_Set_sets(XHls_top *InstancePtr, u32 Data);
u32 XHls_top_Get_sets(XHls_top *InstancePtr);
void XHls_top_Set_xweights1(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xweights1(XHls_top *InstancePtr);
void XHls_top_Set_xweights2(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xweights2(XHls_top *InstancePtr);
void XHls_top_Set_xweights3(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xweights3(XHls_top *InstancePtr);
void XHls_top_Set_xbiases1(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xbiases1(XHls_top *InstancePtr);
void XHls_top_Set_xbiases2(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xbiases2(XHls_top *InstancePtr);
void XHls_top_Set_xbiases3(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xbiases3(XHls_top *InstancePtr);
void XHls_top_Set_xtraining_data(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xtraining_data(XHls_top *InstancePtr);
void XHls_top_Set_xtraining_targets(XHls_top *InstancePtr, u64 Data);
u64 XHls_top_Get_xtraining_targets(XHls_top *InstancePtr);

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
