// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCNN_ACCEL_H
#define XCNN_ACCEL_H

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
#include "xcnn_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XCnn_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCnn_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_accel_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XCnn_accel_Initialize(XCnn_accel *InstancePtr, UINTPTR BaseAddress);
XCnn_accel_Config* XCnn_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XCnn_accel_Initialize(XCnn_accel *InstancePtr, u16 DeviceId);
XCnn_accel_Config* XCnn_accel_LookupConfig(u16 DeviceId);
#endif
int XCnn_accel_CfgInitialize(XCnn_accel *InstancePtr, XCnn_accel_Config *ConfigPtr);
#else
int XCnn_accel_Initialize(XCnn_accel *InstancePtr, const char* InstanceName);
int XCnn_accel_Release(XCnn_accel *InstancePtr);
#endif

void XCnn_accel_Start(XCnn_accel *InstancePtr);
u32 XCnn_accel_IsDone(XCnn_accel *InstancePtr);
u32 XCnn_accel_IsIdle(XCnn_accel *InstancePtr);
u32 XCnn_accel_IsReady(XCnn_accel *InstancePtr);
void XCnn_accel_EnableAutoRestart(XCnn_accel *InstancePtr);
void XCnn_accel_DisableAutoRestart(XCnn_accel *InstancePtr);

void XCnn_accel_Set_img_in(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_img_in(XCnn_accel *InstancePtr);
void XCnn_accel_Set_weights1(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_weights1(XCnn_accel *InstancePtr);
void XCnn_accel_Set_bias1(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_bias1(XCnn_accel *InstancePtr);
void XCnn_accel_Set_weights2(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_weights2(XCnn_accel *InstancePtr);
void XCnn_accel_Set_bias2(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_bias2(XCnn_accel *InstancePtr);
void XCnn_accel_Set_FC1_W(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_FC1_W(XCnn_accel *InstancePtr);
void XCnn_accel_Set_FC1_B(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_FC1_B(XCnn_accel *InstancePtr);
void XCnn_accel_Set_FC2_W(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_FC2_W(XCnn_accel *InstancePtr);
void XCnn_accel_Set_FC2_B(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_FC2_B(XCnn_accel *InstancePtr);
void XCnn_accel_Set_flag_out(XCnn_accel *InstancePtr, u64 Data);
u64 XCnn_accel_Get_flag_out(XCnn_accel *InstancePtr);
void XCnn_accel_Set_ctrl(XCnn_accel *InstancePtr, u32 Data);
u32 XCnn_accel_Get_ctrl(XCnn_accel *InstancePtr);

void XCnn_accel_InterruptGlobalEnable(XCnn_accel *InstancePtr);
void XCnn_accel_InterruptGlobalDisable(XCnn_accel *InstancePtr);
void XCnn_accel_InterruptEnable(XCnn_accel *InstancePtr, u32 Mask);
void XCnn_accel_InterruptDisable(XCnn_accel *InstancePtr, u32 Mask);
void XCnn_accel_InterruptClear(XCnn_accel *InstancePtr, u32 Mask);
u32 XCnn_accel_InterruptGetEnabled(XCnn_accel *InstancePtr);
u32 XCnn_accel_InterruptGetStatus(XCnn_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
