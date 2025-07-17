// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// CTRL
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 ~
// 0x01f : Memory 'weights_0_0_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_0_0[2n]
//                  bit [31:16] - weights_0_0_0[2n+1]
// 0x020 ~
// 0x02f : Memory 'weights_0_0_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_0_1[2n]
//                  bit [31:16] - weights_0_0_1[2n+1]
// 0x030 ~
// 0x03f : Memory 'weights_0_0_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_0_2[2n]
//                  bit [31:16] - weights_0_0_2[2n+1]
// 0x040 ~
// 0x04f : Memory 'weights_0_1_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_1_0[2n]
//                  bit [31:16] - weights_0_1_0[2n+1]
// 0x050 ~
// 0x05f : Memory 'weights_0_1_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_1_1[2n]
//                  bit [31:16] - weights_0_1_1[2n+1]
// 0x060 ~
// 0x06f : Memory 'weights_0_1_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_1_2[2n]
//                  bit [31:16] - weights_0_1_2[2n+1]
// 0x070 ~
// 0x07f : Memory 'weights_0_2_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_2_0[2n]
//                  bit [31:16] - weights_0_2_0[2n+1]
// 0x080 ~
// 0x08f : Memory 'weights_0_2_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_2_1[2n]
//                  bit [31:16] - weights_0_2_1[2n+1]
// 0x090 ~
// 0x09f : Memory 'weights_0_2_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_0_2_2[2n]
//                  bit [31:16] - weights_0_2_2[2n+1]
// 0x0a0 ~
// 0x0af : Memory 'weights_1_0_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_0_0[2n]
//                  bit [31:16] - weights_1_0_0[2n+1]
// 0x0b0 ~
// 0x0bf : Memory 'weights_1_0_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_0_1[2n]
//                  bit [31:16] - weights_1_0_1[2n+1]
// 0x0c0 ~
// 0x0cf : Memory 'weights_1_0_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_0_2[2n]
//                  bit [31:16] - weights_1_0_2[2n+1]
// 0x0d0 ~
// 0x0df : Memory 'weights_1_1_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_1_0[2n]
//                  bit [31:16] - weights_1_1_0[2n+1]
// 0x0e0 ~
// 0x0ef : Memory 'weights_1_1_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_1_1[2n]
//                  bit [31:16] - weights_1_1_1[2n+1]
// 0x0f0 ~
// 0x0ff : Memory 'weights_1_1_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_1_2[2n]
//                  bit [31:16] - weights_1_1_2[2n+1]
// 0x100 ~
// 0x10f : Memory 'weights_1_2_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_2_0[2n]
//                  bit [31:16] - weights_1_2_0[2n+1]
// 0x110 ~
// 0x11f : Memory 'weights_1_2_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_2_1[2n]
//                  bit [31:16] - weights_1_2_1[2n+1]
// 0x120 ~
// 0x12f : Memory 'weights_1_2_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_1_2_2[2n]
//                  bit [31:16] - weights_1_2_2[2n+1]
// 0x130 ~
// 0x13f : Memory 'weights_2_0_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_0_0[2n]
//                  bit [31:16] - weights_2_0_0[2n+1]
// 0x140 ~
// 0x14f : Memory 'weights_2_0_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_0_1[2n]
//                  bit [31:16] - weights_2_0_1[2n+1]
// 0x150 ~
// 0x15f : Memory 'weights_2_0_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_0_2[2n]
//                  bit [31:16] - weights_2_0_2[2n+1]
// 0x160 ~
// 0x16f : Memory 'weights_2_1_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_1_0[2n]
//                  bit [31:16] - weights_2_1_0[2n+1]
// 0x170 ~
// 0x17f : Memory 'weights_2_1_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_1_1[2n]
//                  bit [31:16] - weights_2_1_1[2n+1]
// 0x180 ~
// 0x18f : Memory 'weights_2_1_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_1_2[2n]
//                  bit [31:16] - weights_2_1_2[2n+1]
// 0x190 ~
// 0x19f : Memory 'weights_2_2_0' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_2_0[2n]
//                  bit [31:16] - weights_2_2_0[2n+1]
// 0x1a0 ~
// 0x1af : Memory 'weights_2_2_1' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_2_1[2n]
//                  bit [31:16] - weights_2_2_1[2n+1]
// 0x1b0 ~
// 0x1bf : Memory 'weights_2_2_2' (8 * 16b)
//         Word n : bit [15: 0] - weights_2_2_2[2n]
//                  bit [31:16] - weights_2_2_2[2n+1]
// 0x1c0 ~
// 0x1cf : Memory 'bias' (8 * 16b)
//         Word n : bit [15: 0] - bias[2n]
//                  bit [31:16] - bias[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCNN_ACCEL_CTRL_ADDR_AP_CTRL            0x000
#define XCNN_ACCEL_CTRL_ADDR_GIE                0x004
#define XCNN_ACCEL_CTRL_ADDR_IER                0x008
#define XCNN_ACCEL_CTRL_ADDR_ISR                0x00c
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE 0x010
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH 0x01f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE 0x020
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH 0x02f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE 0x030
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH 0x03f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE 0x040
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH 0x04f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE 0x050
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH 0x05f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE 0x060
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH 0x06f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE 0x070
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH 0x07f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE 0x080
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH 0x08f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE 0x090
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH 0x09f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE 0x0a0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH 0x0af
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE 0x0b0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH 0x0bf
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE 0x0c0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH 0x0cf
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE 0x0d0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH 0x0df
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE 0x0e0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH 0x0ef
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE 0x0f0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH 0x0ff
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE 0x100
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH 0x10f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE 0x110
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH 0x11f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE 0x120
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH 0x12f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE 0x130
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH 0x13f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE 0x140
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH 0x14f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE 0x150
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH 0x15f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE 0x160
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH 0x16f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE 0x170
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH 0x17f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE 0x180
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH 0x18f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_2     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE 0x190
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH 0x19f
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_0     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_0     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE 0x1a0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH 0x1af
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_1     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_1     8
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE 0x1b0
#define XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH 0x1bf
#define XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_2     16
#define XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_2     8
#define XCNN_ACCEL_CTRL_ADDR_BIAS_BASE          0x1c0
#define XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH          0x1cf
#define XCNN_ACCEL_CTRL_WIDTH_BIAS              16
#define XCNN_ACCEL_CTRL_DEPTH_BIAS              8

