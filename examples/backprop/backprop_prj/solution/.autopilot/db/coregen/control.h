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
// 0x10 : Data signal of sets
//        bit 31~0 - sets[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of xweights1
//        bit 31~0 - xweights1[31:0] (Read/Write)
// 0x1c : Data signal of xweights1
//        bit 31~0 - xweights1[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of xweights2
//        bit 31~0 - xweights2[31:0] (Read/Write)
// 0x28 : Data signal of xweights2
//        bit 31~0 - xweights2[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of xweights3
//        bit 31~0 - xweights3[31:0] (Read/Write)
// 0x34 : Data signal of xweights3
//        bit 31~0 - xweights3[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of xbiases1
//        bit 31~0 - xbiases1[31:0] (Read/Write)
// 0x40 : Data signal of xbiases1
//        bit 31~0 - xbiases1[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of xbiases2
//        bit 31~0 - xbiases2[31:0] (Read/Write)
// 0x4c : Data signal of xbiases2
//        bit 31~0 - xbiases2[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of xbiases3
//        bit 31~0 - xbiases3[31:0] (Read/Write)
// 0x58 : Data signal of xbiases3
//        bit 31~0 - xbiases3[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of xtraining_data
//        bit 31~0 - xtraining_data[31:0] (Read/Write)
// 0x64 : Data signal of xtraining_data
//        bit 31~0 - xtraining_data[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of xtraining_targets
//        bit 31~0 - xtraining_targets[31:0] (Read/Write)
// 0x70 : Data signal of xtraining_targets
//        bit 31~0 - xtraining_targets[63:32] (Read/Write)
// 0x74 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                0x00
#define CONTROL_ADDR_GIE                    0x04
#define CONTROL_ADDR_IER                    0x08
#define CONTROL_ADDR_ISR                    0x0c
#define CONTROL_ADDR_SETS_DATA              0x10
#define CONTROL_BITS_SETS_DATA              32
#define CONTROL_ADDR_XWEIGHTS1_DATA         0x18
#define CONTROL_BITS_XWEIGHTS1_DATA         64
#define CONTROL_ADDR_XWEIGHTS2_DATA         0x24
#define CONTROL_BITS_XWEIGHTS2_DATA         64
#define CONTROL_ADDR_XWEIGHTS3_DATA         0x30
#define CONTROL_BITS_XWEIGHTS3_DATA         64
#define CONTROL_ADDR_XBIASES1_DATA          0x3c
#define CONTROL_BITS_XBIASES1_DATA          64
#define CONTROL_ADDR_XBIASES2_DATA          0x48
#define CONTROL_BITS_XBIASES2_DATA          64
#define CONTROL_ADDR_XBIASES3_DATA          0x54
#define CONTROL_BITS_XBIASES3_DATA          64
#define CONTROL_ADDR_XTRAINING_DATA_DATA    0x60
#define CONTROL_BITS_XTRAINING_DATA_DATA    64
#define CONTROL_ADDR_XTRAINING_TARGETS_DATA 0x6c
#define CONTROL_BITS_XTRAINING_TARGETS_DATA 64
