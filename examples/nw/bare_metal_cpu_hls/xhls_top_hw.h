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
// 0x18 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x1c : Data signal of a
//        bit 31~0 - a[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x28 : Data signal of b
//        bit 31~0 - b[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x34 : Data signal of c
//        bit 31~0 - c[63:32] (Read/Write)
// 0x38 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on
// Handshake)

#define XHLS_TOP_CONTROL_ADDR_AP_CTRL 0x00
#define XHLS_TOP_CONTROL_ADDR_GIE 0x04
#define XHLS_TOP_CONTROL_ADDR_IER 0x08
#define XHLS_TOP_CONTROL_ADDR_ISR 0x0c
#define XHLS_TOP_CONTROL_ADDR_ALEN_DATA 0x10
#define XHLS_TOP_CONTROL_BITS_ALEN_DATA 32
#define XHLS_TOP_CONTROL_ADDR_BLEN_DATA 0x18
#define XHLS_TOP_CONTROL_BITS_BLEN_DATA 32
#define XHLS_TOP_CONTROL_ADDR_SEQA_DATA 0x20
#define XHLS_TOP_CONTROL_BITS_SEQA_DATA 64
#define XHLS_TOP_CONTROL_ADDR_SEQB_DATA 0x2c
#define XHLS_TOP_CONTROL_BITS_SEQB_DATA 64
#define XHLS_TOP_CONTROL_ADDR_ALIGNEDA_DATA 0x38
#define XHLS_TOP_CONTROL_BITS_ALIGNEDA_DATA 64
#define XHLS_TOP_CONTROL_ADDR_ALIGNEDB_DATA 0x44
#define XHLS_TOP_CONTROL_BITS_ALIGNEDB_DATA 64
#define XHLS_TOP_CONTROL_ADDR_M_DATA 0x50
#define XHLS_TOP_CONTROL_BITS_M_DATA 64
#define XHLS_TOP_CONTROL_ADDR_PTR_DATA 0x5c
#define XHLS_TOP_CONTROL_BITS_PTR_DATA 64
