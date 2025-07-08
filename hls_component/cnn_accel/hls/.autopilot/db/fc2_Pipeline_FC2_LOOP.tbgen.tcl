set moduleName fc2_Pipeline_FC2_LOOP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 23
set C_modelName {fc2_Pipeline_FC2_LOOP}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict vec2 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ acc2 float 32 regular  }
	{ fc2_w_local_load float 32 regular  }
	{ fc2_w_local_51_load float 32 regular  }
	{ fc2_w_local_52_load float 32 regular  }
	{ fc2_w_local_53_load float 32 regular  }
	{ fc2_w_local_54_load float 32 regular  }
	{ fc2_w_local_55_load float 32 regular  }
	{ fc2_w_local_56_load float 32 regular  }
	{ fc2_w_local_57_load float 32 regular  }
	{ fc2_w_local_58_load float 32 regular  }
	{ fc2_w_local_59_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_10_load float 32 regular  }
	{ cnn_accel_fc2_w_local_74 float 32 regular  }
	{ cnn_accel_fc2_w_local_75 float 32 regular  }
	{ cnn_accel_fc2_w_local_76 float 32 regular  }
	{ cnn_accel_fc2_w_local_77 float 32 regular  }
	{ cnn_accel_fc2_w_local_78 float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_16_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_17_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_18_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_19_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_20_load float 32 regular  }
	{ cnn_accel_fc2_w_local_79 float 32 regular  }
	{ cnn_accel_fc2_w_local_80 float 32 regular  }
	{ cnn_accel_fc2_w_local_81 float 32 regular  }
	{ cnn_accel_fc2_w_local_82 float 32 regular  }
	{ cnn_accel_fc2_w_local_83 float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_26_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_27_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_28_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_29_load float 32 regular  }
	{ p_ZZ9cnn_accelE11fc2_w_local_30_load float 32 regular  }
	{ cnn_accel_fc2_w_local float 32 regular  }
	{ acc2_1_out float 32 regular {pointer 1}  }
	{ vec2 float 32 regular {array 32 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "acc2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_51_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_52_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_53_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_54_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_55_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_56_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_57_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_58_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_w_local_59_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_10_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_74", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_75", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_76", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_77", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_78", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_16_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_17_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_18_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_19_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_20_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_79", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_80", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_81", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_82", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local_83", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_26_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_27_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_28_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_29_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_30_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cnn_accel_fc2_w_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "acc2_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ acc2 sc_in sc_lv 32 signal 0 } 
	{ fc2_w_local_load sc_in sc_lv 32 signal 1 } 
	{ fc2_w_local_51_load sc_in sc_lv 32 signal 2 } 
	{ fc2_w_local_52_load sc_in sc_lv 32 signal 3 } 
	{ fc2_w_local_53_load sc_in sc_lv 32 signal 4 } 
	{ fc2_w_local_54_load sc_in sc_lv 32 signal 5 } 
	{ fc2_w_local_55_load sc_in sc_lv 32 signal 6 } 
	{ fc2_w_local_56_load sc_in sc_lv 32 signal 7 } 
	{ fc2_w_local_57_load sc_in sc_lv 32 signal 8 } 
	{ fc2_w_local_58_load sc_in sc_lv 32 signal 9 } 
	{ fc2_w_local_59_load sc_in sc_lv 32 signal 10 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_10_load sc_in sc_lv 32 signal 11 } 
	{ cnn_accel_fc2_w_local_74 sc_in sc_lv 32 signal 12 } 
	{ cnn_accel_fc2_w_local_75 sc_in sc_lv 32 signal 13 } 
	{ cnn_accel_fc2_w_local_76 sc_in sc_lv 32 signal 14 } 
	{ cnn_accel_fc2_w_local_77 sc_in sc_lv 32 signal 15 } 
	{ cnn_accel_fc2_w_local_78 sc_in sc_lv 32 signal 16 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_16_load sc_in sc_lv 32 signal 17 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_17_load sc_in sc_lv 32 signal 18 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_18_load sc_in sc_lv 32 signal 19 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_19_load sc_in sc_lv 32 signal 20 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_20_load sc_in sc_lv 32 signal 21 } 
	{ cnn_accel_fc2_w_local_79 sc_in sc_lv 32 signal 22 } 
	{ cnn_accel_fc2_w_local_80 sc_in sc_lv 32 signal 23 } 
	{ cnn_accel_fc2_w_local_81 sc_in sc_lv 32 signal 24 } 
	{ cnn_accel_fc2_w_local_82 sc_in sc_lv 32 signal 25 } 
	{ cnn_accel_fc2_w_local_83 sc_in sc_lv 32 signal 26 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_26_load sc_in sc_lv 32 signal 27 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_27_load sc_in sc_lv 32 signal 28 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_28_load sc_in sc_lv 32 signal 29 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_29_load sc_in sc_lv 32 signal 30 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_30_load sc_in sc_lv 32 signal 31 } 
	{ cnn_accel_fc2_w_local sc_in sc_lv 32 signal 32 } 
	{ acc2_1_out sc_out sc_lv 32 signal 33 } 
	{ acc2_1_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ vec2_address0 sc_out sc_lv 5 signal 34 } 
	{ vec2_ce0 sc_out sc_logic 1 signal 34 } 
	{ vec2_q0 sc_in sc_lv 32 signal 34 } 
	{ grp_fu_196_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_196_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_196_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_196_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_196_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_624_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_624_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_624_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_624_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "acc2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc2", "role": "default" }} , 
 	{ "name": "fc2_w_local_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_51_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_51_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_52_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_52_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_53_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_53_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_54_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_54_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_55_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_55_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_56_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_56_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_57_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_57_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_58_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_58_load", "role": "default" }} , 
 	{ "name": "fc2_w_local_59_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_59_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_10_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_10_load", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_74", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_74", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_75", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_75", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_76", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_76", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_77", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_77", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_78", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_78", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_16_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_16_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_17_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_17_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_18_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_18_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_19_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_19_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_20_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_20_load", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_79", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_79", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_80", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_80", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_81", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_81", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_82", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_82", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local_83", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local_83", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_26_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_26_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_27_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_27_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_28_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_28_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_29_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_29_load", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_30_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_30_load", "role": "default" }} , 
 	{ "name": "cnn_accel_fc2_w_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cnn_accel_fc2_w_local", "role": "default" }} , 
 	{ "name": "acc2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc2_1_out", "role": "default" }} , 
 	{ "name": "acc2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc2_1_out", "role": "ap_vld" }} , 
 	{ "name": "vec2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec2", "role": "address0" }} , 
 	{ "name": "vec2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec2", "role": "ce0" }} , 
 	{ "name": "vec2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec2", "role": "q0" }} , 
 	{ "name": "grp_fu_196_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_196_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_196_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_624_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_624_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_624_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_624_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_624_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_624_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_624_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_624_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	fc2_Pipeline_FC2_LOOP {
		acc2 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_51_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_52_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_53_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_54_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_55_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_56_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_57_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_58_load {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_59_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_10_load {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_74 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_75 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_76 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_77 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_78 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_16_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_17_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_18_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_19_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_20_load {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_79 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_80 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_81 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_82 {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local_83 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_26_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_27_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_28_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_29_load {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_30_load {Type I LastRead 0 FirstWrite -1}
		cnn_accel_fc2_w_local {Type I LastRead 0 FirstWrite -1}
		acc2_1_out {Type O LastRead -1 FirstWrite 5}
		vec2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "135", "Max" : "135"}
	, {"Name" : "Interval", "Min" : "135", "Max" : "135"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	acc2 { ap_none {  { acc2 in_data 0 32 } } }
	fc2_w_local_load { ap_none {  { fc2_w_local_load in_data 0 32 } } }
	fc2_w_local_51_load { ap_none {  { fc2_w_local_51_load in_data 0 32 } } }
	fc2_w_local_52_load { ap_none {  { fc2_w_local_52_load in_data 0 32 } } }
	fc2_w_local_53_load { ap_none {  { fc2_w_local_53_load in_data 0 32 } } }
	fc2_w_local_54_load { ap_none {  { fc2_w_local_54_load in_data 0 32 } } }
	fc2_w_local_55_load { ap_none {  { fc2_w_local_55_load in_data 0 32 } } }
	fc2_w_local_56_load { ap_none {  { fc2_w_local_56_load in_data 0 32 } } }
	fc2_w_local_57_load { ap_none {  { fc2_w_local_57_load in_data 0 32 } } }
	fc2_w_local_58_load { ap_none {  { fc2_w_local_58_load in_data 0 32 } } }
	fc2_w_local_59_load { ap_none {  { fc2_w_local_59_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_10_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_10_load in_data 0 32 } } }
	cnn_accel_fc2_w_local_74 { ap_none {  { cnn_accel_fc2_w_local_74 in_data 0 32 } } }
	cnn_accel_fc2_w_local_75 { ap_none {  { cnn_accel_fc2_w_local_75 in_data 0 32 } } }
	cnn_accel_fc2_w_local_76 { ap_none {  { cnn_accel_fc2_w_local_76 in_data 0 32 } } }
	cnn_accel_fc2_w_local_77 { ap_none {  { cnn_accel_fc2_w_local_77 in_data 0 32 } } }
	cnn_accel_fc2_w_local_78 { ap_none {  { cnn_accel_fc2_w_local_78 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_16_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_16_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_17_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_17_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_18_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_18_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_19_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_19_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_20_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_20_load in_data 0 32 } } }
	cnn_accel_fc2_w_local_79 { ap_none {  { cnn_accel_fc2_w_local_79 in_data 0 32 } } }
	cnn_accel_fc2_w_local_80 { ap_none {  { cnn_accel_fc2_w_local_80 in_data 0 32 } } }
	cnn_accel_fc2_w_local_81 { ap_none {  { cnn_accel_fc2_w_local_81 in_data 0 32 } } }
	cnn_accel_fc2_w_local_82 { ap_none {  { cnn_accel_fc2_w_local_82 in_data 0 32 } } }
	cnn_accel_fc2_w_local_83 { ap_none {  { cnn_accel_fc2_w_local_83 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_26_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_26_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_27_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_27_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_28_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_28_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_29_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_29_load in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_30_load { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_30_load in_data 0 32 } } }
	cnn_accel_fc2_w_local { ap_none {  { cnn_accel_fc2_w_local in_data 0 32 } } }
	acc2_1_out { ap_vld {  { acc2_1_out out_data 1 32 }  { acc2_1_out_ap_vld out_vld 1 1 } } }
	vec2 { ap_memory {  { vec2_address0 mem_address 1 5 }  { vec2_ce0 mem_ce 1 1 }  { vec2_q0 mem_dout 0 32 } } }
}
