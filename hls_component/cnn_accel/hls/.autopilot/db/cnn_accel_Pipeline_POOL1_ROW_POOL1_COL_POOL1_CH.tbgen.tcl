set moduleName cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH
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
set cdfgNum 13
set C_modelName {cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat1_p { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_3 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_4 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_5 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_6 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_7 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_8 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_9 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_p_10 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_11 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_12 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_13 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_14 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_15 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_16 { MEM_WIDTH 32 MEM_SIZE 75684 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ feat1_p float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_3 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_4 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_5 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_6 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_7 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_8 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_9 float 32 regular {array 75684 { 1 1 } 1 1 } {global 0}  }
	{ feat1_p_10 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_11 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_12 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_13 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_14 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_15 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_16 float 32 regular {array 18921 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "feat1_p", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 96
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ feat1_p_address0 sc_out sc_lv 15 signal 0 } 
	{ feat1_p_ce0 sc_out sc_logic 1 signal 0 } 
	{ feat1_p_we0 sc_out sc_logic 1 signal 0 } 
	{ feat1_p_d0 sc_out sc_lv 32 signal 0 } 
	{ feat1_address0 sc_out sc_lv 17 signal 1 } 
	{ feat1_ce0 sc_out sc_logic 1 signal 1 } 
	{ feat1_q0 sc_in sc_lv 32 signal 1 } 
	{ feat1_address1 sc_out sc_lv 17 signal 1 } 
	{ feat1_ce1 sc_out sc_logic 1 signal 1 } 
	{ feat1_q1 sc_in sc_lv 32 signal 1 } 
	{ feat1_3_address0 sc_out sc_lv 17 signal 2 } 
	{ feat1_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ feat1_3_q0 sc_in sc_lv 32 signal 2 } 
	{ feat1_3_address1 sc_out sc_lv 17 signal 2 } 
	{ feat1_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ feat1_3_q1 sc_in sc_lv 32 signal 2 } 
	{ feat1_4_address0 sc_out sc_lv 17 signal 3 } 
	{ feat1_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ feat1_4_q0 sc_in sc_lv 32 signal 3 } 
	{ feat1_4_address1 sc_out sc_lv 17 signal 3 } 
	{ feat1_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ feat1_4_q1 sc_in sc_lv 32 signal 3 } 
	{ feat1_5_address0 sc_out sc_lv 17 signal 4 } 
	{ feat1_5_ce0 sc_out sc_logic 1 signal 4 } 
	{ feat1_5_q0 sc_in sc_lv 32 signal 4 } 
	{ feat1_5_address1 sc_out sc_lv 17 signal 4 } 
	{ feat1_5_ce1 sc_out sc_logic 1 signal 4 } 
	{ feat1_5_q1 sc_in sc_lv 32 signal 4 } 
	{ feat1_6_address0 sc_out sc_lv 17 signal 5 } 
	{ feat1_6_ce0 sc_out sc_logic 1 signal 5 } 
	{ feat1_6_q0 sc_in sc_lv 32 signal 5 } 
	{ feat1_6_address1 sc_out sc_lv 17 signal 5 } 
	{ feat1_6_ce1 sc_out sc_logic 1 signal 5 } 
	{ feat1_6_q1 sc_in sc_lv 32 signal 5 } 
	{ feat1_7_address0 sc_out sc_lv 17 signal 6 } 
	{ feat1_7_ce0 sc_out sc_logic 1 signal 6 } 
	{ feat1_7_q0 sc_in sc_lv 32 signal 6 } 
	{ feat1_7_address1 sc_out sc_lv 17 signal 6 } 
	{ feat1_7_ce1 sc_out sc_logic 1 signal 6 } 
	{ feat1_7_q1 sc_in sc_lv 32 signal 6 } 
	{ feat1_8_address0 sc_out sc_lv 17 signal 7 } 
	{ feat1_8_ce0 sc_out sc_logic 1 signal 7 } 
	{ feat1_8_q0 sc_in sc_lv 32 signal 7 } 
	{ feat1_8_address1 sc_out sc_lv 17 signal 7 } 
	{ feat1_8_ce1 sc_out sc_logic 1 signal 7 } 
	{ feat1_8_q1 sc_in sc_lv 32 signal 7 } 
	{ feat1_9_address0 sc_out sc_lv 17 signal 8 } 
	{ feat1_9_ce0 sc_out sc_logic 1 signal 8 } 
	{ feat1_9_q0 sc_in sc_lv 32 signal 8 } 
	{ feat1_9_address1 sc_out sc_lv 17 signal 8 } 
	{ feat1_9_ce1 sc_out sc_logic 1 signal 8 } 
	{ feat1_9_q1 sc_in sc_lv 32 signal 8 } 
	{ feat1_p_10_address0 sc_out sc_lv 15 signal 9 } 
	{ feat1_p_10_ce0 sc_out sc_logic 1 signal 9 } 
	{ feat1_p_10_we0 sc_out sc_logic 1 signal 9 } 
	{ feat1_p_10_d0 sc_out sc_lv 32 signal 9 } 
	{ feat1_p_11_address0 sc_out sc_lv 15 signal 10 } 
	{ feat1_p_11_ce0 sc_out sc_logic 1 signal 10 } 
	{ feat1_p_11_we0 sc_out sc_logic 1 signal 10 } 
	{ feat1_p_11_d0 sc_out sc_lv 32 signal 10 } 
	{ feat1_p_12_address0 sc_out sc_lv 15 signal 11 } 
	{ feat1_p_12_ce0 sc_out sc_logic 1 signal 11 } 
	{ feat1_p_12_we0 sc_out sc_logic 1 signal 11 } 
	{ feat1_p_12_d0 sc_out sc_lv 32 signal 11 } 
	{ feat1_p_13_address0 sc_out sc_lv 15 signal 12 } 
	{ feat1_p_13_ce0 sc_out sc_logic 1 signal 12 } 
	{ feat1_p_13_we0 sc_out sc_logic 1 signal 12 } 
	{ feat1_p_13_d0 sc_out sc_lv 32 signal 12 } 
	{ feat1_p_14_address0 sc_out sc_lv 15 signal 13 } 
	{ feat1_p_14_ce0 sc_out sc_logic 1 signal 13 } 
	{ feat1_p_14_we0 sc_out sc_logic 1 signal 13 } 
	{ feat1_p_14_d0 sc_out sc_lv 32 signal 13 } 
	{ feat1_p_15_address0 sc_out sc_lv 15 signal 14 } 
	{ feat1_p_15_ce0 sc_out sc_logic 1 signal 14 } 
	{ feat1_p_15_we0 sc_out sc_logic 1 signal 14 } 
	{ feat1_p_15_d0 sc_out sc_lv 32 signal 14 } 
	{ feat1_p_16_address0 sc_out sc_lv 15 signal 15 } 
	{ feat1_p_16_ce0 sc_out sc_logic 1 signal 15 } 
	{ feat1_p_16_we0 sc_out sc_logic 1 signal 15 } 
	{ feat1_p_16_d0 sc_out sc_lv 32 signal 15 } 
	{ grp_fu_1278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1278_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1278_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1278_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2863_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2863_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2863_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2863_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2863_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "feat1_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p", "role": "address0" }} , 
 	{ "name": "feat1_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p", "role": "ce0" }} , 
 	{ "name": "feat1_p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p", "role": "we0" }} , 
 	{ "name": "feat1_p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p", "role": "d0" }} , 
 	{ "name": "feat1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1", "role": "address0" }} , 
 	{ "name": "feat1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce0" }} , 
 	{ "name": "feat1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "q0" }} , 
 	{ "name": "feat1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1", "role": "address1" }} , 
 	{ "name": "feat1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce1" }} , 
 	{ "name": "feat1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "q1" }} , 
 	{ "name": "feat1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_3", "role": "address0" }} , 
 	{ "name": "feat1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "ce0" }} , 
 	{ "name": "feat1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_3", "role": "q0" }} , 
 	{ "name": "feat1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_3", "role": "address1" }} , 
 	{ "name": "feat1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "ce1" }} , 
 	{ "name": "feat1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_3", "role": "q1" }} , 
 	{ "name": "feat1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_4", "role": "address0" }} , 
 	{ "name": "feat1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "ce0" }} , 
 	{ "name": "feat1_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_4", "role": "q0" }} , 
 	{ "name": "feat1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_4", "role": "address1" }} , 
 	{ "name": "feat1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "ce1" }} , 
 	{ "name": "feat1_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_4", "role": "q1" }} , 
 	{ "name": "feat1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_5", "role": "address0" }} , 
 	{ "name": "feat1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_5", "role": "ce0" }} , 
 	{ "name": "feat1_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_5", "role": "q0" }} , 
 	{ "name": "feat1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_5", "role": "address1" }} , 
 	{ "name": "feat1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_5", "role": "ce1" }} , 
 	{ "name": "feat1_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_5", "role": "q1" }} , 
 	{ "name": "feat1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_6", "role": "address0" }} , 
 	{ "name": "feat1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_6", "role": "ce0" }} , 
 	{ "name": "feat1_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_6", "role": "q0" }} , 
 	{ "name": "feat1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_6", "role": "address1" }} , 
 	{ "name": "feat1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_6", "role": "ce1" }} , 
 	{ "name": "feat1_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_6", "role": "q1" }} , 
 	{ "name": "feat1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_7", "role": "address0" }} , 
 	{ "name": "feat1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_7", "role": "ce0" }} , 
 	{ "name": "feat1_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_7", "role": "q0" }} , 
 	{ "name": "feat1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_7", "role": "address1" }} , 
 	{ "name": "feat1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_7", "role": "ce1" }} , 
 	{ "name": "feat1_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_7", "role": "q1" }} , 
 	{ "name": "feat1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_8", "role": "address0" }} , 
 	{ "name": "feat1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_8", "role": "ce0" }} , 
 	{ "name": "feat1_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_8", "role": "q0" }} , 
 	{ "name": "feat1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_8", "role": "address1" }} , 
 	{ "name": "feat1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_8", "role": "ce1" }} , 
 	{ "name": "feat1_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_8", "role": "q1" }} , 
 	{ "name": "feat1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_9", "role": "address0" }} , 
 	{ "name": "feat1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_9", "role": "ce0" }} , 
 	{ "name": "feat1_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_9", "role": "q0" }} , 
 	{ "name": "feat1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_9", "role": "address1" }} , 
 	{ "name": "feat1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_9", "role": "ce1" }} , 
 	{ "name": "feat1_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_9", "role": "q1" }} , 
 	{ "name": "feat1_p_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_10", "role": "address0" }} , 
 	{ "name": "feat1_p_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_10", "role": "ce0" }} , 
 	{ "name": "feat1_p_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_10", "role": "we0" }} , 
 	{ "name": "feat1_p_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_10", "role": "d0" }} , 
 	{ "name": "feat1_p_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_11", "role": "address0" }} , 
 	{ "name": "feat1_p_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_11", "role": "ce0" }} , 
 	{ "name": "feat1_p_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_11", "role": "we0" }} , 
 	{ "name": "feat1_p_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_11", "role": "d0" }} , 
 	{ "name": "feat1_p_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_12", "role": "address0" }} , 
 	{ "name": "feat1_p_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_12", "role": "ce0" }} , 
 	{ "name": "feat1_p_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_12", "role": "we0" }} , 
 	{ "name": "feat1_p_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_12", "role": "d0" }} , 
 	{ "name": "feat1_p_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_13", "role": "address0" }} , 
 	{ "name": "feat1_p_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_13", "role": "ce0" }} , 
 	{ "name": "feat1_p_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_13", "role": "we0" }} , 
 	{ "name": "feat1_p_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_13", "role": "d0" }} , 
 	{ "name": "feat1_p_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_14", "role": "address0" }} , 
 	{ "name": "feat1_p_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_14", "role": "ce0" }} , 
 	{ "name": "feat1_p_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_14", "role": "we0" }} , 
 	{ "name": "feat1_p_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_14", "role": "d0" }} , 
 	{ "name": "feat1_p_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_15", "role": "address0" }} , 
 	{ "name": "feat1_p_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_15", "role": "ce0" }} , 
 	{ "name": "feat1_p_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_15", "role": "we0" }} , 
 	{ "name": "feat1_p_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_15", "role": "d0" }} , 
 	{ "name": "feat1_p_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat1_p_16", "role": "address0" }} , 
 	{ "name": "feat1_p_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_16", "role": "ce0" }} , 
 	{ "name": "feat1_p_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_16", "role": "we0" }} , 
 	{ "name": "feat1_p_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_16", "role": "d0" }} , 
 	{ "name": "grp_fu_1278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1278_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1278_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2863_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2863_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2863_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2863_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2863_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2863_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accel_Pipeline_POOL1_ROW_POOL1_COL_POOL1_CH {
		feat1_p {Type O LastRead -1 FirstWrite 5}
		feat1 {Type I LastRead 3 FirstWrite -1}
		feat1_3 {Type I LastRead 3 FirstWrite -1}
		feat1_4 {Type I LastRead 3 FirstWrite -1}
		feat1_5 {Type I LastRead 3 FirstWrite -1}
		feat1_6 {Type I LastRead 3 FirstWrite -1}
		feat1_7 {Type I LastRead 3 FirstWrite -1}
		feat1_8 {Type I LastRead 3 FirstWrite -1}
		feat1_9 {Type I LastRead 3 FirstWrite -1}
		feat1_p_10 {Type O LastRead -1 FirstWrite 5}
		feat1_p_11 {Type O LastRead -1 FirstWrite 5}
		feat1_p_12 {Type O LastRead -1 FirstWrite 5}
		feat1_p_13 {Type O LastRead -1 FirstWrite 5}
		feat1_p_14 {Type O LastRead -1 FirstWrite 5}
		feat1_p_15 {Type O LastRead -1 FirstWrite 5}
		feat1_p_16 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "302740", "Max" : "302740"}
	, {"Name" : "Interval", "Min" : "302740", "Max" : "302740"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feat1_p { ap_memory {  { feat1_p_address0 mem_address 1 15 }  { feat1_p_ce0 mem_ce 1 1 }  { feat1_p_we0 mem_we 1 1 }  { feat1_p_d0 mem_din 1 32 } } }
	feat1 { ap_memory {  { feat1_address0 mem_address 1 17 }  { feat1_ce0 mem_ce 1 1 }  { feat1_q0 mem_dout 0 32 }  { feat1_address1 MemPortADDR2 1 17 }  { feat1_ce1 MemPortCE2 1 1 }  { feat1_q1 MemPortDOUT2 0 32 } } }
	feat1_3 { ap_memory {  { feat1_3_address0 mem_address 1 17 }  { feat1_3_ce0 mem_ce 1 1 }  { feat1_3_q0 mem_dout 0 32 }  { feat1_3_address1 MemPortADDR2 1 17 }  { feat1_3_ce1 MemPortCE2 1 1 }  { feat1_3_q1 MemPortDOUT2 0 32 } } }
	feat1_4 { ap_memory {  { feat1_4_address0 mem_address 1 17 }  { feat1_4_ce0 mem_ce 1 1 }  { feat1_4_q0 mem_dout 0 32 }  { feat1_4_address1 MemPortADDR2 1 17 }  { feat1_4_ce1 MemPortCE2 1 1 }  { feat1_4_q1 MemPortDOUT2 0 32 } } }
	feat1_5 { ap_memory {  { feat1_5_address0 mem_address 1 17 }  { feat1_5_ce0 mem_ce 1 1 }  { feat1_5_q0 mem_dout 0 32 }  { feat1_5_address1 MemPortADDR2 1 17 }  { feat1_5_ce1 MemPortCE2 1 1 }  { feat1_5_q1 MemPortDOUT2 0 32 } } }
	feat1_6 { ap_memory {  { feat1_6_address0 mem_address 1 17 }  { feat1_6_ce0 mem_ce 1 1 }  { feat1_6_q0 mem_dout 0 32 }  { feat1_6_address1 MemPortADDR2 1 17 }  { feat1_6_ce1 MemPortCE2 1 1 }  { feat1_6_q1 MemPortDOUT2 0 32 } } }
	feat1_7 { ap_memory {  { feat1_7_address0 mem_address 1 17 }  { feat1_7_ce0 mem_ce 1 1 }  { feat1_7_q0 mem_dout 0 32 }  { feat1_7_address1 MemPortADDR2 1 17 }  { feat1_7_ce1 MemPortCE2 1 1 }  { feat1_7_q1 MemPortDOUT2 0 32 } } }
	feat1_8 { ap_memory {  { feat1_8_address0 mem_address 1 17 }  { feat1_8_ce0 mem_ce 1 1 }  { feat1_8_q0 mem_dout 0 32 }  { feat1_8_address1 MemPortADDR2 1 17 }  { feat1_8_ce1 MemPortCE2 1 1 }  { feat1_8_q1 MemPortDOUT2 0 32 } } }
	feat1_9 { ap_memory {  { feat1_9_address0 mem_address 1 17 }  { feat1_9_ce0 mem_ce 1 1 }  { feat1_9_q0 mem_dout 0 32 }  { feat1_9_address1 MemPortADDR2 1 17 }  { feat1_9_ce1 MemPortCE2 1 1 }  { feat1_9_q1 MemPortDOUT2 0 32 } } }
	feat1_p_10 { ap_memory {  { feat1_p_10_address0 mem_address 1 15 }  { feat1_p_10_ce0 mem_ce 1 1 }  { feat1_p_10_we0 mem_we 1 1 }  { feat1_p_10_d0 mem_din 1 32 } } }
	feat1_p_11 { ap_memory {  { feat1_p_11_address0 mem_address 1 15 }  { feat1_p_11_ce0 mem_ce 1 1 }  { feat1_p_11_we0 mem_we 1 1 }  { feat1_p_11_d0 mem_din 1 32 } } }
	feat1_p_12 { ap_memory {  { feat1_p_12_address0 mem_address 1 15 }  { feat1_p_12_ce0 mem_ce 1 1 }  { feat1_p_12_we0 mem_we 1 1 }  { feat1_p_12_d0 mem_din 1 32 } } }
	feat1_p_13 { ap_memory {  { feat1_p_13_address0 mem_address 1 15 }  { feat1_p_13_ce0 mem_ce 1 1 }  { feat1_p_13_we0 mem_we 1 1 }  { feat1_p_13_d0 mem_din 1 32 } } }
	feat1_p_14 { ap_memory {  { feat1_p_14_address0 mem_address 1 15 }  { feat1_p_14_ce0 mem_ce 1 1 }  { feat1_p_14_we0 mem_we 1 1 }  { feat1_p_14_d0 mem_din 1 32 } } }
	feat1_p_15 { ap_memory {  { feat1_p_15_address0 mem_address 1 15 }  { feat1_p_15_ce0 mem_ce 1 1 }  { feat1_p_15_we0 mem_we 1 1 }  { feat1_p_15_d0 mem_din 1 32 } } }
	feat1_p_16 { ap_memory {  { feat1_p_16_address0 mem_address 1 15 }  { feat1_p_16_ce0 mem_ce 1 1 }  { feat1_p_16_we0 mem_we 1 1 }  { feat1_p_16_d0 mem_din 1 32 } } }
}
