// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcnn_accel.h"

extern XCnn_accel_Config XCnn_accel_ConfigTable[];

#ifdef SDT
XCnn_accel_Config *XCnn_accel_LookupConfig(UINTPTR BaseAddress) {
	XCnn_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCnn_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCnn_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCnn_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_accel_Initialize(XCnn_accel *InstancePtr, UINTPTR BaseAddress) {
	XCnn_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCnn_accel_Config *XCnn_accel_LookupConfig(u16 DeviceId) {
	XCnn_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_ACCEL_NUM_INSTANCES; Index++) {
		if (XCnn_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_accel_Initialize(XCnn_accel *InstancePtr, u16 DeviceId) {
	XCnn_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

