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
// 0x10 : Data signal of starting_node
//        bit 31~0 - starting_node[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of levels
//        bit 31~0 - levels[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of node
//        bit 31~0 - node[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of xnodes_b
//        bit 31~0 - xnodes_b[31:0] (Read/Write)
// 0x2c : Data signal of xnodes_b
//        bit 31~0 - xnodes_b[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of xnodes_e
//        bit 31~0 - xnodes_e[31:0] (Read/Write)
// 0x38 : Data signal of xnodes_e
//        bit 31~0 - xnodes_e[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of xedges
//        bit 31~0 - xedges[31:0] (Read/Write)
// 0x44 : Data signal of xedges
//        bit 31~0 - xedges[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of xlevel
//        bit 31~0 - xlevel[31:0] (Read/Write)
// 0x50 : Data signal of xlevel
//        bit 31~0 - xlevel[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of xlevel_counts
//        bit 31~0 - xlevel_counts[31:0] (Read/Write)
// 0x5c : Data signal of xlevel_counts
//        bit 31~0 - xlevel_counts[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of flag
//        bit 31~0 - flag[31:0] (Read)
// 0x68 : Control signal of flag
//        bit 0  - flag_ap_vld (Read/COR)
//        others - reserved
// 0x74 : Data signal of cap
//        bit 31~0 - cap[31:0] (Read/Write)
// 0x78 : Data signal of cap
//        bit 31~0 - cap[63:32] (Read/Write)
// 0x7c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_TOP_CONTROL_ADDR_AP_CTRL            0x00
#define XHLS_TOP_CONTROL_ADDR_GIE                0x04
#define XHLS_TOP_CONTROL_ADDR_IER                0x08
#define XHLS_TOP_CONTROL_ADDR_ISR                0x0c
#define XHLS_TOP_CONTROL_ADDR_STARTING_NODE_DATA 0x10
#define XHLS_TOP_CONTROL_BITS_STARTING_NODE_DATA 32
#define XHLS_TOP_CONTROL_ADDR_LEVELS_DATA        0x18
#define XHLS_TOP_CONTROL_BITS_LEVELS_DATA        32
#define XHLS_TOP_CONTROL_ADDR_NODE_DATA          0x20
#define XHLS_TOP_CONTROL_BITS_NODE_DATA          32
#define XHLS_TOP_CONTROL_ADDR_XNODES_B_DATA      0x28
#define XHLS_TOP_CONTROL_BITS_XNODES_B_DATA      64
#define XHLS_TOP_CONTROL_ADDR_XNODES_E_DATA      0x34
#define XHLS_TOP_CONTROL_BITS_XNODES_E_DATA      64
#define XHLS_TOP_CONTROL_ADDR_XEDGES_DATA        0x40
#define XHLS_TOP_CONTROL_BITS_XEDGES_DATA        64
#define XHLS_TOP_CONTROL_ADDR_XLEVEL_DATA        0x4c
#define XHLS_TOP_CONTROL_BITS_XLEVEL_DATA        64
#define XHLS_TOP_CONTROL_ADDR_XLEVEL_COUNTS_DATA 0x58
#define XHLS_TOP_CONTROL_BITS_XLEVEL_COUNTS_DATA 64
#define XHLS_TOP_CONTROL_ADDR_FLAG_DATA          0x64
#define XHLS_TOP_CONTROL_BITS_FLAG_DATA          32
#define XHLS_TOP_CONTROL_ADDR_FLAG_CTRL          0x68
#define XHLS_TOP_CONTROL_ADDR_CAP_DATA           0x74
#define XHLS_TOP_CONTROL_BITS_CAP_DATA           64

