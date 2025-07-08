set moduleName flatten
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
set cdfgNum 14
set C_modelName {flatten}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat2_p { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_p_11 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_p_12 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_p_13 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict vec1 { MEM_WIDTH 32 MEM_SIZE 289536 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ feat2_p float 32 regular {array 18096 { 1 3 } 1 1 }  }
	{ feat2_p_11 float 32 regular {array 18096 { 1 3 } 1 1 }  }
	{ feat2_p_12 float 32 regular {array 18096 { 1 3 } 1 1 }  }
	{ feat2_p_13 float 32 regular {array 18096 { 1 3 } 1 1 }  }
	{ vec1 float 32 regular {array 72384 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "feat2_p", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feat2_p_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feat2_p_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feat2_p_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vec1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ feat2_p_address0 sc_out sc_lv 15 signal 0 } 
	{ feat2_p_ce0 sc_out sc_logic 1 signal 0 } 
	{ feat2_p_q0 sc_in sc_lv 32 signal 0 } 
	{ feat2_p_11_address0 sc_out sc_lv 15 signal 1 } 
	{ feat2_p_11_ce0 sc_out sc_logic 1 signal 1 } 
	{ feat2_p_11_q0 sc_in sc_lv 32 signal 1 } 
	{ feat2_p_12_address0 sc_out sc_lv 15 signal 2 } 
	{ feat2_p_12_ce0 sc_out sc_logic 1 signal 2 } 
	{ feat2_p_12_q0 sc_in sc_lv 32 signal 2 } 
	{ feat2_p_13_address0 sc_out sc_lv 15 signal 3 } 
	{ feat2_p_13_ce0 sc_out sc_logic 1 signal 3 } 
	{ feat2_p_13_q0 sc_in sc_lv 32 signal 3 } 
	{ vec1_address0 sc_out sc_lv 17 signal 4 } 
	{ vec1_ce0 sc_out sc_logic 1 signal 4 } 
	{ vec1_we0 sc_out sc_logic 1 signal 4 } 
	{ vec1_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "feat2_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p", "role": "address0" }} , 
 	{ "name": "feat2_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p", "role": "ce0" }} , 
 	{ "name": "feat2_p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p", "role": "q0" }} , 
 	{ "name": "feat2_p_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_11", "role": "address0" }} , 
 	{ "name": "feat2_p_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_11", "role": "ce0" }} , 
 	{ "name": "feat2_p_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_11", "role": "q0" }} , 
 	{ "name": "feat2_p_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_12", "role": "address0" }} , 
 	{ "name": "feat2_p_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_12", "role": "ce0" }} , 
 	{ "name": "feat2_p_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_12", "role": "q0" }} , 
 	{ "name": "feat2_p_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_13", "role": "address0" }} , 
 	{ "name": "feat2_p_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_13", "role": "ce0" }} , 
 	{ "name": "feat2_p_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_13", "role": "q0" }} , 
 	{ "name": "vec1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "vec1", "role": "address0" }} , 
 	{ "name": "vec1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec1", "role": "ce0" }} , 
 	{ "name": "vec1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec1", "role": "we0" }} , 
 	{ "name": "vec1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec1", "role": "d0" }}  ]}

set ArgLastReadFirstWriteLatency {
	flatten {
		feat2_p {Type I LastRead 3 FirstWrite -1}
		feat2_p_11 {Type I LastRead 3 FirstWrite -1}
		feat2_p_12 {Type I LastRead 3 FirstWrite -1}
		feat2_p_13 {Type I LastRead 3 FirstWrite -1}
		vec1 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "217155", "Max" : "217155"}
	, {"Name" : "Interval", "Min" : "217155", "Max" : "217155"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feat2_p { ap_memory {  { feat2_p_address0 mem_address 1 15 }  { feat2_p_ce0 mem_ce 1 1 }  { feat2_p_q0 mem_dout 0 32 } } }
	feat2_p_11 { ap_memory {  { feat2_p_11_address0 mem_address 1 15 }  { feat2_p_11_ce0 mem_ce 1 1 }  { feat2_p_11_q0 mem_dout 0 32 } } }
	feat2_p_12 { ap_memory {  { feat2_p_12_address0 mem_address 1 15 }  { feat2_p_12_ce0 mem_ce 1 1 }  { feat2_p_12_q0 mem_dout 0 32 } } }
	feat2_p_13 { ap_memory {  { feat2_p_13_address0 mem_address 1 15 }  { feat2_p_13_ce0 mem_ce 1 1 }  { feat2_p_13_q0 mem_dout 0 32 } } }
	vec1 { ap_memory {  { vec1_address0 mem_address 1 17 }  { vec1_ce0 mem_ce 1 1 }  { vec1_we0 mem_we 1 1 }  { vec1_d0 mem_din 1 32 } } }
}
