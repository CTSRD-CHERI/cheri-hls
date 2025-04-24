// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of size
//        bit 31~0 - size[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of xforce_x
//        bit 31~0 - xforce_x[31:0] (Read/Write)
// 0x1c : Data signal of xforce_x
//        bit 31~0 - xforce_x[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of xforce_y
//        bit 31~0 - xforce_y[31:0] (Read/Write)
// 0x28 : Data signal of xforce_y
//        bit 31~0 - xforce_y[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of xforce_z
//        bit 31~0 - xforce_z[31:0] (Read/Write)
// 0x34 : Data signal of xforce_z
//        bit 31~0 - xforce_z[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of xposition_x
//        bit 31~0 - xposition_x[31:0] (Read/Write)
// 0x40 : Data signal of xposition_x
//        bit 31~0 - xposition_x[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of xposition_y
//        bit 31~0 - xposition_y[31:0] (Read/Write)
// 0x4c : Data signal of xposition_y
//        bit 31~0 - xposition_y[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of xposition_z
//        bit 31~0 - xposition_z[31:0] (Read/Write)
// 0x58 : Data signal of xposition_z
//        bit 31~0 - xposition_z[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of xNL
//        bit 31~0 - xNL[31:0] (Read/Write)
// 0x64 : Data signal of xNL
//        bit 31~0 - xNL[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of flag
//        bit 31~0 - flag[31:0] (Read)
// 0x70 : Control signal of flag
//        bit 0  - flag_ap_vld (Read/COR)
//        others - reserved
// 0x7c : Data signal of cap
//        bit 31~0 - cap[31:0] (Read/Write)
// 0x80 : Data signal of cap
//        bit 31~0 - cap[63:32] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_TOP_CONTROL_ADDR_AP_CTRL          0x00
#define XHLS_TOP_CONTROL_ADDR_GIE              0x04
#define XHLS_TOP_CONTROL_ADDR_IER              0x08
#define XHLS_TOP_CONTROL_ADDR_ISR              0x0c
#define XHLS_TOP_CONTROL_ADDR_SIZE_DATA        0x10
#define XHLS_TOP_CONTROL_BITS_SIZE_DATA        32
#define XHLS_TOP_CONTROL_ADDR_XFORCE_X_DATA    0x18
#define XHLS_TOP_CONTROL_BITS_XFORCE_X_DATA    64
#define XHLS_TOP_CONTROL_ADDR_XFORCE_Y_DATA    0x24
#define XHLS_TOP_CONTROL_BITS_XFORCE_Y_DATA    64
#define XHLS_TOP_CONTROL_ADDR_XFORCE_Z_DATA    0x30
#define XHLS_TOP_CONTROL_BITS_XFORCE_Z_DATA    64
#define XHLS_TOP_CONTROL_ADDR_XPOSITION_X_DATA 0x3c
#define XHLS_TOP_CONTROL_BITS_XPOSITION_X_DATA 64
#define XHLS_TOP_CONTROL_ADDR_XPOSITION_Y_DATA 0x48
#define XHLS_TOP_CONTROL_BITS_XPOSITION_Y_DATA 64
#define XHLS_TOP_CONTROL_ADDR_XPOSITION_Z_DATA 0x54
#define XHLS_TOP_CONTROL_BITS_XPOSITION_Z_DATA 64
#define XHLS_TOP_CONTROL_ADDR_XNL_DATA         0x60
#define XHLS_TOP_CONTROL_BITS_XNL_DATA         64
#define XHLS_TOP_CONTROL_ADDR_FLAG_DATA        0x6c
#define XHLS_TOP_CONTROL_BITS_FLAG_DATA        32
#define XHLS_TOP_CONTROL_ADDR_FLAG_CTRL        0x70
#define XHLS_TOP_CONTROL_ADDR_CAP_DATA         0x7c
#define XHLS_TOP_CONTROL_BITS_CAP_DATA         64

