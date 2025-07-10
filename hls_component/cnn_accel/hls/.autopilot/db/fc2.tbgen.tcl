set moduleName fc2
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
set C_modelName {fc2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict vec2 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ Foutmem int 8 regular {axi_master 1}  }
	{ flag_out int 64 regular  }
	{ fc2_b_local float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_51 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_52 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_53 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_54 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_55 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_56 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_57 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_58 float 32 regular {pointer 0} {global 0}  }
	{ fc2_w_local_59 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_10 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_11 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_12 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_13 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_14 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_15 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_16 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_17 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_18 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_19 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_20 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_21 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_22 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_23 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_24 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_25 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_26 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_27 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_28 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_29 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_30 float 32 regular {pointer 0} {global 0}  }
	{ p_ZZ9cnn_accelE11fc2_w_local_31 float 32 regular {pointer 0} {global 0}  }
	{ vec2 float 32 regular {array 32 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Foutmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "flag_out","offset": { "type": "dynamic","port_name": "flag_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "flag_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fc2_b_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fc2_w_local_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZZ9cnn_accelE11fc2_w_local_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "vec2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_Foutmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Foutmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Foutmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Foutmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Foutmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_Foutmem_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Foutmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Foutmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Foutmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Foutmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Foutmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_Foutmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_Foutmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Foutmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Foutmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Foutmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ flag_out sc_in sc_lv 64 signal 1 } 
	{ fc2_b_local sc_in sc_lv 32 signal 2 } 
	{ fc2_w_local sc_in sc_lv 32 signal 3 } 
	{ fc2_w_local_51 sc_in sc_lv 32 signal 4 } 
	{ fc2_w_local_52 sc_in sc_lv 32 signal 5 } 
	{ fc2_w_local_53 sc_in sc_lv 32 signal 6 } 
	{ fc2_w_local_54 sc_in sc_lv 32 signal 7 } 
	{ fc2_w_local_55 sc_in sc_lv 32 signal 8 } 
	{ fc2_w_local_56 sc_in sc_lv 32 signal 9 } 
	{ fc2_w_local_57 sc_in sc_lv 32 signal 10 } 
	{ fc2_w_local_58 sc_in sc_lv 32 signal 11 } 
	{ fc2_w_local_59 sc_in sc_lv 32 signal 12 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_10 sc_in sc_lv 32 signal 13 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_11 sc_in sc_lv 32 signal 14 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_12 sc_in sc_lv 32 signal 15 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_13 sc_in sc_lv 32 signal 16 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_14 sc_in sc_lv 32 signal 17 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_15 sc_in sc_lv 32 signal 18 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_16 sc_in sc_lv 32 signal 19 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_17 sc_in sc_lv 32 signal 20 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_18 sc_in sc_lv 32 signal 21 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_19 sc_in sc_lv 32 signal 22 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_20 sc_in sc_lv 32 signal 23 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_21 sc_in sc_lv 32 signal 24 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_22 sc_in sc_lv 32 signal 25 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_23 sc_in sc_lv 32 signal 26 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_24 sc_in sc_lv 32 signal 27 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_25 sc_in sc_lv 32 signal 28 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_26 sc_in sc_lv 32 signal 29 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_27 sc_in sc_lv 32 signal 30 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_28 sc_in sc_lv 32 signal 31 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_29 sc_in sc_lv 32 signal 32 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_30 sc_in sc_lv 32 signal 33 } 
	{ p_ZZ9cnn_accelE11fc2_w_local_31 sc_in sc_lv 32 signal 34 } 
	{ vec2_address0 sc_out sc_lv 5 signal 35 } 
	{ vec2_ce0 sc_out sc_logic 1 signal 35 } 
	{ vec2_q0 sc_in sc_lv 32 signal 35 } 
	{ grp_fu_9552_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9552_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9552_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_9552_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9552_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9572_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9572_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9572_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9572_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9568_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9568_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9568_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_9568_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_9568_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_9560_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9560_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_9560_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_9560_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_Foutmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_Foutmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_Foutmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_Foutmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_Foutmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_Foutmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_Foutmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_Foutmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_Foutmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_Foutmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_Foutmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_Foutmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_Foutmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_Foutmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_Foutmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_Foutmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_Foutmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_Foutmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_Foutmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_Foutmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_Foutmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_Foutmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_Foutmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_Foutmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_Foutmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_Foutmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_Foutmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_Foutmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_Foutmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_Foutmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_Foutmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_Foutmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_Foutmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_Foutmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_Foutmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_Foutmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_Foutmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_Foutmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_Foutmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_Foutmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_Foutmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_Foutmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_Foutmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_Foutmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_Foutmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_Foutmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "0_BUSER" }} , 
 	{ "name": "flag_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flag_out", "role": "default" }} , 
 	{ "name": "fc2_b_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_b_local", "role": "default" }} , 
 	{ "name": "fc2_w_local", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local", "role": "default" }} , 
 	{ "name": "fc2_w_local_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_51", "role": "default" }} , 
 	{ "name": "fc2_w_local_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_52", "role": "default" }} , 
 	{ "name": "fc2_w_local_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_53", "role": "default" }} , 
 	{ "name": "fc2_w_local_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_54", "role": "default" }} , 
 	{ "name": "fc2_w_local_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_55", "role": "default" }} , 
 	{ "name": "fc2_w_local_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_56", "role": "default" }} , 
 	{ "name": "fc2_w_local_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_57", "role": "default" }} , 
 	{ "name": "fc2_w_local_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_58", "role": "default" }} , 
 	{ "name": "fc2_w_local_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc2_w_local_59", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_10", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_11", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_12", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_13", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_14", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_15", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_16", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_17", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_18", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_19", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_20", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_21", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_22", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_23", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_24", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_25", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_26", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_27", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_28", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_29", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_30", "role": "default" }} , 
 	{ "name": "p_ZZ9cnn_accelE11fc2_w_local_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ZZ9cnn_accelE11fc2_w_local_31", "role": "default" }} , 
 	{ "name": "vec2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec2", "role": "address0" }} , 
 	{ "name": "vec2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec2", "role": "ce0" }} , 
 	{ "name": "vec2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vec2", "role": "q0" }} , 
 	{ "name": "grp_fu_9552_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9552_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9552_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9552_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9552_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9552_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9552_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9552_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9552_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9552_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9572_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9572_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9572_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9572_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9572_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9572_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9572_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9572_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9568_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_9568_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9568_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9568_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_9560_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9560_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_9560_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9560_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_9560_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_9560_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_9560_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_9560_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	fc2 {
		Foutmem {Type O LastRead 31 FirstWrite 30}
		flag_out {Type I LastRead 29 FirstWrite -1}
		fc2_b_local {Type I LastRead 0 FirstWrite -1}
		fc2_w_local {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_51 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_52 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_53 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_54 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_55 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_56 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_57 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_58 {Type I LastRead 0 FirstWrite -1}
		fc2_w_local_59 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_15 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_16 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_17 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_18 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_20 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_21 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_22 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_23 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_24 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_25 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_26 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_27 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_28 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_29 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_30 {Type I LastRead 0 FirstWrite -1}
		p_ZZ9cnn_accelE11fc2_w_local_31 {Type I LastRead 0 FirstWrite -1}
		vec2 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "170", "Max" : "170"}
	, {"Name" : "Interval", "Min" : "170", "Max" : "170"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_Foutmem_0_AWVALID VALID 1 1 }  { m_axi_Foutmem_0_AWREADY READY 0 1 }  { m_axi_Foutmem_0_AWADDR ADDR 1 64 }  { m_axi_Foutmem_0_AWID ID 1 1 }  { m_axi_Foutmem_0_AWLEN SIZE 1 32 }  { m_axi_Foutmem_0_AWSIZE BURST 1 3 }  { m_axi_Foutmem_0_AWBURST LOCK 1 2 }  { m_axi_Foutmem_0_AWLOCK CACHE 1 2 }  { m_axi_Foutmem_0_AWCACHE PROT 1 4 }  { m_axi_Foutmem_0_AWPROT QOS 1 3 }  { m_axi_Foutmem_0_AWQOS REGION 1 4 }  { m_axi_Foutmem_0_AWREGION USER 1 4 }  { m_axi_Foutmem_0_AWUSER DATA 1 1 }  { m_axi_Foutmem_0_WVALID VALID 1 1 }  { m_axi_Foutmem_0_WREADY READY 0 1 }  { m_axi_Foutmem_0_WDATA FIFONUM 1 8 }  { m_axi_Foutmem_0_WSTRB STRB 1 1 }  { m_axi_Foutmem_0_WLAST LAST 1 1 }  { m_axi_Foutmem_0_WID ID 1 1 }  { m_axi_Foutmem_0_WUSER DATA 1 1 }  { m_axi_Foutmem_0_ARVALID VALID 1 1 }  { m_axi_Foutmem_0_ARREADY READY 0 1 }  { m_axi_Foutmem_0_ARADDR ADDR 1 64 }  { m_axi_Foutmem_0_ARID ID 1 1 }  { m_axi_Foutmem_0_ARLEN SIZE 1 32 }  { m_axi_Foutmem_0_ARSIZE BURST 1 3 }  { m_axi_Foutmem_0_ARBURST LOCK 1 2 }  { m_axi_Foutmem_0_ARLOCK CACHE 1 2 }  { m_axi_Foutmem_0_ARCACHE PROT 1 4 }  { m_axi_Foutmem_0_ARPROT QOS 1 3 }  { m_axi_Foutmem_0_ARQOS REGION 1 4 }  { m_axi_Foutmem_0_ARREGION USER 1 4 }  { m_axi_Foutmem_0_ARUSER DATA 1 1 }  { m_axi_Foutmem_0_RVALID VALID 0 1 }  { m_axi_Foutmem_0_RREADY READY 1 1 }  { m_axi_Foutmem_0_RDATA FIFONUM 0 8 }  { m_axi_Foutmem_0_RLAST LAST 0 1 }  { m_axi_Foutmem_0_RID ID 0 1 }  { m_axi_Foutmem_0_RFIFONUM LEN 0 11 }  { m_axi_Foutmem_0_RUSER DATA 0 1 }  { m_axi_Foutmem_0_RRESP RESP 0 2 }  { m_axi_Foutmem_0_BVALID VALID 0 1 }  { m_axi_Foutmem_0_BREADY READY 1 1 }  { m_axi_Foutmem_0_BRESP RESP 0 2 }  { m_axi_Foutmem_0_BID ID 0 1 }  { m_axi_Foutmem_0_BUSER DATA 0 1 } } }
	flag_out { ap_none {  { flag_out in_data 0 64 } } }
	fc2_b_local { ap_none {  { fc2_b_local in_data 0 32 } } }
	fc2_w_local { ap_none {  { fc2_w_local in_data 0 32 } } }
	fc2_w_local_51 { ap_none {  { fc2_w_local_51 in_data 0 32 } } }
	fc2_w_local_52 { ap_none {  { fc2_w_local_52 in_data 0 32 } } }
	fc2_w_local_53 { ap_none {  { fc2_w_local_53 in_data 0 32 } } }
	fc2_w_local_54 { ap_none {  { fc2_w_local_54 in_data 0 32 } } }
	fc2_w_local_55 { ap_none {  { fc2_w_local_55 in_data 0 32 } } }
	fc2_w_local_56 { ap_none {  { fc2_w_local_56 in_data 0 32 } } }
	fc2_w_local_57 { ap_none {  { fc2_w_local_57 in_data 0 32 } } }
	fc2_w_local_58 { ap_none {  { fc2_w_local_58 in_data 0 32 } } }
	fc2_w_local_59 { ap_none {  { fc2_w_local_59 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_10 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_10 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_11 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_11 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_12 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_12 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_13 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_13 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_14 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_14 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_15 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_15 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_16 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_16 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_17 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_17 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_18 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_18 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_19 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_19 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_20 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_20 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_21 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_21 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_22 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_22 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_23 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_23 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_24 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_24 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_25 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_25 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_26 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_26 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_27 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_27 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_28 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_28 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_29 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_29 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_30 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_30 in_data 0 32 } } }
	p_ZZ9cnn_accelE11fc2_w_local_31 { ap_none {  { p_ZZ9cnn_accelE11fc2_w_local_31 in_data 0 32 } } }
	vec2 { ap_memory {  { vec2_address0 mem_address 1 5 }  { vec2_ce0 mem_ce 1 1 }  { vec2_q0 mem_dout 0 32 } } }
}
