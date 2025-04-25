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
// 0x10 : Data signal of xa
//        bit 31~0 - xa[31:0] (Read/Write)
// 0x14 : Data signal of xa
//        bit 31~0 - xa[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of xb
//        bit 31~0 - xb[31:0] (Read/Write)
// 0x20 : Data signal of xb
//        bit 31~0 - xb[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of xbucket
//        bit 31~0 - xbucket[31:0] (Read/Write)
// 0x2c : Data signal of xbucket
//        bit 31~0 - xbucket[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of xsum
//        bit 31~0 - xsum[31:0] (Read/Write)
// 0x38 : Data signal of xsum
//        bit 31~0 - xsum[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of flag
//        bit 31~0 - flag[31:0] (Read)
// 0x44 : Control signal of flag
//        bit 0  - flag_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of cap
//        bit 31~0 - cap[31:0] (Read/Write)
// 0x54 : Data signal of cap
//        bit 31~0 - cap[63:32] (Read/Write)
// 0x58 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_TOP_CONTROL_ADDR_AP_CTRL      0x00
#define XHLS_TOP_CONTROL_ADDR_GIE          0x04
#define XHLS_TOP_CONTROL_ADDR_IER          0x08
#define XHLS_TOP_CONTROL_ADDR_ISR          0x0c
#define XHLS_TOP_CONTROL_ADDR_XA_DATA      0x10
#define XHLS_TOP_CONTROL_BITS_XA_DATA      64
#define XHLS_TOP_CONTROL_ADDR_XB_DATA      0x1c
#define XHLS_TOP_CONTROL_BITS_XB_DATA      64
#define XHLS_TOP_CONTROL_ADDR_XBUCKET_DATA 0x28
#define XHLS_TOP_CONTROL_BITS_XBUCKET_DATA 64
#define XHLS_TOP_CONTROL_ADDR_XSUM_DATA    0x34
#define XHLS_TOP_CONTROL_BITS_XSUM_DATA    64
#define XHLS_TOP_CONTROL_ADDR_FLAG_DATA    0x40
#define XHLS_TOP_CONTROL_BITS_FLAG_DATA    32
#define XHLS_TOP_CONTROL_ADDR_FLAG_CTRL    0x44
#define XHLS_TOP_CONTROL_ADDR_CAP_DATA     0x50
#define XHLS_TOP_CONTROL_BITS_CAP_DATA     64

