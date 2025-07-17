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
    u64 Ctrl_BaseAddress;
} XCnn_accel_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
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

u32 XCnn_accel_Get_weights_0_0_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_0_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_0_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_0_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_1_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_1_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_1_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_1_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_2_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_2_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_0_2_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_0_2_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_0_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_0_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_0_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_0_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_0_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_0_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_0_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_0_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_1_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_1_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_1_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_1_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_2_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_2_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_1_2_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_1_2_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_1_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_1_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_1_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_1_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_0_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_0_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_0_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_0_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_1_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_1_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_1_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_1_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_2_0_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_0_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_0_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_0_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_0_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_2_1_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_1_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_1_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_1_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_1_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_weights_2_2_2_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_2_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_2_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_2_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_weights_2_2_2_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_weights_2_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_weights_2_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_weights_2_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_weights_2_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Get_bias_BaseAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_bias_HighAddress(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_bias_TotalBytes(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_bias_BitWidth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Get_bias_Depth(XCnn_accel *InstancePtr);
u32 XCnn_accel_Write_bias_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Read_bias_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length);
u32 XCnn_accel_Write_bias_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);
u32 XCnn_accel_Read_bias_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length);

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
