// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_accel_CfgInitialize(XCnn_accel *InstancePtr, XCnn_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_accel_Start(XCnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL) & 0x80;
    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_accel_IsDone(XCnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_accel_IsIdle(XCnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_accel_IsReady(XCnn_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_accel_EnableAutoRestart(XCnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL, 0x80);
}

void XCnn_accel_DisableAutoRestart(XCnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_AP_CTRL, 0);
}

u32 XCnn_accel_Get_weights_0_0_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE);
}

u32 XCnn_accel_Get_weights_0_0_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH);
}

u32 XCnn_accel_Get_weights_0_0_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_0_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_0;
}

u32 XCnn_accel_Get_weights_0_0_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_0;
}

u32 XCnn_accel_Write_weights_0_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_0_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE);
}

u32 XCnn_accel_Get_weights_0_0_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH);
}

u32 XCnn_accel_Get_weights_0_0_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_0_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_1;
}

u32 XCnn_accel_Get_weights_0_0_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_1;
}

u32 XCnn_accel_Write_weights_0_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_0_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE);
}

u32 XCnn_accel_Get_weights_0_0_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH);
}

u32 XCnn_accel_Get_weights_0_0_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_0_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_0_2;
}

u32 XCnn_accel_Get_weights_0_0_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_0_2;
}

u32 XCnn_accel_Write_weights_0_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_0_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_1_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE);
}

u32 XCnn_accel_Get_weights_0_1_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH);
}

u32 XCnn_accel_Get_weights_0_1_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_1_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_0;
}

u32 XCnn_accel_Get_weights_0_1_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_0;
}

u32 XCnn_accel_Write_weights_0_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_1_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE);
}

u32 XCnn_accel_Get_weights_0_1_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH);
}

u32 XCnn_accel_Get_weights_0_1_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_1_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_1;
}

u32 XCnn_accel_Get_weights_0_1_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_1;
}

u32 XCnn_accel_Write_weights_0_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_1_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE);
}

u32 XCnn_accel_Get_weights_0_1_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH);
}

u32 XCnn_accel_Get_weights_0_1_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_1_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_1_2;
}

u32 XCnn_accel_Get_weights_0_1_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_1_2;
}

u32 XCnn_accel_Write_weights_0_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_1_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_2_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE);
}

u32 XCnn_accel_Get_weights_0_2_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH);
}

u32 XCnn_accel_Get_weights_0_2_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_2_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_0;
}

u32 XCnn_accel_Get_weights_0_2_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_0;
}

u32 XCnn_accel_Write_weights_0_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_2_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE);
}

u32 XCnn_accel_Get_weights_0_2_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH);
}

u32 XCnn_accel_Get_weights_0_2_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_2_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_1;
}

u32 XCnn_accel_Get_weights_0_2_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_1;
}

u32 XCnn_accel_Write_weights_0_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_0_2_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE);
}

u32 XCnn_accel_Get_weights_0_2_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH);
}

u32 XCnn_accel_Get_weights_0_2_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_0_2_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_0_2_2;
}

u32 XCnn_accel_Get_weights_0_2_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_0_2_2;
}

u32 XCnn_accel_Write_weights_0_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_0_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_0_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_0_2_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_0_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE);
}

u32 XCnn_accel_Get_weights_1_0_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH);
}

u32 XCnn_accel_Get_weights_1_0_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_0_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_0;
}

u32 XCnn_accel_Get_weights_1_0_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_0;
}

u32 XCnn_accel_Write_weights_1_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_0_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE);
}

u32 XCnn_accel_Get_weights_1_0_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH);
}

u32 XCnn_accel_Get_weights_1_0_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_0_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_1;
}

u32 XCnn_accel_Get_weights_1_0_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_1;
}

u32 XCnn_accel_Write_weights_1_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_0_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE);
}

u32 XCnn_accel_Get_weights_1_0_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH);
}

u32 XCnn_accel_Get_weights_1_0_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_0_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_0_2;
}

u32 XCnn_accel_Get_weights_1_0_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_0_2;
}

u32 XCnn_accel_Write_weights_1_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_0_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_1_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE);
}

u32 XCnn_accel_Get_weights_1_1_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH);
}

u32 XCnn_accel_Get_weights_1_1_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_1_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_0;
}

u32 XCnn_accel_Get_weights_1_1_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_0;
}

u32 XCnn_accel_Write_weights_1_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_1_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE);
}

u32 XCnn_accel_Get_weights_1_1_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH);
}

u32 XCnn_accel_Get_weights_1_1_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_1_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_1;
}

u32 XCnn_accel_Get_weights_1_1_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_1;
}

u32 XCnn_accel_Write_weights_1_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_1_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE);
}

u32 XCnn_accel_Get_weights_1_1_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH);
}

u32 XCnn_accel_Get_weights_1_1_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_1_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_1_2;
}

u32 XCnn_accel_Get_weights_1_1_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_1_2;
}

u32 XCnn_accel_Write_weights_1_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_1_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_2_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE);
}

u32 XCnn_accel_Get_weights_1_2_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH);
}

u32 XCnn_accel_Get_weights_1_2_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_2_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_0;
}

u32 XCnn_accel_Get_weights_1_2_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_0;
}

u32 XCnn_accel_Write_weights_1_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_2_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE);
}

u32 XCnn_accel_Get_weights_1_2_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH);
}

u32 XCnn_accel_Get_weights_1_2_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_2_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_1;
}

u32 XCnn_accel_Get_weights_1_2_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_1;
}

u32 XCnn_accel_Write_weights_1_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_1_2_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE);
}

u32 XCnn_accel_Get_weights_1_2_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH);
}

u32 XCnn_accel_Get_weights_1_2_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_1_2_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_1_2_2;
}

u32 XCnn_accel_Get_weights_1_2_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_1_2_2;
}

u32 XCnn_accel_Write_weights_1_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_1_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_1_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_1_2_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_0_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE);
}

u32 XCnn_accel_Get_weights_2_0_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH);
}

u32 XCnn_accel_Get_weights_2_0_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_0_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_0;
}

u32 XCnn_accel_Get_weights_2_0_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_0;
}

u32 XCnn_accel_Write_weights_2_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_0_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE);
}

u32 XCnn_accel_Get_weights_2_0_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH);
}

u32 XCnn_accel_Get_weights_2_0_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_0_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_1;
}

u32 XCnn_accel_Get_weights_2_0_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_1;
}

u32 XCnn_accel_Write_weights_2_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_0_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE);
}

u32 XCnn_accel_Get_weights_2_0_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH);
}

u32 XCnn_accel_Get_weights_2_0_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_0_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_0_2;
}

u32 XCnn_accel_Get_weights_2_0_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_0_2;
}

u32 XCnn_accel_Write_weights_2_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_0_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_0_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_1_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE);
}

u32 XCnn_accel_Get_weights_2_1_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH);
}

u32 XCnn_accel_Get_weights_2_1_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_1_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_0;
}

u32 XCnn_accel_Get_weights_2_1_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_0;
}

u32 XCnn_accel_Write_weights_2_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_1_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE);
}

u32 XCnn_accel_Get_weights_2_1_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH);
}

u32 XCnn_accel_Get_weights_2_1_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_1_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_1;
}

u32 XCnn_accel_Get_weights_2_1_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_1;
}

u32 XCnn_accel_Write_weights_2_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_1_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE);
}

u32 XCnn_accel_Get_weights_2_1_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH);
}

u32 XCnn_accel_Get_weights_2_1_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_1_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_1_2;
}

u32 XCnn_accel_Get_weights_2_1_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_1_2;
}

u32 XCnn_accel_Write_weights_2_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_1_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_1_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_2_0_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE);
}

u32 XCnn_accel_Get_weights_2_2_0_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH);
}

u32 XCnn_accel_Get_weights_2_2_0_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_2_0_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_0;
}

u32 XCnn_accel_Get_weights_2_2_0_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_0;
}

u32 XCnn_accel_Write_weights_2_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_0_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_0_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_0_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_2_1_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE);
}

u32 XCnn_accel_Get_weights_2_2_1_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH);
}

u32 XCnn_accel_Get_weights_2_2_1_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_2_1_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_1;
}

u32 XCnn_accel_Get_weights_2_2_1_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_1;
}

u32 XCnn_accel_Write_weights_2_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_1_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_1_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_1_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_weights_2_2_2_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE);
}

u32 XCnn_accel_Get_weights_2_2_2_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH);
}

u32 XCnn_accel_Get_weights_2_2_2_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + 1);
}

u32 XCnn_accel_Get_weights_2_2_2_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_WEIGHTS_2_2_2;
}

u32 XCnn_accel_Get_weights_2_2_2_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_WEIGHTS_2_2_2;
}

u32 XCnn_accel_Write_weights_2_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_2_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_weights_2_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_weights_2_2_2_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_HIGH - XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_WEIGHTS_2_2_2_BASE + offset + i);
    }
    return length;
}

u32 XCnn_accel_Get_bias_BaseAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_BASE);
}

u32 XCnn_accel_Get_bias_HighAddress(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH);
}

u32 XCnn_accel_Get_bias_TotalBytes(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH - XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + 1);
}

u32 XCnn_accel_Get_bias_BitWidth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_WIDTH_BIAS;
}

u32 XCnn_accel_Get_bias_Depth(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_ACCEL_CTRL_DEPTH_BIAS;
}

u32 XCnn_accel_Write_bias_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH - XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_bias_Words(XCnn_accel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH - XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_accel_Write_bias_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH - XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_accel_Read_bias_Bytes(XCnn_accel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_ACCEL_CTRL_ADDR_BIAS_HIGH - XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_BaseAddress + XCNN_ACCEL_CTRL_ADDR_BIAS_BASE + offset + i);
    }
    return length;
}

void XCnn_accel_InterruptGlobalEnable(XCnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_GIE, 1);
}

void XCnn_accel_InterruptGlobalDisable(XCnn_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_GIE, 0);
}

void XCnn_accel_InterruptEnable(XCnn_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_IER);
    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_IER, Register | Mask);
}

void XCnn_accel_InterruptDisable(XCnn_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_IER);
    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_IER, Register & (~Mask));
}

void XCnn_accel_InterruptClear(XCnn_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_ISR, Mask);
}

u32 XCnn_accel_InterruptGetEnabled(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_IER);
}

u32 XCnn_accel_InterruptGetStatus(XCnn_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XCNN_ACCEL_CTRL_ADDR_ISR);
}

