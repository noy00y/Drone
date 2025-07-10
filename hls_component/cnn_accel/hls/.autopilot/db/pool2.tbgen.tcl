set moduleName pool2
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
set C_modelName {pool2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat2_p { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat2_p_69 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat2_p_70 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat2_p_71 { MEM_WIDTH 32 MEM_SIZE 72384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat2 { MEM_WIDTH 32 MEM_SIZE 293904 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_66 { MEM_WIDTH 32 MEM_SIZE 293904 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_67 { MEM_WIDTH 32 MEM_SIZE 293904 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict feat2_68 { MEM_WIDTH 32 MEM_SIZE 293904 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ feat2_p float 32 regular {array 18096 { 0 3 } 0 1 } {global 1}  }
	{ feat2_p_69 float 32 regular {array 18096 { 0 3 } 0 1 } {global 1}  }
	{ feat2_p_70 float 32 regular {array 18096 { 0 3 } 0 1 } {global 1}  }
	{ feat2_p_71 float 32 regular {array 18096 { 0 3 } 0 1 } {global 1}  }
	{ feat2 float 32 regular {array 73476 { 1 1 } 1 1 } {global 0}  }
	{ feat2_66 float 32 regular {array 73476 { 1 1 } 1 1 } {global 0}  }
	{ feat2_67 float 32 regular {array 73476 { 1 1 } 1 1 } {global 0}  }
	{ feat2_68 float 32 regular {array 73476 { 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "feat2_p", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat2_p_69", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat2_p_70", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat2_p_71", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat2_66", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat2_67", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "feat2_68", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ feat2_p_address0 sc_out sc_lv 15 signal 0 } 
	{ feat2_p_ce0 sc_out sc_logic 1 signal 0 } 
	{ feat2_p_we0 sc_out sc_logic 1 signal 0 } 
	{ feat2_p_d0 sc_out sc_lv 32 signal 0 } 
	{ feat2_p_69_address0 sc_out sc_lv 15 signal 1 } 
	{ feat2_p_69_ce0 sc_out sc_logic 1 signal 1 } 
	{ feat2_p_69_we0 sc_out sc_logic 1 signal 1 } 
	{ feat2_p_69_d0 sc_out sc_lv 32 signal 1 } 
	{ feat2_p_70_address0 sc_out sc_lv 15 signal 2 } 
	{ feat2_p_70_ce0 sc_out sc_logic 1 signal 2 } 
	{ feat2_p_70_we0 sc_out sc_logic 1 signal 2 } 
	{ feat2_p_70_d0 sc_out sc_lv 32 signal 2 } 
	{ feat2_p_71_address0 sc_out sc_lv 15 signal 3 } 
	{ feat2_p_71_ce0 sc_out sc_logic 1 signal 3 } 
	{ feat2_p_71_we0 sc_out sc_logic 1 signal 3 } 
	{ feat2_p_71_d0 sc_out sc_lv 32 signal 3 } 
	{ feat2_address0 sc_out sc_lv 17 signal 4 } 
	{ feat2_ce0 sc_out sc_logic 1 signal 4 } 
	{ feat2_q0 sc_in sc_lv 32 signal 4 } 
	{ feat2_address1 sc_out sc_lv 17 signal 4 } 
	{ feat2_ce1 sc_out sc_logic 1 signal 4 } 
	{ feat2_q1 sc_in sc_lv 32 signal 4 } 
	{ feat2_66_address0 sc_out sc_lv 17 signal 5 } 
	{ feat2_66_ce0 sc_out sc_logic 1 signal 5 } 
	{ feat2_66_q0 sc_in sc_lv 32 signal 5 } 
	{ feat2_66_address1 sc_out sc_lv 17 signal 5 } 
	{ feat2_66_ce1 sc_out sc_logic 1 signal 5 } 
	{ feat2_66_q1 sc_in sc_lv 32 signal 5 } 
	{ feat2_67_address0 sc_out sc_lv 17 signal 6 } 
	{ feat2_67_ce0 sc_out sc_logic 1 signal 6 } 
	{ feat2_67_q0 sc_in sc_lv 32 signal 6 } 
	{ feat2_67_address1 sc_out sc_lv 17 signal 6 } 
	{ feat2_67_ce1 sc_out sc_logic 1 signal 6 } 
	{ feat2_67_q1 sc_in sc_lv 32 signal 6 } 
	{ feat2_68_address0 sc_out sc_lv 17 signal 7 } 
	{ feat2_68_ce0 sc_out sc_logic 1 signal 7 } 
	{ feat2_68_q0 sc_in sc_lv 32 signal 7 } 
	{ feat2_68_address1 sc_out sc_lv 17 signal 7 } 
	{ feat2_68_ce1 sc_out sc_logic 1 signal 7 } 
	{ feat2_68_q1 sc_in sc_lv 32 signal 7 } 
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
 	{ "name": "feat2_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p", "role": "address0" }} , 
 	{ "name": "feat2_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p", "role": "ce0" }} , 
 	{ "name": "feat2_p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p", "role": "we0" }} , 
 	{ "name": "feat2_p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p", "role": "d0" }} , 
 	{ "name": "feat2_p_69_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_69", "role": "address0" }} , 
 	{ "name": "feat2_p_69_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_69", "role": "ce0" }} , 
 	{ "name": "feat2_p_69_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_69", "role": "we0" }} , 
 	{ "name": "feat2_p_69_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_69", "role": "d0" }} , 
 	{ "name": "feat2_p_70_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_70", "role": "address0" }} , 
 	{ "name": "feat2_p_70_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_70", "role": "ce0" }} , 
 	{ "name": "feat2_p_70_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_70", "role": "we0" }} , 
 	{ "name": "feat2_p_70_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_70", "role": "d0" }} , 
 	{ "name": "feat2_p_71_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "feat2_p_71", "role": "address0" }} , 
 	{ "name": "feat2_p_71_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_71", "role": "ce0" }} , 
 	{ "name": "feat2_p_71_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_p_71", "role": "we0" }} , 
 	{ "name": "feat2_p_71_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_p_71", "role": "d0" }} , 
 	{ "name": "feat2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2", "role": "address0" }} , 
 	{ "name": "feat2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2", "role": "ce0" }} , 
 	{ "name": "feat2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2", "role": "q0" }} , 
 	{ "name": "feat2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2", "role": "address1" }} , 
 	{ "name": "feat2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2", "role": "ce1" }} , 
 	{ "name": "feat2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2", "role": "q1" }} , 
 	{ "name": "feat2_66_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_66", "role": "address0" }} , 
 	{ "name": "feat2_66_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_66", "role": "ce0" }} , 
 	{ "name": "feat2_66_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_66", "role": "q0" }} , 
 	{ "name": "feat2_66_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_66", "role": "address1" }} , 
 	{ "name": "feat2_66_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_66", "role": "ce1" }} , 
 	{ "name": "feat2_66_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_66", "role": "q1" }} , 
 	{ "name": "feat2_67_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_67", "role": "address0" }} , 
 	{ "name": "feat2_67_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_67", "role": "ce0" }} , 
 	{ "name": "feat2_67_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_67", "role": "q0" }} , 
 	{ "name": "feat2_67_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_67", "role": "address1" }} , 
 	{ "name": "feat2_67_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_67", "role": "ce1" }} , 
 	{ "name": "feat2_67_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_67", "role": "q1" }} , 
 	{ "name": "feat2_68_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_68", "role": "address0" }} , 
 	{ "name": "feat2_68_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_68", "role": "ce0" }} , 
 	{ "name": "feat2_68_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_68", "role": "q0" }} , 
 	{ "name": "feat2_68_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat2_68", "role": "address1" }} , 
 	{ "name": "feat2_68_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat2_68", "role": "ce1" }} , 
 	{ "name": "feat2_68_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat2_68", "role": "q1" }} , 
 	{ "name": "grp_fu_9568_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_9568_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	pool2 {
		feat2_p {Type O LastRead -1 FirstWrite 12}
		feat2_p_69 {Type O LastRead -1 FirstWrite 12}
		feat2_p_70 {Type O LastRead -1 FirstWrite 12}
		feat2_p_71 {Type O LastRead -1 FirstWrite 12}
		feat2 {Type I LastRead 4 FirstWrite -1}
		feat2_66 {Type I LastRead 4 FirstWrite -1}
		feat2_67 {Type I LastRead 4 FirstWrite -1}
		feat2_68 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "217162", "Max" : "217162"}
	, {"Name" : "Interval", "Min" : "217162", "Max" : "217162"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	feat2_p { ap_memory {  { feat2_p_address0 mem_address 1 15 }  { feat2_p_ce0 mem_ce 1 1 }  { feat2_p_we0 mem_we 1 1 }  { feat2_p_d0 mem_din 1 32 } } }
	feat2_p_69 { ap_memory {  { feat2_p_69_address0 mem_address 1 15 }  { feat2_p_69_ce0 mem_ce 1 1 }  { feat2_p_69_we0 mem_we 1 1 }  { feat2_p_69_d0 mem_din 1 32 } } }
	feat2_p_70 { ap_memory {  { feat2_p_70_address0 mem_address 1 15 }  { feat2_p_70_ce0 mem_ce 1 1 }  { feat2_p_70_we0 mem_we 1 1 }  { feat2_p_70_d0 mem_din 1 32 } } }
	feat2_p_71 { ap_memory {  { feat2_p_71_address0 mem_address 1 15 }  { feat2_p_71_ce0 mem_ce 1 1 }  { feat2_p_71_we0 mem_we 1 1 }  { feat2_p_71_d0 mem_din 1 32 } } }
	feat2 { ap_memory {  { feat2_address0 mem_address 1 17 }  { feat2_ce0 mem_ce 1 1 }  { feat2_q0 mem_dout 0 32 }  { feat2_address1 MemPortADDR2 1 17 }  { feat2_ce1 MemPortCE2 1 1 }  { feat2_q1 MemPortDOUT2 0 32 } } }
	feat2_66 { ap_memory {  { feat2_66_address0 mem_address 1 17 }  { feat2_66_ce0 mem_ce 1 1 }  { feat2_66_q0 mem_dout 0 32 }  { feat2_66_address1 MemPortADDR2 1 17 }  { feat2_66_ce1 MemPortCE2 1 1 }  { feat2_66_q1 MemPortDOUT2 0 32 } } }
	feat2_67 { ap_memory {  { feat2_67_address0 mem_address 1 17 }  { feat2_67_ce0 mem_ce 1 1 }  { feat2_67_q0 mem_dout 0 32 }  { feat2_67_address1 MemPortADDR2 1 17 }  { feat2_67_ce1 MemPortCE2 1 1 }  { feat2_67_q1 MemPortDOUT2 0 32 } } }
	feat2_68 { ap_memory {  { feat2_68_address0 mem_address 1 17 }  { feat2_68_ce0 mem_ce 1 1 }  { feat2_68_q0 mem_dout 0 32 }  { feat2_68_address1 MemPortADDR2 1 17 }  { feat2_68_ce1 MemPortCE2 1 1 }  { feat2_68_q1 MemPortDOUT2 0 32 } } }
}
