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
#include "xvect_mult_hw.h"

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
} XVect_mult_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XVect_mult;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVect_mult_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVect_mult_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVect_mult_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVect_mult_ReadReg(BaseAddress, RegOffset) \
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
int XVect_mult_Initialize(XVect_mult *InstancePtr, u16 DeviceId);
XVect_mult_Config* XVect_mult_LookupConfig(u16 DeviceId);
int XVect_mult_CfgInitialize(XVect_mult *InstancePtr, XVect_mult_Config *ConfigPtr);
#else
int XVect_mult_Initialize(XVect_mult *InstancePtr, const char* InstanceName);
int XVect_mult_Release(XVect_mult *InstancePtr);
#endif

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
