set moduleName conv1
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
set C_modelName {conv1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict feat1 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_2 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_3 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict feat1_4 { MEM_WIDTH 32 MEM_SIZE 605472 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict local_img { MEM_WIDTH 32 MEM_SIZE 614400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict local_img_1 { MEM_WIDTH 32 MEM_SIZE 614400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ W1mem int 32 regular {axi_master 0}  }
	{ weights1 int 64 regular  }
	{ B1mem int 32 regular {axi_master 0}  }
	{ bias1 int 64 regular  }
	{ feat1 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_2 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_3 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ feat1_4 float 32 regular {array 151368 { 0 3 } 0 1 }  }
	{ local_img float 32 regular {array 153600 { 1 1 } 1 1 }  }
	{ local_img_1 float 32 regular {array 153600 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "W1mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "weights1","offset": { "type": "dynamic","port_name": "weights1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "weights1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "B1mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bias1","offset": { "type": "dynamic","port_name": "bias1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bias1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "feat1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feat1_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_img_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 129
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_W1mem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_W1mem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_W1mem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_W1mem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_W1mem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_W1mem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_W1mem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_W1mem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_W1mem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_W1mem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_W1mem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_W1mem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_W1mem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_W1mem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_W1mem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_W1mem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_B1mem_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_B1mem_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_B1mem_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_B1mem_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_B1mem_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_B1mem_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_B1mem_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_B1mem_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B1mem_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ weights1 sc_in sc_lv 64 signal 1 } 
	{ bias1 sc_in sc_lv 64 signal 3 } 
	{ feat1_address0 sc_out sc_lv 18 signal 4 } 
	{ feat1_ce0 sc_out sc_logic 1 signal 4 } 
	{ feat1_we0 sc_out sc_logic 1 signal 4 } 
	{ feat1_d0 sc_out sc_lv 32 signal 4 } 
	{ feat1_2_address0 sc_out sc_lv 18 signal 5 } 
	{ feat1_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ feat1_2_we0 sc_out sc_logic 1 signal 5 } 
	{ feat1_2_d0 sc_out sc_lv 32 signal 5 } 
	{ feat1_3_address0 sc_out sc_lv 18 signal 6 } 
	{ feat1_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ feat1_3_we0 sc_out sc_logic 1 signal 6 } 
	{ feat1_3_d0 sc_out sc_lv 32 signal 6 } 
	{ feat1_4_address0 sc_out sc_lv 18 signal 7 } 
	{ feat1_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ feat1_4_we0 sc_out sc_logic 1 signal 7 } 
	{ feat1_4_d0 sc_out sc_lv 32 signal 7 } 
	{ local_img_address0 sc_out sc_lv 18 signal 8 } 
	{ local_img_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_img_q0 sc_in sc_lv 32 signal 8 } 
	{ local_img_address1 sc_out sc_lv 18 signal 8 } 
	{ local_img_ce1 sc_out sc_logic 1 signal 8 } 
	{ local_img_q1 sc_in sc_lv 32 signal 8 } 
	{ local_img_1_address0 sc_out sc_lv 18 signal 9 } 
	{ local_img_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_img_1_q0 sc_in sc_lv 32 signal 9 } 
	{ local_img_1_address1 sc_out sc_lv 18 signal 9 } 
	{ local_img_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ local_img_1_q1 sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_W1mem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_W1mem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_W1mem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_W1mem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_W1mem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_W1mem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_W1mem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_W1mem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_W1mem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_W1mem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_W1mem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_W1mem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_W1mem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_W1mem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_W1mem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_W1mem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_W1mem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_W1mem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_W1mem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WID" }} , 
 	{ "name": "m_axi_W1mem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_W1mem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_W1mem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_W1mem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_W1mem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_W1mem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_W1mem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_W1mem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_W1mem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_W1mem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_W1mem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_W1mem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_W1mem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_W1mem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_W1mem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_W1mem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_W1mem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_W1mem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_W1mem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RID" }} , 
 	{ "name": "m_axi_W1mem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_W1mem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_W1mem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_W1mem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_W1mem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_W1mem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_W1mem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_BID" }} , 
 	{ "name": "m_axi_W1mem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_B1mem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_B1mem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_B1mem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_B1mem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_B1mem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_B1mem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_B1mem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_B1mem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_B1mem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_B1mem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_B1mem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_B1mem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_B1mem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_B1mem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_B1mem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_B1mem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_B1mem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_B1mem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_B1mem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WID" }} , 
 	{ "name": "m_axi_B1mem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_B1mem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_B1mem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_B1mem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_B1mem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_B1mem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_B1mem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_B1mem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_B1mem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_B1mem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_B1mem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_B1mem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_B1mem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_B1mem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_B1mem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_B1mem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_B1mem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_B1mem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_B1mem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RID" }} , 
 	{ "name": "m_axi_B1mem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_B1mem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_B1mem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_B1mem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_B1mem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_B1mem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_B1mem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_BID" }} , 
 	{ "name": "m_axi_B1mem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "0_BUSER" }} , 
 	{ "name": "weights1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "default" }} , 
 	{ "name": "bias1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias1", "role": "default" }} , 
 	{ "name": "feat1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1", "role": "address0" }} , 
 	{ "name": "feat1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "ce0" }} , 
 	{ "name": "feat1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1", "role": "we0" }} , 
 	{ "name": "feat1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1", "role": "d0" }} , 
 	{ "name": "feat1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_2", "role": "address0" }} , 
 	{ "name": "feat1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_2", "role": "ce0" }} , 
 	{ "name": "feat1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_2", "role": "we0" }} , 
 	{ "name": "feat1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_2", "role": "d0" }} , 
 	{ "name": "feat1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_3", "role": "address0" }} , 
 	{ "name": "feat1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "ce0" }} , 
 	{ "name": "feat1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_3", "role": "we0" }} , 
 	{ "name": "feat1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_3", "role": "d0" }} , 
 	{ "name": "feat1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "feat1_4", "role": "address0" }} , 
 	{ "name": "feat1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "ce0" }} , 
 	{ "name": "feat1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "feat1_4", "role": "we0" }} , 
 	{ "name": "feat1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "feat1_4", "role": "d0" }} , 
 	{ "name": "local_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img", "role": "address0" }} , 
 	{ "name": "local_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img", "role": "ce0" }} , 
 	{ "name": "local_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img", "role": "q0" }} , 
 	{ "name": "local_img_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img", "role": "address1" }} , 
 	{ "name": "local_img_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img", "role": "ce1" }} , 
 	{ "name": "local_img_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img", "role": "q1" }} , 
 	{ "name": "local_img_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img_1", "role": "address0" }} , 
 	{ "name": "local_img_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img_1", "role": "ce0" }} , 
 	{ "name": "local_img_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1", "role": "q0" }} , 
 	{ "name": "local_img_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "local_img_1", "role": "address1" }} , 
 	{ "name": "local_img_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_img_1", "role": "ce1" }} , 
 	{ "name": "local_img_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_img_1", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv1 {
		W1mem {Type I LastRead 35 FirstWrite -1}
		weights1 {Type I LastRead 0 FirstWrite -1}
		B1mem {Type I LastRead 9 FirstWrite -1}
		bias1 {Type I LastRead 0 FirstWrite -1}
		feat1 {Type O LastRead -1 FirstWrite 170}
		feat1_2 {Type O LastRead -1 FirstWrite 170}
		feat1_3 {Type O LastRead -1 FirstWrite 170}
		feat1_4 {Type O LastRead -1 FirstWrite 170}
		local_img {Type I LastRead 10 FirstWrite -1}
		local_img_1 {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16347889", "Max" : "16347889"}
	, {"Name" : "Interval", "Min" : "16347889", "Max" : "16347889"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_W1mem_0_AWVALID VALID 1 1 }  { m_axi_W1mem_0_AWREADY READY 0 1 }  { m_axi_W1mem_0_AWADDR ADDR 1 64 }  { m_axi_W1mem_0_AWID ID 1 1 }  { m_axi_W1mem_0_AWLEN SIZE 1 32 }  { m_axi_W1mem_0_AWSIZE BURST 1 3 }  { m_axi_W1mem_0_AWBURST LOCK 1 2 }  { m_axi_W1mem_0_AWLOCK CACHE 1 2 }  { m_axi_W1mem_0_AWCACHE PROT 1 4 }  { m_axi_W1mem_0_AWPROT QOS 1 3 }  { m_axi_W1mem_0_AWQOS REGION 1 4 }  { m_axi_W1mem_0_AWREGION USER 1 4 }  { m_axi_W1mem_0_AWUSER DATA 1 1 }  { m_axi_W1mem_0_WVALID VALID 1 1 }  { m_axi_W1mem_0_WREADY READY 0 1 }  { m_axi_W1mem_0_WDATA FIFONUM 1 32 }  { m_axi_W1mem_0_WSTRB STRB 1 4 }  { m_axi_W1mem_0_WLAST LAST 1 1 }  { m_axi_W1mem_0_WID ID 1 1 }  { m_axi_W1mem_0_WUSER DATA 1 1 }  { m_axi_W1mem_0_ARVALID VALID 1 1 }  { m_axi_W1mem_0_ARREADY READY 0 1 }  { m_axi_W1mem_0_ARADDR ADDR 1 64 }  { m_axi_W1mem_0_ARID ID 1 1 }  { m_axi_W1mem_0_ARLEN SIZE 1 32 }  { m_axi_W1mem_0_ARSIZE BURST 1 3 }  { m_axi_W1mem_0_ARBURST LOCK 1 2 }  { m_axi_W1mem_0_ARLOCK CACHE 1 2 }  { m_axi_W1mem_0_ARCACHE PROT 1 4 }  { m_axi_W1mem_0_ARPROT QOS 1 3 }  { m_axi_W1mem_0_ARQOS REGION 1 4 }  { m_axi_W1mem_0_ARREGION USER 1 4 }  { m_axi_W1mem_0_ARUSER DATA 1 1 }  { m_axi_W1mem_0_RVALID VALID 0 1 }  { m_axi_W1mem_0_RREADY READY 1 1 }  { m_axi_W1mem_0_RDATA FIFONUM 0 32 }  { m_axi_W1mem_0_RLAST LAST 0 1 }  { m_axi_W1mem_0_RID ID 0 1 }  { m_axi_W1mem_0_RFIFONUM LEN 0 9 }  { m_axi_W1mem_0_RUSER DATA 0 1 }  { m_axi_W1mem_0_RRESP RESP 0 2 }  { m_axi_W1mem_0_BVALID VALID 0 1 }  { m_axi_W1mem_0_BREADY READY 1 1 }  { m_axi_W1mem_0_BRESP RESP 0 2 }  { m_axi_W1mem_0_BID ID 0 1 }  { m_axi_W1mem_0_BUSER DATA 0 1 } } }
	weights1 { ap_none {  { weights1 in_data 0 64 } } }
	 { m_axi {  { m_axi_B1mem_0_AWVALID VALID 1 1 }  { m_axi_B1mem_0_AWREADY READY 0 1 }  { m_axi_B1mem_0_AWADDR ADDR 1 64 }  { m_axi_B1mem_0_AWID ID 1 1 }  { m_axi_B1mem_0_AWLEN SIZE 1 32 }  { m_axi_B1mem_0_AWSIZE BURST 1 3 }  { m_axi_B1mem_0_AWBURST LOCK 1 2 }  { m_axi_B1mem_0_AWLOCK CACHE 1 2 }  { m_axi_B1mem_0_AWCACHE PROT 1 4 }  { m_axi_B1mem_0_AWPROT QOS 1 3 }  { m_axi_B1mem_0_AWQOS REGION 1 4 }  { m_axi_B1mem_0_AWREGION USER 1 4 }  { m_axi_B1mem_0_AWUSER DATA 1 1 }  { m_axi_B1mem_0_WVALID VALID 1 1 }  { m_axi_B1mem_0_WREADY READY 0 1 }  { m_axi_B1mem_0_WDATA FIFONUM 1 32 }  { m_axi_B1mem_0_WSTRB STRB 1 4 }  { m_axi_B1mem_0_WLAST LAST 1 1 }  { m_axi_B1mem_0_WID ID 1 1 }  { m_axi_B1mem_0_WUSER DATA 1 1 }  { m_axi_B1mem_0_ARVALID VALID 1 1 }  { m_axi_B1mem_0_ARREADY READY 0 1 }  { m_axi_B1mem_0_ARADDR ADDR 1 64 }  { m_axi_B1mem_0_ARID ID 1 1 }  { m_axi_B1mem_0_ARLEN SIZE 1 32 }  { m_axi_B1mem_0_ARSIZE BURST 1 3 }  { m_axi_B1mem_0_ARBURST LOCK 1 2 }  { m_axi_B1mem_0_ARLOCK CACHE 1 2 }  { m_axi_B1mem_0_ARCACHE PROT 1 4 }  { m_axi_B1mem_0_ARPROT QOS 1 3 }  { m_axi_B1mem_0_ARQOS REGION 1 4 }  { m_axi_B1mem_0_ARREGION USER 1 4 }  { m_axi_B1mem_0_ARUSER DATA 1 1 }  { m_axi_B1mem_0_RVALID VALID 0 1 }  { m_axi_B1mem_0_RREADY READY 1 1 }  { m_axi_B1mem_0_RDATA FIFONUM 0 32 }  { m_axi_B1mem_0_RLAST LAST 0 1 }  { m_axi_B1mem_0_RID ID 0 1 }  { m_axi_B1mem_0_RFIFONUM LEN 0 9 }  { m_axi_B1mem_0_RUSER DATA 0 1 }  { m_axi_B1mem_0_RRESP RESP 0 2 }  { m_axi_B1mem_0_BVALID VALID 0 1 }  { m_axi_B1mem_0_BREADY READY 1 1 }  { m_axi_B1mem_0_BRESP RESP 0 2 }  { m_axi_B1mem_0_BID ID 0 1 }  { m_axi_B1mem_0_BUSER DATA 0 1 } } }
	bias1 { ap_none {  { bias1 in_data 0 64 } } }
	feat1 { ap_memory {  { feat1_address0 mem_address 1 18 }  { feat1_ce0 mem_ce 1 1 }  { feat1_we0 mem_we 1 1 }  { feat1_d0 mem_din 1 32 } } }
	feat1_2 { ap_memory {  { feat1_2_address0 mem_address 1 18 }  { feat1_2_ce0 mem_ce 1 1 }  { feat1_2_we0 mem_we 1 1 }  { feat1_2_d0 mem_din 1 32 } } }
	feat1_3 { ap_memory {  { feat1_3_address0 mem_address 1 18 }  { feat1_3_ce0 mem_ce 1 1 }  { feat1_3_we0 mem_we 1 1 }  { feat1_3_d0 mem_din 1 32 } } }
	feat1_4 { ap_memory {  { feat1_4_address0 mem_address 1 18 }  { feat1_4_ce0 mem_ce 1 1 }  { feat1_4_we0 mem_we 1 1 }  { feat1_4_d0 mem_din 1 32 } } }
	local_img { ap_memory {  { local_img_address0 mem_address 1 18 }  { local_img_ce0 mem_ce 1 1 }  { local_img_q0 mem_dout 0 32 }  { local_img_address1 MemPortADDR2 1 18 }  { local_img_ce1 MemPortCE2 1 1 }  { local_img_q1 MemPortDOUT2 0 32 } } }
	local_img_1 { ap_memory {  { local_img_1_address0 mem_address 1 18 }  { local_img_1_ce0 mem_ce 1 1 }  { local_img_1_q0 mem_dout 0 32 }  { local_img_1_address1 MemPortADDR2 1 18 }  { local_img_1_ce1 MemPortCE2 1 1 }  { local_img_1_q1 MemPortDOUT2 0 32 } } }
}
