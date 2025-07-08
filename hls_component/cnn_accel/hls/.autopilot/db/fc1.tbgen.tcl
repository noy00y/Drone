set moduleName fc1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {fc1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict fc1_w_local { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_35 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_36 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_37 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_38 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_39 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_40 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fc1_w_local_41 { MEM_WIDTH 32 MEM_SIZE 1158144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict vec1 { MEM_WIDTH 32 MEM_SIZE 289536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict vec2 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ fc1_w_local float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_35 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_36 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_37 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_38 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_39 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_40 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ fc1_w_local_41 float 32 regular {array 289536 { 1 3 } 1 1 }  }
	{ vec1 float 32 regular {array 72384 { 1 3 } 1 1 }  }
	{ vec2 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ fc1_b_local float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_42 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_43 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_44 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_45 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_46 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_47 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_48 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_49 float 32 regular {pointer 0} {global 0}  }
	{ fc1_b_local_50 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_10 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_11 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_12 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_13 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_14 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_15 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_16 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_17 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_18 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_19 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_20 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_21 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_22 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_23 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_24 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_25 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_26 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_27 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_28 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_29 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_30 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc1_b_local_31 float 32 regular {pointer 0} {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "fc1_w_local", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_35", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_36", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_37", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_38", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_39", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_40", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_w_local_41", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vec1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vec2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fc1_b_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc1_b_local_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc1_b_local_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fc1_w_local_address0 sc_out sc_lv 19 signal 0 } 
	{ fc1_w_local_ce0 sc_out sc_logic 1 signal 0 } 
	{ fc1_w_local_q0 sc_in sc_lv 32 signal 0 } 
	{ fc1_w_local_35_address0 sc_out sc_lv 19 signal 1 } 
	{ fc1_w_local_35_ce0 sc_out sc_logic 1 signal 1 } 
	{ fc1_w_local_35_q0 sc_in sc_lv 32 signal 1 } 
	{ fc1_w_local_36_address0 sc_out sc_lv 19 signal 2 } 
	{ fc1_w_local_36_ce0 sc_out sc_logic 1 signal 2 } 
	{ fc1_w_local_36_q0 sc_in sc_lv 32 signal 2 } 
	{ fc1_w_local_37_address0 sc_out sc_lv 19 signal 3 } 
	{ fc1_w_local_37_ce0 sc_out sc_logic 1 signal 3 } 
	{ fc1_w_local_37_q0 sc_in sc_lv 32 signal 3 } 
	{ fc1_w_local_38_address0 sc_out sc_lv 19 signal 4 } 
	{ fc1_w_local_38_ce0 sc_out sc_logic 1 signal 4 } 
	{ fc1_w_local_38_q0 sc_in sc_lv 32 signal 4 } 
	{ fc1_w_local_39_address0 sc_out sc_lv 19 signal 5 } 
	{ fc1_w_local_39_ce0 sc_out sc_logic 1 signal 5 } 
	{ fc1_w_local_39_q0 sc_in sc_lv 32 signal 5 } 
	{ fc1_w_local_40_address0 sc_out sc_lv 19 signal 6 } 
	{ fc1_w_local_40_ce0 sc_out sc_logic 1 signal 6 } 
	{ fc1_w_local_40_q0 sc_in sc_lv 32 signal 6 } 
	{ fc1_w_local_41_address0 sc_out sc_lv 19 signal 7 } 
	{ fc1_w_local_41_ce0 sc_out sc_logic 1 signal 7 } 
	{ fc1_w_local_41_q0 sc_in sc_lv 32 signal 7 } 
	{ vec1_address0 sc_out sc_lv 17 signal 8 } 
	{ vec1_ce0 sc_out sc_logic 1 signal 8 } 
	{ vec1_q0 sc_in sc_lv 32 signal 8 } 
	{ vec2_address0 sc_out sc_lv 5 signal 9 } 
	{ vec2_ce0 sc_out sc_logic 1 signal 9 } 
	{ vec2_we0 sc_out sc_logic 1 signal 9 } 
	{ vec2_d0 sc_out sc_lv 32 signal 9 } 
	{ fc1_b_local sc_in sc_lv 32 signal 10 } 
	{ fc1_b_local_42 sc_in sc_lv 32 signal 11 } 
	{ fc1_b_local_43 sc_in sc_lv 32 signal 12 } 
	{ fc1_b_local_44 sc_in sc_lv 32 signal 13 } 
	{ fc1_b_local_45 sc_in sc_lv 32 signal 14 } 
	{ fc1_b_local_46 sc_in sc_lv 32 signal 15 } 
	{ fc1_b_local_47 sc_in sc_lv 32 signal 16 } 
	{ fc1_b_local_48 sc_in sc_lv 32 signal 17 } 
	{ fc1_b_local_49 sc_in sc_lv 32 signal 18 } 
	{ fc1_b_local_50 sc_in sc_lv 32 signal 19 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_10 sc_in sc_lv 32 signal 20 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_11 sc_in sc_lv 32 signal 21 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_12 sc_in sc_lv 32 signal 22 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_13 sc_in sc_lv 32 signal 23 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_14 sc_in sc_lv 32 signal 24 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_15 sc_in sc_lv 32 signal 25 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_16 sc_in sc_lv 32 signal 26 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_17 sc_in sc_lv 32 signal 27 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_18 sc_in sc_lv 32 signal 28 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_19 sc_in sc_lv 32 signal 29 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_20 sc_in sc_lv 32 signal 30 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_21 sc_in sc_lv 32 signal 31 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_22 sc_in sc_lv 32 signal 32 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_23 sc_in sc_lv 32 signal 33 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_24 sc_in sc_lv 32 signal 34 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_25 sc_in sc_lv 32 signal 35 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_26 sc_in sc_lv 32 signal 36 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_27 sc_in sc_lv 32 signal 37 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_28 sc_in sc_lv 32 signal 38 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_29 sc_in sc_lv 32 signal 39 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_30 sc_in sc_lv 32 signal 40 } 
	{ p_ZZ9cnn_accelE11fc1_b_local_31 sc_in sc_lv 32 signal 41 } 
	{ grp_fu_9558_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_9558_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9558_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9570_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9570_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9562_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_9562_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9562_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9586_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9586_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9586_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9586_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9582_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9582_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9582_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_9582_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_9582_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fc1_w_local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local", "role": "address0" }} , 
 	{ "name": "fc1_w_local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local", "role": "q0" }} , 
 	{ "name": "fc1_w_local_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_35", "role": "address0" }} , 
 	{ "name": "fc1_w_local_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_35", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_35", "role": "q0" }} , 
 	{ "name": "fc1_w_local_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_36", "role": "address0" }} , 
 	{ "name": "fc1_w_local_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_36", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_36", "role": "q0" }} , 
 	{ "name": "fc1_w_local_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_37", "role": "address0" }} , 
 	{ "name": "fc1_w_local_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_37", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_37", "role": "q0" }} , 
 	{ "name": "fc1_w_local_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_38", "role": "address0" }} , 
 	{ "name": "fc1_w_local_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_38", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_38", "role": "q0" }} , 
 	{ "name": "fc1_w_local_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_39", "role": "address0" }} , 
 	{ "name": "fc1_w_local_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_39", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_39", "role": "q0" }} , 
 	{ "name": "fc1_w_local_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_40", "role": "address0" }} , 
 	{ "name": "fc1_w_local_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_40", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_40", "role": "q0" }} , 
 	{ "name": "fc1_w_local_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "fc1_w_local_41", "role": "address0" }} , 
 	{ "name": "fc1_w_local_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_w_local_41", "role": "ce0" }} , 
 	{ "name": "fc1_w_local_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_w_local_41", "role": "q0" }} , 
 	{ "name": "vec1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "vec1", "role": "address0" }} , 
 	{ "name": "vec1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec1", "role": "ce0" }} , 
 	{ "name": "vec1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec1", "role": "q0" }} , 
 	{ "name": "vec2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec2", "role": "address0" }} , 
 	{ "name": "vec2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec2", "role": "ce0" }} , 
 	{ "name": "vec2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec2", "role": "we0" }} , 
 	{ "name": "vec2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec2", "role": "d0" }} , 
 	{ "name": "fc1_b_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local", "role": "default" }} , 
 	{ "name": "fc1_b_local_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_42", "role": "default" }} , 
 	{ "name": "fc1_b_local_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_43", "role": "default" }} , 
 	{ "name": "fc1_b_local_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_44", "role": "default" }} , 
 	{ "name": "fc1_b_local_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_45", "role": "default" }} , 
 	{ "name": "fc1_b_local_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_46", "role": "default" }} , 
 	{ "name": "fc1_b_local_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_47", "role": "default" }} , 
 	{ "name": "fc1_b_local_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_48", "role": "default" }} , 
 	{ "name": "fc1_b_local_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_49", "role": "default" }} , 
 	{ "name": "fc1_b_local_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_b_local_50", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_10", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_11", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_12", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_13", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_14", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_15", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_16", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_17", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_18", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_19", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_20", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_21", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_22", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_23", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_24", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_25", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_26", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_27", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_28", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_29", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_30", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc1_b_local_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc1_b_local_31", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_9558_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9558_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9558_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9558_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9570_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9570_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9570_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_9562_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9562_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9562_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9562_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9586_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9586_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9586_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9586_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9586_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9586_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9586_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9586_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9582_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9582_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_9582_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9582_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9582_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9582_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	fc1 {
		fc1_w_local {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_35 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_36 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_37 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_38 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_39 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_40 {Type I LastRead 2 FirstWrite -1}
		fc1_w_local_41 {Type I LastRead 2 FirstWrite -1}
		vec1 {Type I LastRead 2 FirstWrite -1}
		vec2 {Type O LastRead -1 FirstWrite 64}
		fc1_b_local {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_42 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_43 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_44 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_45 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_46 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_47 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_48 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_49 {Type I LastRead 0 FirstWrite -1}
		fc1_b_local_50 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_15 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_16 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_17 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_18 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_20 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_21 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_22 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_23 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_24 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_25 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_26 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_27 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_28 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_29 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_30 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc1_b_local_31 {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	generic_tanh_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25481217", "Max" : "25481217"}
	, {"Name" : "Interval", "Min" : "25481217", "Max" : "25481217"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fc1_w_local { ap_memory {  { fc1_w_local_address0 mem_address 1 19 }  { fc1_w_local_ce0 mem_ce 1 1 }  { fc1_w_local_q0 mem_dout 0 32 } } }
	fc1_w_local_35 { ap_memory {  { fc1_w_local_35_address0 mem_address 1 19 }  { fc1_w_local_35_ce0 mem_ce 1 1 }  { fc1_w_local_35_q0 mem_dout 0 32 } } }
	fc1_w_local_36 { ap_memory {  { fc1_w_local_36_address0 mem_address 1 19 }  { fc1_w_local_36_ce0 mem_ce 1 1 }  { fc1_w_local_36_q0 mem_dout 0 32 } } }
	fc1_w_local_37 { ap_memory {  { fc1_w_local_37_address0 mem_address 1 19 }  { fc1_w_local_37_ce0 mem_ce 1 1 }  { fc1_w_local_37_q0 mem_dout 0 32 } } }
	fc1_w_local_38 { ap_memory {  { fc1_w_local_38_address0 mem_address 1 19 }  { fc1_w_local_38_ce0 mem_ce 1 1 }  { fc1_w_local_38_q0 mem_dout 0 32 } } }
	fc1_w_local_39 { ap_memory {  { fc1_w_local_39_address0 mem_address 1 19 }  { fc1_w_local_39_ce0 mem_ce 1 1 }  { fc1_w_local_39_q0 mem_dout 0 32 } } }
	fc1_w_local_40 { ap_memory {  { fc1_w_local_40_address0 mem_address 1 19 }  { fc1_w_local_40_ce0 mem_ce 1 1 }  { fc1_w_local_40_q0 mem_dout 0 32 } } }
	fc1_w_local_41 { ap_memory {  { fc1_w_local_41_address0 mem_address 1 19 }  { fc1_w_local_41_ce0 mem_ce 1 1 }  { fc1_w_local_41_q0 mem_dout 0 32 } } }
	vec1 { ap_memory {  { vec1_address0 mem_address 1 17 }  { vec1_ce0 mem_ce 1 1 }  { vec1_q0 mem_dout 0 32 } } }
	vec2 { ap_memory {  { vec2_address0 mem_address 1 5 }  { vec2_ce0 mem_ce 1 1 }  { vec2_we0 mem_we 1 1 }  { vec2_d0 mem_din 1 32 } } }
	fc1_b_local { ap_none {  { fc1_b_local in_data 0 32 } } }
	fc1_b_local_42 { ap_none {  { fc1_b_local_42 in_data 0 32 } } }
	fc1_b_local_43 { ap_none {  { fc1_b_local_43 in_data 0 32 } } }
	fc1_b_local_44 { ap_none {  { fc1_b_local_44 in_data 0 32 } } }
	fc1_b_local_45 { ap_none {  { fc1_b_local_45 in_data 0 32 } } }
	fc1_b_local_46 { ap_none {  { fc1_b_local_46 in_data 0 32 } } }
	fc1_b_local_47 { ap_none {  { fc1_b_local_47 in_data 0 32 } } }
	fc1_b_local_48 { ap_none {  { fc1_b_local_48 in_data 0 32 } } }
	fc1_b_local_49 { ap_none {  { fc1_b_local_49 in_data 0 32 } } }
	fc1_b_local_50 { ap_none {  { fc1_b_local_50 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_10 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_10 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_11 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_11 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_12 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_12 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_13 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_13 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_14 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_14 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_15 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_15 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_16 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_16 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_17 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_17 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_18 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_18 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_19 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_19 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_20 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_20 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_21 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_21 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_22 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_22 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_23 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_23 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_24 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_24 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_25 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_25 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_26 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_26 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_27 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_27 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_28 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_28 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_29 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_29 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_30 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_30 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc1_b_local_31 { ap_none {  { p_ZZ9cnn_accelE11fc1_b_local_31 in_data 0 32 } } }
}
