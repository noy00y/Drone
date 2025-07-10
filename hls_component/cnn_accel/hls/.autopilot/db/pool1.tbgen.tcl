set moduleName pool1
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
set C_modelName {pool1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat1_p { MEM_WIDTH 32 MEM_SIZE 151368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_63 { MEM_WIDTH 32 MEM_SIZE 151368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_64 { MEM_WIDTH 32 MEM_SIZE 151368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_p_65 { MEM_WIDTH 32 MEM_SIZE 151368 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_60 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_61 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat1_62 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ feat1_p float 32 regular {array 37842 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_63 float 32 regular {array 37842 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_64 float 32 regular {array 37842 { 0 3 } 0 1 } {global 1}  }
	{ feat1_p_65 float 32 regular {array 37842 { 0 3 } 0 1 } {global 1}  }
	{ feat1 float 32 regular {array 151368 { 1 1 } 1 1 } {global 0}  }
	{ feat1_60 float 32 regular {array 151368 { 1 1 } 1 1 } {global 0}  }
	{ feat1_61 float 32 regular {array 151368 { 1 1 } 1 1 } {global 0}  }
	{ feat1_62 float 32 regular {array 151368 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "feat1_p", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_64", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_p_65", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_60", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_61", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat1_62", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ feat1_p_address0 sc_out sc_lv 16 signal 0 } 
	{ feat1_p_ce0 sc_out sc_logic 1 signal 0 } 
	{ feat1_p_we0 sc_out sc_logic 1 signal 0 } 
	{ feat1_p_d0 sc_out sc_lv 32 signal 0 } 
	{ feat1_p_63_address0 sc_out sc_lv 16 signal 1 } 
	{ feat1_p_63_ce0 sc_out sc_logic 1 signal 1 } 
	{ feat1_p_63_we0 sc_out sc_logic 1 signal 1 } 
	{ feat1_p_63_d0 sc_out sc_lv 32 signal 1 } 
	{ feat1_p_64_address0 sc_out sc_lv 16 signal 2 } 
	{ feat1_p_64_ce0 sc_out sc_logic 1 signal 2 } 
	{ feat1_p_64_we0 sc_out sc_logic 1 signal 2 } 
	{ feat1_p_64_d0 sc_out sc_lv 32 signal 2 } 
	{ feat1_p_65_address0 sc_out sc_lv 16 signal 3 } 
	{ feat1_p_65_ce0 sc_out sc_logic 1 signal 3 } 
	{ feat1_p_65_we0 sc_out sc_logic 1 signal 3 } 
	{ feat1_p_65_d0 sc_out sc_lv 32 signal 3 } 
	{ feat1_address0 sc_out sc_lv 18 signal 4 } 
	{ feat1_ce0 sc_out sc_logic 1 signal 4 } 
	{ feat1_q0 sc_in sc_lv 32 signal 4 } 
	{ feat1_address1 sc_out sc_lv 18 signal 4 } 
	{ feat1_ce1 sc_out sc_logic 1 signal 4 } 
	{ feat1_q1 sc_in sc_lv 32 signal 4 } 
	{ feat1_60_address0 sc_out sc_lv 18 signal 5 } 
	{ feat1_60_ce0 sc_out sc_logic 1 signal 5 } 
	{ feat1_60_q0 sc_in sc_lv 32 signal 5 } 
	{ feat1_60_address1 sc_out sc_lv 18 signal 5 } 
	{ feat1_60_ce1 sc_out sc_logic 1 signal 5 } 
	{ feat1_60_q1 sc_in sc_lv 32 signal 5 } 
	{ feat1_61_address0 sc_out sc_lv 18 signal 6 } 
	{ feat1_61_ce0 sc_out sc_logic 1 signal 6 } 
	{ feat1_61_q0 sc_in sc_lv 32 signal 6 } 
	{ feat1_61_address1 sc_out sc_lv 18 signal 6 } 
	{ feat1_61_ce1 sc_out sc_logic 1 signal 6 } 
	{ feat1_61_q1 sc_in sc_lv 32 signal 6 } 
	{ feat1_62_address0 sc_out sc_lv 18 signal 7 } 
	{ feat1_62_ce0 sc_out sc_logic 1 signal 7 } 
	{ feat1_62_q0 sc_in sc_lv 32 signal 7 } 
	{ feat1_62_address1 sc_out sc_lv 18 signal 7 } 
	{ feat1_62_ce1 sc_out sc_logic 1 signal 7 } 
	{ feat1_62_q1 sc_in sc_lv 32 signal 7 } 
	{ grp_fu_9568_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9568_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9568_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_9568_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_9568_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "feat1_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feat1_p", "role": "address0" }} , 
 	{ "name": "feat1_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p", "role": "ce0" }} , 
 	{ "name": "feat1_p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p", "role": "we0" }} , 
 	{ "name": "feat1_p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p", "role": "d0" }} , 
 	{ "name": "feat1_p_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feat1_p_63", "role": "address0" }} , 
 	{ "name": "feat1_p_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_63", "role": "ce0" }} , 
 	{ "name": "feat1_p_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_63", "role": "we0" }} , 
 	{ "name": "feat1_p_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_63", "role": "d0" }} , 
 	{ "name": "feat1_p_64_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feat1_p_64", "role": "address0" }} , 
 	{ "name": "feat1_p_64_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_64", "role": "ce0" }} , 
 	{ "name": "feat1_p_64_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_64", "role": "we0" }} , 
 	{ "name": "feat1_p_64_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_64", "role": "d0" }} , 
 	{ "name": "feat1_p_65_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feat1_p_65", "role": "address0" }} , 
 	{ "name": "feat1_p_65_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_65", "role": "ce0" }} , 
 	{ "name": "feat1_p_65_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_p_65", "role": "we0" }} , 
 	{ "name": "feat1_p_65_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_p_65", "role": "d0" }} , 
 	{ "name": "feat1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1", "role": "address0" }} , 
 	{ "name": "feat1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce0" }} , 
 	{ "name": "feat1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "q0" }} , 
 	{ "name": "feat1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1", "role": "address1" }} , 
 	{ "name": "feat1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce1" }} , 
 	{ "name": "feat1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "q1" }} , 
 	{ "name": "feat1_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_60", "role": "address0" }} , 
 	{ "name": "feat1_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_60", "role": "ce0" }} , 
 	{ "name": "feat1_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_60", "role": "q0" }} , 
 	{ "name": "feat1_60_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_60", "role": "address1" }} , 
 	{ "name": "feat1_60_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_60", "role": "ce1" }} , 
 	{ "name": "feat1_60_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_60", "role": "q1" }} , 
 	{ "name": "feat1_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_61", "role": "address0" }} , 
 	{ "name": "feat1_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_61", "role": "ce0" }} , 
 	{ "name": "feat1_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_61", "role": "q0" }} , 
 	{ "name": "feat1_61_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_61", "role": "address1" }} , 
 	{ "name": "feat1_61_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_61", "role": "ce1" }} , 
 	{ "name": "feat1_61_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_61", "role": "q1" }} , 
 	{ "name": "feat1_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_62", "role": "address0" }} , 
 	{ "name": "feat1_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_62", "role": "ce0" }} , 
 	{ "name": "feat1_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_62", "role": "q0" }} , 
 	{ "name": "feat1_62_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_62", "role": "address1" }} , 
 	{ "name": "feat1_62_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_62", "role": "ce1" }} , 
 	{ "name": "feat1_62_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_62", "role": "q1" }} , 
 	{ "name": "grp_fu_9568_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_9568_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	pool1 {
		feat1_p {Type O LastRead -1 FirstWrite 12}
		feat1_p_63 {Type O LastRead -1 FirstWrite 12}
		feat1_p_64 {Type O LastRead -1 FirstWrite 12}
		feat1_p_65 {Type O LastRead -1 FirstWrite 12}
		feat1 {Type I LastRead 4 FirstWrite -1}
		feat1_60 {Type I LastRead 4 FirstWrite -1}
		feat1_61 {Type I LastRead 4 FirstWrite -1}
		feat1_62 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "454115", "Max" : "454115"}
	, {"Name" : "Interval", "Min" : "454115", "Max" : "454115"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feat1_p { ap_memory {  { feat1_p_address0 mem_address 1 16 }  { feat1_p_ce0 mem_ce 1 1 }  { feat1_p_we0 mem_we 1 1 }  { feat1_p_d0 mem_din 1 32 } } }
	feat1_p_63 { ap_memory {  { feat1_p_63_address0 mem_address 1 16 }  { feat1_p_63_ce0 mem_ce 1 1 }  { feat1_p_63_we0 mem_we 1 1 }  { feat1_p_63_d0 mem_din 1 32 } } }
	feat1_p_64 { ap_memory {  { feat1_p_64_address0 mem_address 1 16 }  { feat1_p_64_ce0 mem_ce 1 1 }  { feat1_p_64_we0 mem_we 1 1 }  { feat1_p_64_d0 mem_din 1 32 } } }
	feat1_p_65 { ap_memory {  { feat1_p_65_address0 mem_address 1 16 }  { feat1_p_65_ce0 mem_ce 1 1 }  { feat1_p_65_we0 mem_we 1 1 }  { feat1_p_65_d0 mem_din 1 32 } } }
	feat1 { ap_memory {  { feat1_address0 mem_address 1 18 }  { feat1_ce0 mem_ce 1 1 }  { feat1_q0 mem_dout 0 32 }  { feat1_address1 MemPortADDR2 1 18 }  { feat1_ce1 MemPortCE2 1 1 }  { feat1_q1 MemPortDOUT2 0 32 } } }
	feat1_60 { ap_memory {  { feat1_60_address0 mem_address 1 18 }  { feat1_60_ce0 mem_ce 1 1 }  { feat1_60_q0 mem_dout 0 32 }  { feat1_60_address1 MemPortADDR2 1 18 }  { feat1_60_ce1 MemPortCE2 1 1 }  { feat1_60_q1 MemPortDOUT2 0 32 } } }
	feat1_61 { ap_memory {  { feat1_61_address0 mem_address 1 18 }  { feat1_61_ce0 mem_ce 1 1 }  { feat1_61_q0 mem_dout 0 32 }  { feat1_61_address1 MemPortADDR2 1 18 }  { feat1_61_ce1 MemPortCE2 1 1 }  { feat1_61_q1 MemPortDOUT2 0 32 } } }
	feat1_62 { ap_memory {  { feat1_62_address0 mem_address 1 18 }  { feat1_62_ce0 mem_ce 1 1 }  { feat1_62_q0 mem_dout 0 32 }  { feat1_62_address1 MemPortADDR2 1 18 }  { feat1_62_ce1 MemPortCE2 1 1 }  { feat1_62_q1 MemPortDOUT2 0 32 } } }
}
