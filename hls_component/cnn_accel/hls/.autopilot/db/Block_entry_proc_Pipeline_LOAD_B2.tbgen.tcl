set moduleName Block_entry_proc_Pipeline_LOAD_B2
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
set C_modelName {Block_entry_proc_Pipeline_LOAD_B2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ B2mem int 32 regular {axi_master 0}  }
	{ sext_ln136 int 62 regular  }
	{ p_ZZ9cnn_accelE8b2_local_14 float 32 regular {pointer 1} {global 1}  }
	{ p_ZZ9cnn_accelE8b2_local_13 float 32 regular {pointer 1} {global 1}  }
	{ p_ZZ9cnn_accelE8b2_local_12 float 32 regular {pointer 1} {global 1}  }
	{ p_ZZ9cnn_accelE8b2_local_11 float 32 regular {pointer 1} {global 1}  }
	{ p_ZZ9cnn_accelE8b2_local_10 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_34 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_33 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_32 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_31 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_30 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_29 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_28 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_27 float 32 regular {pointer 1} {global 1}  }
	{ b2_local_26 float 32 regular {pointer 1} {global 1}  }
	{ b2_local float 32 regular {pointer 1} {global 1}  }
	{ p_ZZ9cnn_accelE8b2_local_15 float 32 regular {pointer 1} {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "B2mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln136", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_34", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_33", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_32", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_31", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_30", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_29", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_28", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_27", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local_26", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "b2_local", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE8b2_local_15", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_B2mem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_B2mem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_B2mem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_B2mem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_B2mem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_B2mem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_B2mem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_B2mem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_B2mem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_B2mem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_B2mem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_B2mem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_B2mem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_B2mem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_B2mem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_B2mem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln136 sc_in sc_lv 62 signal 1 } 
	{ p_ZZ9cnn_accelE8b2_local_14 sc_out sc_lv 32 signal 2 } 
	{ p_ZZ9cnn_accelE8b2_local_14_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ p_ZZ9cnn_accelE8b2_local_13 sc_out sc_lv 32 signal 3 } 
	{ p_ZZ9cnn_accelE8b2_local_13_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ p_ZZ9cnn_accelE8b2_local_12 sc_out sc_lv 32 signal 4 } 
	{ p_ZZ9cnn_accelE8b2_local_12_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ p_ZZ9cnn_accelE8b2_local_11 sc_out sc_lv 32 signal 5 } 
	{ p_ZZ9cnn_accelE8b2_local_11_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ p_ZZ9cnn_accelE8b2_local_10 sc_out sc_lv 32 signal 6 } 
	{ p_ZZ9cnn_accelE8b2_local_10_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ b2_local_34 sc_out sc_lv 32 signal 7 } 
	{ b2_local_34_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ b2_local_33 sc_out sc_lv 32 signal 8 } 
	{ b2_local_33_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ b2_local_32 sc_out sc_lv 32 signal 9 } 
	{ b2_local_32_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ b2_local_31 sc_out sc_lv 32 signal 10 } 
	{ b2_local_31_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ b2_local_30 sc_out sc_lv 32 signal 11 } 
	{ b2_local_30_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ b2_local_29 sc_out sc_lv 32 signal 12 } 
	{ b2_local_29_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ b2_local_28 sc_out sc_lv 32 signal 13 } 
	{ b2_local_28_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ b2_local_27 sc_out sc_lv 32 signal 14 } 
	{ b2_local_27_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ b2_local_26 sc_out sc_lv 32 signal 15 } 
	{ b2_local_26_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ b2_local sc_out sc_lv 32 signal 16 } 
	{ b2_local_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_ZZ9cnn_accelE8b2_local_15 sc_out sc_lv 32 signal 17 } 
	{ p_ZZ9cnn_accelE8b2_local_15_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_B2mem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_B2mem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_B2mem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_B2mem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_B2mem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_B2mem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_B2mem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_B2mem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_B2mem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_B2mem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_B2mem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_B2mem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_B2mem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_B2mem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_B2mem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_B2mem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_B2mem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_B2mem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_B2mem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WID" }} , 
 	{ "name": "m_axi_B2mem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_B2mem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_B2mem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_B2mem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_B2mem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_B2mem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_B2mem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_B2mem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_B2mem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_B2mem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_B2mem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_B2mem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_B2mem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_B2mem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_B2mem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_B2mem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_B2mem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_B2mem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_B2mem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RID" }} , 
 	{ "name": "m_axi_B2mem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_B2mem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_B2mem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_B2mem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_B2mem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_B2mem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_B2mem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_BID" }} , 
 	{ "name": "m_axi_B2mem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "0_BUSER" }} , 
 	{ "name": "sext_ln136", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln136", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_14", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_14", "role": "ap_vld" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_13", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_13", "role": "ap_vld" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_12", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_12", "role": "ap_vld" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_11", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_11", "role": "ap_vld" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_10", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_10", "role": "ap_vld" }} , 
 	{ "name": "b2_local_34", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_34", "role": "default" }} , 
 	{ "name": "b2_local_34_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_34", "role": "ap_vld" }} , 
 	{ "name": "b2_local_33", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_33", "role": "default" }} , 
 	{ "name": "b2_local_33_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_33", "role": "ap_vld" }} , 
 	{ "name": "b2_local_32", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_32", "role": "default" }} , 
 	{ "name": "b2_local_32_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_32", "role": "ap_vld" }} , 
 	{ "name": "b2_local_31", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_31", "role": "default" }} , 
 	{ "name": "b2_local_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_31", "role": "ap_vld" }} , 
 	{ "name": "b2_local_30", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_30", "role": "default" }} , 
 	{ "name": "b2_local_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_30", "role": "ap_vld" }} , 
 	{ "name": "b2_local_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_29", "role": "default" }} , 
 	{ "name": "b2_local_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_29", "role": "ap_vld" }} , 
 	{ "name": "b2_local_28", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_28", "role": "default" }} , 
 	{ "name": "b2_local_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_28", "role": "ap_vld" }} , 
 	{ "name": "b2_local_27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_27", "role": "default" }} , 
 	{ "name": "b2_local_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_27", "role": "ap_vld" }} , 
 	{ "name": "b2_local_26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local_26", "role": "default" }} , 
 	{ "name": "b2_local_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local_26", "role": "ap_vld" }} , 
 	{ "name": "b2_local", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b2_local", "role": "default" }} , 
 	{ "name": "b2_local_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b2_local", "role": "ap_vld" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_15", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE8b2_local_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_ZZ9cnn_accelE8b2_local_15", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	Block_entry_proc_Pipeline_LOAD_B2 {
		B2mem {Type I LastRead 1 FirstWrite -1}
		sext_ln136 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE8b2_local_14 {Type O LastRead -1 FirstWrite 1}
		p_ZZ9cnn_accelE8b2_local_13 {Type O LastRead -1 FirstWrite 1}
		p_ZZ9cnn_accelE8b2_local_12 {Type O LastRead -1 FirstWrite 1}
		p_ZZ9cnn_accelE8b2_local_11 {Type O LastRead -1 FirstWrite 1}
		p_ZZ9cnn_accelE8b2_local_10 {Type O LastRead -1 FirstWrite 1}
		b2_local_34 {Type O LastRead -1 FirstWrite 1}
		b2_local_33 {Type O LastRead -1 FirstWrite 1}
		b2_local_32 {Type O LastRead -1 FirstWrite 1}
		b2_local_31 {Type O LastRead -1 FirstWrite 1}
		b2_local_30 {Type O LastRead -1 FirstWrite 1}
		b2_local_29 {Type O LastRead -1 FirstWrite 1}
		b2_local_28 {Type O LastRead -1 FirstWrite 1}
		b2_local_27 {Type O LastRead -1 FirstWrite 1}
		b2_local_26 {Type O LastRead -1 FirstWrite 1}
		b2_local {Type O LastRead -1 FirstWrite 1}
		p_ZZ9cnn_accelE8b2_local_15 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_B2mem_0_AWVALID VALID 1 1 }  { m_axi_B2mem_0_AWREADY READY 0 1 }  { m_axi_B2mem_0_AWADDR ADDR 1 64 }  { m_axi_B2mem_0_AWID ID 1 1 }  { m_axi_B2mem_0_AWLEN SIZE 1 32 }  { m_axi_B2mem_0_AWSIZE BURST 1 3 }  { m_axi_B2mem_0_AWBURST LOCK 1 2 }  { m_axi_B2mem_0_AWLOCK CACHE 1 2 }  { m_axi_B2mem_0_AWCACHE PROT 1 4 }  { m_axi_B2mem_0_AWPROT QOS 1 3 }  { m_axi_B2mem_0_AWQOS REGION 1 4 }  { m_axi_B2mem_0_AWREGION USER 1 4 }  { m_axi_B2mem_0_AWUSER DATA 1 1 }  { m_axi_B2mem_0_WVALID VALID 1 1 }  { m_axi_B2mem_0_WREADY READY 0 1 }  { m_axi_B2mem_0_WDATA FIFONUM 1 32 }  { m_axi_B2mem_0_WSTRB STRB 1 4 }  { m_axi_B2mem_0_WLAST LAST 1 1 }  { m_axi_B2mem_0_WID ID 1 1 }  { m_axi_B2mem_0_WUSER DATA 1 1 }  { m_axi_B2mem_0_ARVALID VALID 1 1 }  { m_axi_B2mem_0_ARREADY READY 0 1 }  { m_axi_B2mem_0_ARADDR ADDR 1 64 }  { m_axi_B2mem_0_ARID ID 1 1 }  { m_axi_B2mem_0_ARLEN SIZE 1 32 }  { m_axi_B2mem_0_ARSIZE BURST 1 3 }  { m_axi_B2mem_0_ARBURST LOCK 1 2 }  { m_axi_B2mem_0_ARLOCK CACHE 1 2 }  { m_axi_B2mem_0_ARCACHE PROT 1 4 }  { m_axi_B2mem_0_ARPROT QOS 1 3 }  { m_axi_B2mem_0_ARQOS REGION 1 4 }  { m_axi_B2mem_0_ARREGION USER 1 4 }  { m_axi_B2mem_0_ARUSER DATA 1 1 }  { m_axi_B2mem_0_RVALID VALID 0 1 }  { m_axi_B2mem_0_RREADY READY 1 1 }  { m_axi_B2mem_0_RDATA FIFONUM 0 32 }  { m_axi_B2mem_0_RLAST LAST 0 1 }  { m_axi_B2mem_0_RID ID 0 1 }  { m_axi_B2mem_0_RFIFONUM LEN 0 9 }  { m_axi_B2mem_0_RUSER DATA 0 1 }  { m_axi_B2mem_0_RRESP RESP 0 2 }  { m_axi_B2mem_0_BVALID VALID 0 1 }  { m_axi_B2mem_0_BREADY READY 1 1 }  { m_axi_B2mem_0_BRESP RESP 0 2 }  { m_axi_B2mem_0_BID ID 0 1 }  { m_axi_B2mem_0_BUSER DATA 0 1 } } }
	sext_ln136 { ap_none {  { sext_ln136 in_data 0 62 } } }
	p_ZZ9cnn_accelE8b2_local_14 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_14 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_14_ap_vld out_vld 1 1 } } }
	p_ZZ9cnn_accelE8b2_local_13 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_13 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_13_ap_vld out_vld 1 1 } } }
	p_ZZ9cnn_accelE8b2_local_12 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_12 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_12_ap_vld out_vld 1 1 } } }
	p_ZZ9cnn_accelE8b2_local_11 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_11 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_11_ap_vld out_vld 1 1 } } }
	p_ZZ9cnn_accelE8b2_local_10 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_10 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_10_ap_vld out_vld 1 1 } } }
	b2_local_34 { ap_vld {  { b2_local_34 out_data 1 32 }  { b2_local_34_ap_vld out_vld 1 1 } } }
	b2_local_33 { ap_vld {  { b2_local_33 out_data 1 32 }  { b2_local_33_ap_vld out_vld 1 1 } } }
	b2_local_32 { ap_vld {  { b2_local_32 out_data 1 32 }  { b2_local_32_ap_vld out_vld 1 1 } } }
	b2_local_31 { ap_vld {  { b2_local_31 out_data 1 32 }  { b2_local_31_ap_vld out_vld 1 1 } } }
	b2_local_30 { ap_vld {  { b2_local_30 out_data 1 32 }  { b2_local_30_ap_vld out_vld 1 1 } } }
	b2_local_29 { ap_vld {  { b2_local_29 out_data 1 32 }  { b2_local_29_ap_vld out_vld 1 1 } } }
	b2_local_28 { ap_vld {  { b2_local_28 out_data 1 32 }  { b2_local_28_ap_vld out_vld 1 1 } } }
	b2_local_27 { ap_vld {  { b2_local_27 out_data 1 32 }  { b2_local_27_ap_vld out_vld 1 1 } } }
	b2_local_26 { ap_vld {  { b2_local_26 out_data 1 32 }  { b2_local_26_ap_vld out_vld 1 1 } } }
	b2_local { ap_vld {  { b2_local out_data 1 32 }  { b2_local_ap_vld out_vld 1 1 } } }
	p_ZZ9cnn_accelE8b2_local_15 { ap_vld {  { p_ZZ9cnn_accelE8b2_local_15 out_data 1 32 }  { p_ZZ9cnn_accelE8b2_local_15_ap_vld out_vld 1 1 } } }
}
