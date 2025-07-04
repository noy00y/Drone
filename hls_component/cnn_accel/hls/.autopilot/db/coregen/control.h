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
// 0x10 : Data signal of img_in
//        bit 31~0 - img_in[31:0] (Read/Write)
// 0x14 : Data signal of img_in
//        bit 31~0 - img_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of weights1
//        bit 31~0 - weights1[31:0] (Read/Write)
// 0x20 : Data signal of weights1
//        bit 31~0 - weights1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bias1
//        bit 31~0 - bias1[31:0] (Read/Write)
// 0x2c : Data signal of bias1
//        bit 31~0 - bias1[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of weights2
//        bit 31~0 - weights2[31:0] (Read/Write)
// 0x38 : Data signal of weights2
//        bit 31~0 - weights2[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of bias2
//        bit 31~0 - bias2[31:0] (Read/Write)
// 0x44 : Data signal of bias2
//        bit 31~0 - bias2[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of FC1_W
//        bit 31~0 - FC1_W[31:0] (Read/Write)
// 0x50 : Data signal of FC1_W
//        bit 31~0 - FC1_W[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of FC1_B
//        bit 31~0 - FC1_B[31:0] (Read/Write)
// 0x5c : Data signal of FC1_B
//        bit 31~0 - FC1_B[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of FC2_W
//        bit 31~0 - FC2_W[31:0] (Read/Write)
// 0x68 : Data signal of FC2_W
//        bit 31~0 - FC2_W[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of FC2_B
//        bit 31~0 - FC2_B[31:0] (Read/Write)
// 0x74 : Data signal of FC2_B
//        bit 31~0 - FC2_B[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of flag_out
//        bit 31~0 - flag_out[31:0] (Read/Write)
// 0x80 : Data signal of flag_out
//        bit 31~0 - flag_out[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of ctrl
//        bit 31~0 - ctrl[31:0] (Read/Write)
// 0x8c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL       0x00
#define CONTROL_ADDR_GIE           0x04
#define CONTROL_ADDR_IER           0x08
#define CONTROL_ADDR_ISR           0x0c
#define CONTROL_ADDR_IMG_IN_DATA   0x10
#define CONTROL_BITS_IMG_IN_DATA   64
#define CONTROL_ADDR_WEIGHTS1_DATA 0x1c
#define CONTROL_BITS_WEIGHTS1_DATA 64
#define CONTROL_ADDR_BIAS1_DATA    0x28
#define CONTROL_BITS_BIAS1_DATA    64
#define CONTROL_ADDR_WEIGHTS2_DATA 0x34
#define CONTROL_BITS_WEIGHTS2_DATA 64
#define CONTROL_ADDR_BIAS2_DATA    0x40
#define CONTROL_BITS_BIAS2_DATA    64
#define CONTROL_ADDR_FC1_W_DATA    0x4c
#define CONTROL_BITS_FC1_W_DATA    64
#define CONTROL_ADDR_FC1_B_DATA    0x58
#define CONTROL_BITS_FC1_B_DATA    64
#define CONTROL_ADDR_FC2_W_DATA    0x64
#define CONTROL_BITS_FC2_W_DATA    64
#define CONTROL_ADDR_FC2_B_DATA    0x70
#define CONTROL_BITS_FC2_B_DATA    64
#define CONTROL_ADDR_FLAG_OUT_DATA 0x7c
#define CONTROL_BITS_FLAG_OUT_DATA 64
#define CONTROL_ADDR_CTRL_DATA     0x88
#define CONTROL_BITS_CTRL_DATA     32
