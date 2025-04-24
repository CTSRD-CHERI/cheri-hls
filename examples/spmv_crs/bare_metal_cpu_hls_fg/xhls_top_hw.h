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
// 0x18 : Data signal of xval
//        bit 31~0 - xval[31:0] (Read/Write)
// 0x1c : Data signal of xval
//        bit 31~0 - xval[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of xcols
//        bit 31~0 - xcols[31:0] (Read/Write)
// 0x28 : Data signal of xcols
//        bit 31~0 - xcols[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of xrowDelimiters
//        bit 31~0 - xrowDelimiters[31:0] (Read/Write)
// 0x34 : Data signal of xrowDelimiters
//        bit 31~0 - xrowDelimiters[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of xvec
//        bit 31~0 - xvec[31:0] (Read/Write)
// 0x40 : Data signal of xvec
//        bit 31~0 - xvec[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of xout
//        bit 31~0 - xout[31:0] (Read/Write)
// 0x4c : Data signal of xout
//        bit 31~0 - xout[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of flag
//        bit 31~0 - flag[31:0] (Read)
// 0x58 : Control signal of flag
//        bit 0  - flag_ap_vld (Read/COR)
//        others - reserved
// 0x64 : Data signal of cap
//        bit 31~0 - cap[31:0] (Read/Write)
// 0x68 : Data signal of cap
//        bit 31~0 - cap[63:32] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_TOP_CONTROL_ADDR_AP_CTRL             0x00
#define XHLS_TOP_CONTROL_ADDR_GIE                 0x04
#define XHLS_TOP_CONTROL_ADDR_IER                 0x08
#define XHLS_TOP_CONTROL_ADDR_ISR                 0x0c
#define XHLS_TOP_CONTROL_ADDR_SIZE_DATA           0x10
#define XHLS_TOP_CONTROL_BITS_SIZE_DATA           32
#define XHLS_TOP_CONTROL_ADDR_XVAL_DATA           0x18
#define XHLS_TOP_CONTROL_BITS_XVAL_DATA           64
#define XHLS_TOP_CONTROL_ADDR_XCOLS_DATA          0x24
#define XHLS_TOP_CONTROL_BITS_XCOLS_DATA          64
#define XHLS_TOP_CONTROL_ADDR_XROWDELIMITERS_DATA 0x30
#define XHLS_TOP_CONTROL_BITS_XROWDELIMITERS_DATA 64
#define XHLS_TOP_CONTROL_ADDR_XVEC_DATA           0x3c
#define XHLS_TOP_CONTROL_BITS_XVEC_DATA           64
#define XHLS_TOP_CONTROL_ADDR_XOUT_DATA           0x48
#define XHLS_TOP_CONTROL_BITS_XOUT_DATA           64
#define XHLS_TOP_CONTROL_ADDR_FLAG_DATA           0x54
#define XHLS_TOP_CONTROL_BITS_FLAG_DATA           32
#define XHLS_TOP_CONTROL_ADDR_FLAG_CTRL           0x58
#define XHLS_TOP_CONTROL_ADDR_CAP_DATA            0x64
#define XHLS_TOP_CONTROL_BITS_CAP_DATA            64

