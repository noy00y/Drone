set moduleName cnn_accel_Pipeline_CONV1_FIL
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
set C_modelName {cnn_accel_Pipeline_CONV1_FIL}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat1 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_3 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_4 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_5 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_6 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_7 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_8 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_9 { MEM_WIDTH 32 MEM_SIZE 302736 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ empty int 17 regular  }
	{ sext_ln99 int 62 regular  }
	{ weights1 int 64 regular  }
	{ local_img_load float 32 regular  }
	{ local_img_1_load float 32 regular  }
	{ local_img_2_load float 32 regular  }
	{ local_img_load_1 float 32 regular  }
	{ local_img_1_load_1 float 32 regular  }
	{ local_img_2_load_1 float 32 regular  }
	{ local_img_load_2 float 32 regular  }
	{ local_img_1_load_2 float 32 regular  }
	{ local_img_2_load_2 float 32 regular  }
	{ local_img_load_3 float 32 regular  }
	{ local_img_1_load_3 float 32 regular  }
	{ local_img_2_load_3 float 32 regular  }
	{ local_img_load_4 float 32 regular  }
	{ local_img_1_load_4 float 32 regular  }
	{ local_img_2_load_4 float 32 regular  }
	{ local_img_load_5 float 32 regular  }
	{ local_img_1_load_5 float 32 regular  }
	{ local_img_2_load_5 float 32 regular  }
	{ local_img_load_6 float 32 regular  }
	{ local_img_1_load_6 float 32 regular  }
	{ local_img_2_load_6 float 32 regular  }
	{ local_img_load_7 float 32 regular  }
	{ local_img_1_load_7 float 32 regular  }
	{ local_img_2_load_7 float 32 regular  }
	{ local_img_load_8 float 32 regular  }
	{ local_img_1_load_8 float 32 regular  }
	{ local_img_2_load_8 float 32 regular  }
	{ feat1 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_3 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_4 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_5 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_6 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_7 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_8 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
	{ feat1_9 float 32 regular {array 75684 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "img_in","offset": { "type": "dynamic","port_name": "img_in","bundle": "control"},"direction": "READONLY"},{"cName": "weights1","offset": { "type": "dynamic","port_name": "weights1","bundle": "control"},"direction": "READONLY"},{"cName": "bias1","offset": { "type": "dynamic","port_name": "bias1","bundle": "control"},"direction": "READONLY"},{"cName": "weights2","offset": { "type": "dynamic","port_name": "weights2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "FC1_W","offset": { "type": "dynamic","port_name": "FC1_W","bundle": "control"},"direction": "READONLY"},{"cName": "FC1_B","offset": { "type": "dynamic","port_name": "FC1_B","bundle": "control"},"direction": "READONLY"},{"cName": "FC2_W","offset": { "type": "dynamic","port_name": "FC2_W","bundle": "control"},"direction": "READONLY"},{"cName": "FC2_B","offset": { "type": "dynamic","port_name": "FC2_B","bundle": "control"},"direction": "READONLY"},{"cName": "flag_out","offset": { "type": "dynamic","port_name": "flag_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln99", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "weights1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_2_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "feat1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "feat1_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 128
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ empty sc_in sc_lv 17 signal 1 } 
	{ sext_ln99 sc_in sc_lv 62 signal 2 } 
	{ weights1 sc_in sc_lv 64 signal 3 } 
	{ local_img_load sc_in sc_lv 32 signal 4 } 
	{ local_img_1_load sc_in sc_lv 32 signal 5 } 
	{ local_img_2_load sc_in sc_lv 32 signal 6 } 
	{ local_img_load_1 sc_in sc_lv 32 signal 7 } 
	{ local_img_1_load_1 sc_in sc_lv 32 signal 8 } 
	{ local_img_2_load_1 sc_in sc_lv 32 signal 9 } 
	{ local_img_load_2 sc_in sc_lv 32 signal 10 } 
	{ local_img_1_load_2 sc_in sc_lv 32 signal 11 } 
	{ local_img_2_load_2 sc_in sc_lv 32 signal 12 } 
	{ local_img_load_3 sc_in sc_lv 32 signal 13 } 
	{ local_img_1_load_3 sc_in sc_lv 32 signal 14 } 
	{ local_img_2_load_3 sc_in sc_lv 32 signal 15 } 
	{ local_img_load_4 sc_in sc_lv 32 signal 16 } 
	{ local_img_1_load_4 sc_in sc_lv 32 signal 17 } 
	{ local_img_2_load_4 sc_in sc_lv 32 signal 18 } 
	{ local_img_load_5 sc_in sc_lv 32 signal 19 } 
	{ local_img_1_load_5 sc_in sc_lv 32 signal 20 } 
	{ local_img_2_load_5 sc_in sc_lv 32 signal 21 } 
	{ local_img_load_6 sc_in sc_lv 32 signal 22 } 
	{ local_img_1_load_6 sc_in sc_lv 32 signal 23 } 
	{ local_img_2_load_6 sc_in sc_lv 32 signal 24 } 
	{ local_img_load_7 sc_in sc_lv 32 signal 25 } 
	{ local_img_1_load_7 sc_in sc_lv 32 signal 26 } 
	{ local_img_2_load_7 sc_in sc_lv 32 signal 27 } 
	{ local_img_load_8 sc_in sc_lv 32 signal 28 } 
	{ local_img_1_load_8 sc_in sc_lv 32 signal 29 } 
	{ local_img_2_load_8 sc_in sc_lv 32 signal 30 } 
	{ feat1_address0 sc_out sc_lv 17 signal 31 } 
	{ feat1_ce0 sc_out sc_logic 1 signal 31 } 
	{ feat1_we0 sc_out sc_logic 1 signal 31 } 
	{ feat1_d0 sc_out sc_lv 32 signal 31 } 
	{ feat1_3_address0 sc_out sc_lv 17 signal 32 } 
	{ feat1_3_ce0 sc_out sc_logic 1 signal 32 } 
	{ feat1_3_we0 sc_out sc_logic 1 signal 32 } 
	{ feat1_3_d0 sc_out sc_lv 32 signal 32 } 
	{ feat1_4_address0 sc_out sc_lv 17 signal 33 } 
	{ feat1_4_ce0 sc_out sc_logic 1 signal 33 } 
	{ feat1_4_we0 sc_out sc_logic 1 signal 33 } 
	{ feat1_4_d0 sc_out sc_lv 32 signal 33 } 
	{ feat1_5_address0 sc_out sc_lv 17 signal 34 } 
	{ feat1_5_ce0 sc_out sc_logic 1 signal 34 } 
	{ feat1_5_we0 sc_out sc_logic 1 signal 34 } 
	{ feat1_5_d0 sc_out sc_lv 32 signal 34 } 
	{ feat1_6_address0 sc_out sc_lv 17 signal 35 } 
	{ feat1_6_ce0 sc_out sc_logic 1 signal 35 } 
	{ feat1_6_we0 sc_out sc_logic 1 signal 35 } 
	{ feat1_6_d0 sc_out sc_lv 32 signal 35 } 
	{ feat1_7_address0 sc_out sc_lv 17 signal 36 } 
	{ feat1_7_ce0 sc_out sc_logic 1 signal 36 } 
	{ feat1_7_we0 sc_out sc_logic 1 signal 36 } 
	{ feat1_7_d0 sc_out sc_lv 32 signal 36 } 
	{ feat1_8_address0 sc_out sc_lv 17 signal 37 } 
	{ feat1_8_ce0 sc_out sc_logic 1 signal 37 } 
	{ feat1_8_we0 sc_out sc_logic 1 signal 37 } 
	{ feat1_8_d0 sc_out sc_lv 32 signal 37 } 
	{ feat1_9_address0 sc_out sc_lv 17 signal 38 } 
	{ feat1_9_ce0 sc_out sc_logic 1 signal 38 } 
	{ feat1_9_we0 sc_out sc_logic 1 signal 38 } 
	{ feat1_9_d0 sc_out sc_lv 32 signal 38 } 
	{ grp_fu_1268_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1268_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1268_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1268_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1268_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2859_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2859_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1278_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1278_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1278_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "sext_ln99", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln99", "role": "default" }} , 
 	{ "name": "weights1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "default" }} , 
 	{ "name": "local_img_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load", "role": "default" }} , 
 	{ "name": "local_img_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load", "role": "default" }} , 
 	{ "name": "local_img_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load", "role": "default" }} , 
 	{ "name": "local_img_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_1", "role": "default" }} , 
 	{ "name": "local_img_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_1", "role": "default" }} , 
 	{ "name": "local_img_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_1", "role": "default" }} , 
 	{ "name": "local_img_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_2", "role": "default" }} , 
 	{ "name": "local_img_1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_2", "role": "default" }} , 
 	{ "name": "local_img_2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_2", "role": "default" }} , 
 	{ "name": "local_img_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_3", "role": "default" }} , 
 	{ "name": "local_img_1_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_3", "role": "default" }} , 
 	{ "name": "local_img_2_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_3", "role": "default" }} , 
 	{ "name": "local_img_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_4", "role": "default" }} , 
 	{ "name": "local_img_1_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_4", "role": "default" }} , 
 	{ "name": "local_img_2_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_4", "role": "default" }} , 
 	{ "name": "local_img_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_5", "role": "default" }} , 
 	{ "name": "local_img_1_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_5", "role": "default" }} , 
 	{ "name": "local_img_2_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_5", "role": "default" }} , 
 	{ "name": "local_img_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_6", "role": "default" }} , 
 	{ "name": "local_img_1_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_6", "role": "default" }} , 
 	{ "name": "local_img_2_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_6", "role": "default" }} , 
 	{ "name": "local_img_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_7", "role": "default" }} , 
 	{ "name": "local_img_1_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_7", "role": "default" }} , 
 	{ "name": "local_img_2_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_7", "role": "default" }} , 
 	{ "name": "local_img_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_load_8", "role": "default" }} , 
 	{ "name": "local_img_1_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1_load_8", "role": "default" }} , 
 	{ "name": "local_img_2_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_2_load_8", "role": "default" }} , 
 	{ "name": "feat1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1", "role": "address0" }} , 
 	{ "name": "feat1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce0" }} , 
 	{ "name": "feat1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "we0" }} , 
 	{ "name": "feat1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "d0" }} , 
 	{ "name": "feat1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_3", "role": "address0" }} , 
 	{ "name": "feat1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "ce0" }} , 
 	{ "name": "feat1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "we0" }} , 
 	{ "name": "feat1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_3", "role": "d0" }} , 
 	{ "name": "feat1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_4", "role": "address0" }} , 
 	{ "name": "feat1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "ce0" }} , 
 	{ "name": "feat1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "we0" }} , 
 	{ "name": "feat1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_4", "role": "d0" }} , 
 	{ "name": "feat1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_5", "role": "address0" }} , 
 	{ "name": "feat1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_5", "role": "ce0" }} , 
 	{ "name": "feat1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_5", "role": "we0" }} , 
 	{ "name": "feat1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_5", "role": "d0" }} , 
 	{ "name": "feat1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_6", "role": "address0" }} , 
 	{ "name": "feat1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_6", "role": "ce0" }} , 
 	{ "name": "feat1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_6", "role": "we0" }} , 
 	{ "name": "feat1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_6", "role": "d0" }} , 
 	{ "name": "feat1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_7", "role": "address0" }} , 
 	{ "name": "feat1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_7", "role": "ce0" }} , 
 	{ "name": "feat1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_7", "role": "we0" }} , 
 	{ "name": "feat1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_7", "role": "d0" }} , 
 	{ "name": "feat1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_8", "role": "address0" }} , 
 	{ "name": "feat1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_8", "role": "ce0" }} , 
 	{ "name": "feat1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_8", "role": "we0" }} , 
 	{ "name": "feat1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_8", "role": "d0" }} , 
 	{ "name": "feat1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "feat1_9", "role": "address0" }} , 
 	{ "name": "feat1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_9", "role": "ce0" }} , 
 	{ "name": "feat1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_9", "role": "we0" }} , 
 	{ "name": "feat1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_9", "role": "d0" }} , 
 	{ "name": "grp_fu_1268_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1268_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1268_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1268_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1268_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1268_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1268_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1268_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1268_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1268_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2859_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2859_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2859_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1278_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1278_p_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accel_Pipeline_CONV1_FIL {
		gmem {Type I LastRead 36 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sext_ln99 {Type I LastRead 0 FirstWrite -1}
		weights1 {Type I LastRead 0 FirstWrite -1}
		local_img_load {Type I LastRead 0 FirstWrite -1}
		local_img_1_load {Type I LastRead 0 FirstWrite -1}
		local_img_2_load {Type I LastRead 0 FirstWrite -1}
		local_img_load_1 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_1 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_1 {Type I LastRead 0 FirstWrite -1}
		local_img_load_2 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_2 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_2 {Type I LastRead 0 FirstWrite -1}
		local_img_load_3 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_3 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_3 {Type I LastRead 0 FirstWrite -1}
		local_img_load_4 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_4 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_4 {Type I LastRead 0 FirstWrite -1}
		local_img_load_5 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_5 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_5 {Type I LastRead 0 FirstWrite -1}
		local_img_load_6 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_6 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_6 {Type I LastRead 0 FirstWrite -1}
		local_img_load_7 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_7 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_7 {Type I LastRead 0 FirstWrite -1}
		local_img_load_8 {Type I LastRead 0 FirstWrite -1}
		local_img_1_load_8 {Type I LastRead 0 FirstWrite -1}
		local_img_2_load_8 {Type I LastRead 0 FirstWrite -1}
		feat1 {Type O LastRead -1 FirstWrite 95}
		feat1_3 {Type O LastRead -1 FirstWrite 95}
		feat1_4 {Type O LastRead -1 FirstWrite 95}
		feat1_5 {Type O LastRead -1 FirstWrite 95}
		feat1_6 {Type O LastRead -1 FirstWrite 95}
		feat1_7 {Type O LastRead -1 FirstWrite 95}
		feat1_8 {Type O LastRead -1 FirstWrite 95}
		feat1_9 {Type O LastRead -1 FirstWrite 95}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "293", "Max" : "293"}
	, {"Name" : "Interval", "Min" : "293", "Max" : "293"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	empty { ap_none {  { empty in_data 0 17 } } }
	sext_ln99 { ap_none {  { sext_ln99 in_data 0 62 } } }
	weights1 { ap_none {  { weights1 in_data 0 64 } } }
	local_img_load { ap_none {  { local_img_load in_data 0 32 } } }
	local_img_1_load { ap_none {  { local_img_1_load in_data 0 32 } } }
	local_img_2_load { ap_none {  { local_img_2_load in_data 0 32 } } }
	local_img_load_1 { ap_none {  { local_img_load_1 in_data 0 32 } } }
	local_img_1_load_1 { ap_none {  { local_img_1_load_1 in_data 0 32 } } }
	local_img_2_load_1 { ap_none {  { local_img_2_load_1 in_data 0 32 } } }
	local_img_load_2 { ap_none {  { local_img_load_2 in_data 0 32 } } }
	local_img_1_load_2 { ap_none {  { local_img_1_load_2 in_data 0 32 } } }
	local_img_2_load_2 { ap_none {  { local_img_2_load_2 in_data 0 32 } } }
	local_img_load_3 { ap_none {  { local_img_load_3 in_data 0 32 } } }
	local_img_1_load_3 { ap_none {  { local_img_1_load_3 in_data 0 32 } } }
	local_img_2_load_3 { ap_none {  { local_img_2_load_3 in_data 0 32 } } }
	local_img_load_4 { ap_none {  { local_img_load_4 in_data 0 32 } } }
	local_img_1_load_4 { ap_none {  { local_img_1_load_4 in_data 0 32 } } }
	local_img_2_load_4 { ap_none {  { local_img_2_load_4 in_data 0 32 } } }
	local_img_load_5 { ap_none {  { local_img_load_5 in_data 0 32 } } }
	local_img_1_load_5 { ap_none {  { local_img_1_load_5 in_data 0 32 } } }
	local_img_2_load_5 { ap_none {  { local_img_2_load_5 in_data 0 32 } } }
	local_img_load_6 { ap_none {  { local_img_load_6 in_data 0 32 } } }
	local_img_1_load_6 { ap_none {  { local_img_1_load_6 in_data 0 32 } } }
	local_img_2_load_6 { ap_none {  { local_img_2_load_6 in_data 0 32 } } }
	local_img_load_7 { ap_none {  { local_img_load_7 in_data 0 32 } } }
	local_img_1_load_7 { ap_none {  { local_img_1_load_7 in_data 0 32 } } }
	local_img_2_load_7 { ap_none {  { local_img_2_load_7 in_data 0 32 } } }
	local_img_load_8 { ap_none {  { local_img_load_8 in_data 0 32 } } }
	local_img_1_load_8 { ap_none {  { local_img_1_load_8 in_data 0 32 } } }
	local_img_2_load_8 { ap_none {  { local_img_2_load_8 in_data 0 32 } } }
	feat1 { ap_memory {  { feat1_address0 mem_address 1 17 }  { feat1_ce0 mem_ce 1 1 }  { feat1_we0 mem_we 1 1 }  { feat1_d0 mem_din 1 32 } } }
	feat1_3 { ap_memory {  { feat1_3_address0 mem_address 1 17 }  { feat1_3_ce0 mem_ce 1 1 }  { feat1_3_we0 mem_we 1 1 }  { feat1_3_d0 mem_din 1 32 } } }
	feat1_4 { ap_memory {  { feat1_4_address0 mem_address 1 17 }  { feat1_4_ce0 mem_ce 1 1 }  { feat1_4_we0 mem_we 1 1 }  { feat1_4_d0 mem_din 1 32 } } }
	feat1_5 { ap_memory {  { feat1_5_address0 mem_address 1 17 }  { feat1_5_ce0 mem_ce 1 1 }  { feat1_5_we0 mem_we 1 1 }  { feat1_5_d0 mem_din 1 32 } } }
	feat1_6 { ap_memory {  { feat1_6_address0 mem_address 1 17 }  { feat1_6_ce0 mem_ce 1 1 }  { feat1_6_we0 mem_we 1 1 }  { feat1_6_d0 mem_din 1 32 } } }
	feat1_7 { ap_memory {  { feat1_7_address0 mem_address 1 17 }  { feat1_7_ce0 mem_ce 1 1 }  { feat1_7_we0 mem_we 1 1 }  { feat1_7_d0 mem_din 1 32 } } }
	feat1_8 { ap_memory {  { feat1_8_address0 mem_address 1 17 }  { feat1_8_ce0 mem_ce 1 1 }  { feat1_8_we0 mem_we 1 1 }  { feat1_8_d0 mem_din 1 32 } } }
	feat1_9 { ap_memory {  { feat1_9_address0 mem_address 1 17 }  { feat1_9_ce0 mem_ce 1 1 }  { feat1_9_we0 mem_we 1 1 }  { feat1_9_d0 mem_din 1 32 } } }
}
