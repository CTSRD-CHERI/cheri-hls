// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//
// ==============================================================

/***************************** Include Files *********************************/
#include "xvect_mult.h"

/***************** Macros (Inline Functions) Definitions *********************/
#define MAX_UIO_PATH_SIZE 256
#define MAX_UIO_NAME_SIZE 64
#define MAX_UIO_MAPS 5
#define UIO_INVALID_ADDR 0

/**************************** Type Definitions ******************************/
typedef struct {
  u64 addr;
  u32 size;
} XVect_mult_uio_map;

typedef struct {
  int uio_fd;
  int uio_num;
  char name[MAX_UIO_NAME_SIZE];
  char version[MAX_UIO_NAME_SIZE];
  XVect_mult_uio_map maps[MAX_UIO_MAPS];
} XVect_mult_uio_info;

/***************** Variable Definitions **************************************/
static XVect_mult_uio_info uio_info;

/************************** Function Implementation *************************/
static int uio_info_read_name(XVect_mult_uio_info *info) { return 0; }

static int uio_info_read_version(XVect_mult_uio_info *info) { return 0; }

static int uio_info_read_map_addr(XVect_mult_uio_info *info, int n) {
  return 0;
}

static int uio_info_read_map_size(XVect_mult_uio_info *info, int n) {
  return 0;
}

int XVect_mult_Initialize(XVect_mult *InstancePtr, const char *InstanceName) {
  InstancePtr->Control_BaseAddress = 0xC0002000;

  return XST_SUCCESS;
}

int XVect_mult_Release(XVect_mult *InstancePtr) { return XST_SUCCESS; }
