set moduleName generic_tanh_float_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type function
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
set C_modelName {generic_tanh<float>}
set C_modelType { float 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ t_in float 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_in sc_in sc_lv 32 signal 0 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_394_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_394_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_990_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_990_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_990_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_990_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_990_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_399_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_399_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_399_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_399_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_994_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_994_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_994_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_994_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_998_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_998_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_998_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_998_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_998_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_in", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_394_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_394_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_990_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_990_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_990_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_990_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_990_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_990_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_990_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_990_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_990_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_990_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_399_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_399_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_399_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_399_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_399_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_399_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_399_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_399_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_994_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_994_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_994_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_994_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_994_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_994_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_994_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_994_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_998_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_998_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_998_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_998_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_998_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_998_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_998_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_998_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_998_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_998_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "61", "Max" : "61"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_in { ap_none {  { t_in in_data 0 32 } } }
}
