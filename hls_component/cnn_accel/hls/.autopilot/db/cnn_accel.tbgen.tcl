set moduleName cnn_accel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type dataflow
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
set C_modelName {cnn_accel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ IMGmem int 32 regular {axi_master 0}  }
	{ W1mem int 32 regular {axi_master 0}  }
	{ B1mem int 32 regular {axi_master 0}  }
	{ W2mem int 32 regular {axi_master 0}  }
	{ B2mem int 32 regular {axi_master 0}  }
	{ W3mem int 32 regular {axi_master 0}  }
	{ B3mem int 32 regular {axi_master 0}  }
	{ W4mem int 32 regular {axi_master 0}  }
	{ B4mem int 32 regular {axi_master 0}  }
	{ Foutmem int 8 regular {axi_master 1}  }
	{ img_in int 64 regular {axi_slave 0}  }
	{ weights1 int 64 regular {axi_slave 0}  }
	{ bias1 int 64 regular {axi_slave 0}  }
	{ weights2 int 64 regular {axi_slave 0}  }
	{ bias2 int 64 regular {axi_slave 0}  }
	{ FC1_W int 64 regular {axi_slave 0}  }
	{ FC1_B int 64 regular {axi_slave 0}  }
	{ FC2_W int 64 regular {axi_slave 0}  }
	{ FC2_B int 64 regular {axi_slave 0}  }
	{ flag_out int 64 regular {axi_slave 0}  }
	{ ctrl int 32 unused {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "IMGmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "img_in","offset": { "type": "dynamic","port_name": "img_in","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W1mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "weights1","offset": { "type": "dynamic","port_name": "weights1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B1mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bias1","offset": { "type": "dynamic","port_name": "bias1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W2mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "weights2","offset": { "type": "dynamic","port_name": "weights2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B2mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W3mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "FC1_W","offset": { "type": "dynamic","port_name": "FC1_W","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B3mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "FC1_B","offset": { "type": "dynamic","port_name": "FC1_B","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "W4mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "FC2_W","offset": { "type": "dynamic","port_name": "FC2_W","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B4mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "FC2_B","offset": { "type": "dynamic","port_name": "FC2_B","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "Foutmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "flag_out","offset": { "type": "dynamic","port_name": "flag_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "img_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "weights1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "bias1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "weights2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "bias2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "FC1_W", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "FC1_B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "FC2_W", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "FC2_B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "flag_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "ctrl", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} ]}
# RTL Port declarations: 
set portNum 470
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_B1mem_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_B1mem_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_B1mem_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_B1mem_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_B1mem_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_B1mem_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_B1mem_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_B1mem_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_B1mem_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_B1mem_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_B1mem_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B1mem_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_B1mem_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_B1mem_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_B1mem_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_B1mem_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_B2mem_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_B2mem_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_B2mem_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_B2mem_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_B2mem_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_B2mem_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_B2mem_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_B2mem_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_B2mem_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_B2mem_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_B2mem_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_B2mem_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_B2mem_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_B2mem_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_B2mem_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_B2mem_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_B2mem_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_B2mem_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_B2mem_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_B2mem_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_B2mem_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_B2mem_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_B2mem_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_B2mem_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_B3mem_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_B3mem_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_B3mem_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_B3mem_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_B3mem_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_B3mem_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_B3mem_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_B3mem_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_B3mem_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_B3mem_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_B3mem_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_B3mem_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_B3mem_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_B3mem_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_B3mem_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_B3mem_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_B3mem_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_B3mem_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_B3mem_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_B3mem_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_B3mem_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_B3mem_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_B3mem_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_B3mem_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_B4mem_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_B4mem_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_B4mem_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_B4mem_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_B4mem_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_B4mem_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_B4mem_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_B4mem_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_B4mem_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_B4mem_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_B4mem_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_B4mem_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_B4mem_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_B4mem_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_B4mem_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_B4mem_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_B4mem_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_B4mem_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_B4mem_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_B4mem_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_B4mem_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_B4mem_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_B4mem_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_B4mem_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_Foutmem_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_Foutmem_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_Foutmem_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_Foutmem_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_Foutmem_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_Foutmem_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_Foutmem_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_Foutmem_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_Foutmem_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_Foutmem_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_Foutmem_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_Foutmem_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_Foutmem_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_Foutmem_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_Foutmem_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_IMGmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_IMGmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IMGmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IMGmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IMGmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_IMGmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_IMGmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IMGmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IMGmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IMGmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IMGmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_IMGmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IMGmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IMGmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IMGmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_W1mem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_W1mem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_W1mem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W1mem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W1mem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W1mem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W1mem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_W1mem_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_W1mem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_W1mem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W1mem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W1mem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W1mem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W1mem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W1mem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W1mem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_W1mem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W1mem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_W1mem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W1mem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W1mem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W1mem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W1mem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W1mem_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_W2mem_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_W2mem_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_W2mem_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_W2mem_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_W2mem_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_W2mem_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_W2mem_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_W2mem_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_W2mem_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_W2mem_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_W2mem_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_W2mem_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_W2mem_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_W2mem_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_W2mem_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W2mem_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_W2mem_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_W2mem_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_W2mem_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_W2mem_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_W2mem_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_W2mem_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_W2mem_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_W2mem_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_W3mem_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_W3mem_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_W3mem_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_W3mem_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_W3mem_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_W3mem_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_W3mem_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_W3mem_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_W3mem_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_W3mem_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_W3mem_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_W3mem_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_W3mem_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_W3mem_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_W3mem_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_W3mem_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_W3mem_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_W3mem_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_W3mem_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_W3mem_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_W3mem_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_W3mem_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_W3mem_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_W3mem_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_W4mem_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_W4mem_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_W4mem_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_W4mem_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_W4mem_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_W4mem_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_W4mem_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_W4mem_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_W4mem_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_W4mem_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_W4mem_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_W4mem_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_W4mem_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_W4mem_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_W4mem_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_W4mem_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_W4mem_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_W4mem_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_W4mem_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_W4mem_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_W4mem_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_W4mem_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_W4mem_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_W4mem_BUSER sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cnn_accel","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_in","role":"data","value":"16"},{"name":"weights1","role":"data","value":"28"},{"name":"bias1","role":"data","value":"40"},{"name":"weights2","role":"data","value":"52"},{"name":"bias2","role":"data","value":"64"},{"name":"FC1_W","role":"data","value":"76"},{"name":"FC1_B","role":"data","value":"88"},{"name":"FC2_W","role":"data","value":"100"},{"name":"FC2_B","role":"data","value":"112"},{"name":"flag_out","role":"data","value":"124"},{"name":"ctrl","role":"data","value":"136"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cnn_accel","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accel","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_B1mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B1mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B1mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B1mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B1mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "AWID" }} , 
 	{ "name": "m_axi_B1mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B1mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B1mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B1mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B1mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B1mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B1mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B1mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B1mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B1mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B1mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_B1mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_B1mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_B1mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B1mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_B1mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "WID" }} , 
 	{ "name": "m_axi_B1mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_B1mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B1mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B1mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B1mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B1mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "ARID" }} , 
 	{ "name": "m_axi_B1mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B1mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B1mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B1mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B1mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B1mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B1mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B1mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B1mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B1mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B1mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B1mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B1mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_B1mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_B1mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B1mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_B1mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_B1mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "RID" }} , 
 	{ "name": "m_axi_B1mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_B1mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_B1mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_B1mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_B1mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B1mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_B1mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "BID" }} , 
 	{ "name": "m_axi_B1mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B1mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_B2mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B2mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B2mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B2mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B2mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "AWID" }} , 
 	{ "name": "m_axi_B2mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B2mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B2mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B2mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B2mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B2mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B2mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B2mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B2mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B2mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B2mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_B2mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_B2mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_B2mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B2mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_B2mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "WID" }} , 
 	{ "name": "m_axi_B2mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_B2mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B2mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B2mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B2mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B2mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "ARID" }} , 
 	{ "name": "m_axi_B2mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B2mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B2mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B2mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B2mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B2mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B2mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B2mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B2mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B2mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B2mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B2mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B2mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_B2mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_B2mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B2mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_B2mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_B2mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "RID" }} , 
 	{ "name": "m_axi_B2mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_B2mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_B2mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_B2mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_B2mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B2mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_B2mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "BID" }} , 
 	{ "name": "m_axi_B2mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B2mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_B3mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B3mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B3mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B3mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B3mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "AWID" }} , 
 	{ "name": "m_axi_B3mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B3mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B3mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B3mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B3mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B3mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B3mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B3mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B3mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B3mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B3mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B3mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B3mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_B3mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_B3mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B3mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_B3mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B3mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_B3mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "WID" }} , 
 	{ "name": "m_axi_B3mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_B3mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B3mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B3mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B3mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B3mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "ARID" }} , 
 	{ "name": "m_axi_B3mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B3mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B3mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B3mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B3mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B3mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B3mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B3mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B3mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B3mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B3mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B3mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B3mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B3mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_B3mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_B3mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B3mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_B3mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_B3mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "RID" }} , 
 	{ "name": "m_axi_B3mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_B3mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_B3mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_B3mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_B3mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B3mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_B3mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "BID" }} , 
 	{ "name": "m_axi_B3mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B3mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_B4mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B4mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B4mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B4mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B4mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "AWID" }} , 
 	{ "name": "m_axi_B4mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B4mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B4mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B4mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B4mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B4mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B4mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B4mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B4mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B4mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B4mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B4mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B4mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_B4mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_B4mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B4mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_B4mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B4mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_B4mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "WID" }} , 
 	{ "name": "m_axi_B4mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_B4mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B4mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B4mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B4mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B4mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "ARID" }} , 
 	{ "name": "m_axi_B4mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B4mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B4mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B4mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B4mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B4mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B4mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B4mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B4mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B4mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B4mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B4mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B4mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B4mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_B4mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_B4mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B4mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_B4mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_B4mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "RID" }} , 
 	{ "name": "m_axi_B4mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_B4mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_B4mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_B4mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_B4mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B4mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_B4mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "BID" }} , 
 	{ "name": "m_axi_B4mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B4mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_Foutmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Foutmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Foutmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Foutmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWID" }} , 
 	{ "name": "m_axi_Foutmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Foutmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Foutmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Foutmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Foutmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Foutmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Foutmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Foutmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Foutmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Foutmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_Foutmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_Foutmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Foutmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_Foutmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Foutmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_Foutmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "WID" }} , 
 	{ "name": "m_axi_Foutmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_Foutmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Foutmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Foutmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Foutmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARID" }} , 
 	{ "name": "m_axi_Foutmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Foutmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Foutmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Foutmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Foutmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Foutmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Foutmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Foutmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Foutmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Foutmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_Foutmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_Foutmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Foutmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_Foutmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_Foutmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "RID" }} , 
 	{ "name": "m_axi_Foutmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_Foutmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_Foutmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_Foutmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_Foutmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Foutmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_Foutmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "BID" }} , 
 	{ "name": "m_axi_Foutmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Foutmem", "role": "BUSER" }} , 
 	{ "name": "m_axi_IMGmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IMGmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IMGmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IMGmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWID" }} , 
 	{ "name": "m_axi_IMGmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IMGmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IMGmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IMGmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IMGmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IMGmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IMGmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IMGmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IMGmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IMGmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_IMGmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_IMGmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IMGmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_IMGmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IMGmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_IMGmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "WID" }} , 
 	{ "name": "m_axi_IMGmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_IMGmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IMGmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IMGmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IMGmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARID" }} , 
 	{ "name": "m_axi_IMGmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IMGmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IMGmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IMGmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IMGmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IMGmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IMGmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IMGmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IMGmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IMGmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_IMGmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_IMGmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IMGmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_IMGmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_IMGmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "RID" }} , 
 	{ "name": "m_axi_IMGmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_IMGmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_IMGmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_IMGmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_IMGmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IMGmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_IMGmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "BID" }} , 
 	{ "name": "m_axi_IMGmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IMGmem", "role": "BUSER" }} , 
 	{ "name": "m_axi_W1mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W1mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W1mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W1mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "AWID" }} , 
 	{ "name": "m_axi_W1mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W1mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W1mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W1mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W1mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W1mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W1mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W1mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W1mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W1mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_W1mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_W1mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_W1mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W1mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_W1mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "WID" }} , 
 	{ "name": "m_axi_W1mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_W1mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W1mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W1mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W1mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W1mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "ARID" }} , 
 	{ "name": "m_axi_W1mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W1mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W1mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W1mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W1mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W1mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W1mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W1mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W1mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W1mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W1mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W1mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W1mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_W1mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_W1mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W1mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_W1mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_W1mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "RID" }} , 
 	{ "name": "m_axi_W1mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_W1mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_W1mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_W1mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_W1mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W1mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_W1mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "BID" }} , 
 	{ "name": "m_axi_W1mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W1mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_W2mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W2mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W2mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W2mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "AWID" }} , 
 	{ "name": "m_axi_W2mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W2mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W2mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W2mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W2mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W2mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W2mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W2mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W2mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W2mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W2mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W2mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W2mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_W2mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_W2mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W2mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_W2mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W2mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_W2mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "WID" }} , 
 	{ "name": "m_axi_W2mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_W2mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W2mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W2mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W2mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W2mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "ARID" }} , 
 	{ "name": "m_axi_W2mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W2mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W2mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W2mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W2mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W2mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W2mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W2mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W2mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W2mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W2mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W2mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W2mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W2mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_W2mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_W2mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W2mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_W2mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_W2mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "RID" }} , 
 	{ "name": "m_axi_W2mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_W2mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_W2mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_W2mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_W2mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W2mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_W2mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "BID" }} , 
 	{ "name": "m_axi_W2mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W2mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_W3mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W3mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W3mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W3mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W3mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "AWID" }} , 
 	{ "name": "m_axi_W3mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W3mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W3mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W3mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W3mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W3mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W3mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W3mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W3mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W3mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W3mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W3mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W3mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_W3mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_W3mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W3mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_W3mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W3mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_W3mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "WID" }} , 
 	{ "name": "m_axi_W3mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_W3mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W3mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W3mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W3mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W3mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "ARID" }} , 
 	{ "name": "m_axi_W3mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W3mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W3mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W3mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W3mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W3mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W3mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W3mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W3mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W3mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W3mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W3mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W3mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W3mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_W3mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_W3mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W3mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_W3mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_W3mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "RID" }} , 
 	{ "name": "m_axi_W3mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_W3mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_W3mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_W3mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_W3mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W3mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_W3mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "BID" }} , 
 	{ "name": "m_axi_W3mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W3mem", "role": "BUSER" }} , 
 	{ "name": "m_axi_W4mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W4mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W4mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W4mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W4mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "AWID" }} , 
 	{ "name": "m_axi_W4mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W4mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W4mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W4mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W4mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W4mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W4mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W4mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W4mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W4mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W4mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W4mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W4mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_W4mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_W4mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W4mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_W4mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W4mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_W4mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "WID" }} , 
 	{ "name": "m_axi_W4mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_W4mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W4mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W4mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "W4mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W4mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "ARID" }} , 
 	{ "name": "m_axi_W4mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W4mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W4mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W4mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W4mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W4mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W4mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W4mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W4mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W4mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W4mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W4mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W4mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W4mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_W4mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_W4mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W4mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_W4mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_W4mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "RID" }} , 
 	{ "name": "m_axi_W4mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_W4mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_W4mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_W4mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_W4mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W4mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_W4mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "BID" }} , 
 	{ "name": "m_axi_W4mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W4mem", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accel {
		IMGmem {Type I LastRead 9 FirstWrite -1}
		W1mem {Type I LastRead 35 FirstWrite -1}
		B1mem {Type I LastRead 9 FirstWrite -1}
		W2mem {Type I LastRead 80 FirstWrite -1}
		B2mem {Type I LastRead 9 FirstWrite -1}
		W3mem {Type I LastRead 12 FirstWrite -1}
		B3mem {Type I LastRead 9 FirstWrite -1}
		W4mem {Type I LastRead 0 FirstWrite -1}
		B4mem {Type I LastRead 8 FirstWrite -1}
		Foutmem {Type O LastRead 40 FirstWrite 39}
		img_in {Type I LastRead 0 FirstWrite -1}
		weights1 {Type I LastRead 0 FirstWrite -1}
		bias1 {Type I LastRead 0 FirstWrite -1}
		weights2 {Type I LastRead 0 FirstWrite -1}
		bias2 {Type I LastRead 0 FirstWrite -1}
		FC1_W {Type I LastRead 0 FirstWrite -1}
		FC1_B {Type I LastRead 0 FirstWrite -1}
		FC2_W {Type I LastRead 0 FirstWrite -1}
		FC2_B {Type I LastRead 0 FirstWrite -1}
		flag_out {Type I LastRead 0 FirstWrite -1}
		ctrl {Type I LastRead -1 FirstWrite -1}
		local_img {Type IO LastRead -1 FirstWrite -1}
		local_img_1 {Type IO LastRead -1 FirstWrite -1}
		feat1 {Type IO LastRead -1 FirstWrite -1}
		feat1_2 {Type IO LastRead -1 FirstWrite -1}
		feat1_3 {Type IO LastRead -1 FirstWrite -1}
		feat1_4 {Type IO LastRead -1 FirstWrite -1}
		feat1_p {Type IO LastRead -1 FirstWrite -1}
		feat1_p_5 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_6 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_7 {Type IO LastRead -1 FirstWrite -1}
		feat2 {Type IO LastRead -1 FirstWrite -1}
		feat2_10 {Type IO LastRead -1 FirstWrite -1}
		feat2_8 {Type IO LastRead -1 FirstWrite -1}
		feat2_9 {Type IO LastRead -1 FirstWrite -1}
		feat2_p {Type IO LastRead -1 FirstWrite -1}
		feat2_p_11 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_12 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_13 {Type IO LastRead -1 FirstWrite -1}
		vec1 {Type IO LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		vec2 {Type IO LastRead -1 FirstWrite -1}}
	load_img {
		IMGmem {Type I LastRead 9 FirstWrite -1}
		img_in {Type I LastRead 0 FirstWrite -1}
		local_img {Type O LastRead -1 FirstWrite 10}
		local_img_1 {Type O LastRead -1 FirstWrite 10}}
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
		local_img_1 {Type I LastRead 6 FirstWrite -1}}
	pool1 {
		feat1_p {Type O LastRead -1 FirstWrite 12}
		feat1_p_5 {Type O LastRead -1 FirstWrite 12}
		feat1_p_6 {Type O LastRead -1 FirstWrite 12}
		feat1_p_7 {Type O LastRead -1 FirstWrite 12}
		feat1 {Type I LastRead 4 FirstWrite -1}
		feat1_2 {Type I LastRead 4 FirstWrite -1}
		feat1_3 {Type I LastRead 4 FirstWrite -1}
		feat1_4 {Type I LastRead 4 FirstWrite -1}}
	conv2 {
		W2mem {Type I LastRead 80 FirstWrite -1}
		weights2 {Type I LastRead 0 FirstWrite -1}
		B2mem {Type I LastRead 9 FirstWrite -1}
		bias2 {Type I LastRead 0 FirstWrite -1}
		feat1_p {Type I LastRead 10 FirstWrite -1}
		feat1_p_5 {Type I LastRead 10 FirstWrite -1}
		feat1_p_6 {Type I LastRead 10 FirstWrite -1}
		feat1_p_7 {Type I LastRead 10 FirstWrite -1}
		feat2 {Type O LastRead -1 FirstWrite 440}
		feat2_10 {Type O LastRead -1 FirstWrite 440}
		feat2_8 {Type O LastRead -1 FirstWrite 440}
		feat2_9 {Type O LastRead -1 FirstWrite 440}}
	pool2 {
		feat2_p {Type O LastRead -1 FirstWrite 11}
		feat2_p_11 {Type O LastRead -1 FirstWrite 11}
		feat2_p_12 {Type O LastRead -1 FirstWrite 11}
		feat2_p_13 {Type O LastRead -1 FirstWrite 11}
		feat2 {Type I LastRead 3 FirstWrite -1}
		feat2_8 {Type I LastRead 3 FirstWrite -1}
		feat2_9 {Type I LastRead 3 FirstWrite -1}
		feat2_10 {Type I LastRead 3 FirstWrite -1}}
	flatten {
		feat2_p {Type I LastRead 3 FirstWrite -1}
		feat2_p_11 {Type I LastRead 3 FirstWrite -1}
		feat2_p_12 {Type I LastRead 3 FirstWrite -1}
		feat2_p_13 {Type I LastRead 3 FirstWrite -1}
		vec1 {Type O LastRead -1 FirstWrite 4}}
	fc1 {
		W3mem {Type I LastRead 12 FirstWrite -1}
		FC1_W {Type I LastRead 0 FirstWrite -1}
		B3mem {Type I LastRead 9 FirstWrite -1}
		FC1_B {Type I LastRead 0 FirstWrite -1}
		vec1 {Type I LastRead 11 FirstWrite -1}
		vec2 {Type O LastRead -1 FirstWrite 73}
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
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	fc2 {
		FC2_B {Type I LastRead 0 FirstWrite -1}
		B4mem {Type I LastRead 8 FirstWrite -1}
		W4mem {Type I LastRead 0 FirstWrite -1}
		FC2_W {Type I LastRead 0 FirstWrite -1}
		Foutmem {Type O LastRead 40 FirstWrite 39}
		flag_out {Type I LastRead 38 FirstWrite -1}
		vec2 {Type I LastRead 0 FirstWrite -1}}
	fc2_Pipeline_FC2_LOOP {
		acc2 {Type I LastRead 0 FirstWrite -1}
		W4mem {Type I LastRead 0 FirstWrite -1}
		sext_ln286 {Type I LastRead 0 FirstWrite -1}
		acc2_2_out {Type O LastRead -1 FirstWrite 9}
		vec2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64570463", "Max" : "64570463"}
	, {"Name" : "Interval", "Min" : "25481290", "Max" : "25481290"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	IMGmem { m_axi {  { m_axi_IMGmem_AWVALID VALID 1 1 }  { m_axi_IMGmem_AWREADY READY 0 1 }  { m_axi_IMGmem_AWADDR ADDR 1 64 }  { m_axi_IMGmem_AWID ID 1 1 }  { m_axi_IMGmem_AWLEN SIZE 1 8 }  { m_axi_IMGmem_AWSIZE BURST 1 3 }  { m_axi_IMGmem_AWBURST LOCK 1 2 }  { m_axi_IMGmem_AWLOCK CACHE 1 2 }  { m_axi_IMGmem_AWCACHE PROT 1 4 }  { m_axi_IMGmem_AWPROT QOS 1 3 }  { m_axi_IMGmem_AWQOS REGION 1 4 }  { m_axi_IMGmem_AWREGION USER 1 4 }  { m_axi_IMGmem_AWUSER DATA 1 1 }  { m_axi_IMGmem_WVALID VALID 1 1 }  { m_axi_IMGmem_WREADY READY 0 1 }  { m_axi_IMGmem_WDATA FIFONUM 1 32 }  { m_axi_IMGmem_WSTRB STRB 1 4 }  { m_axi_IMGmem_WLAST LAST 1 1 }  { m_axi_IMGmem_WID ID 1 1 }  { m_axi_IMGmem_WUSER DATA 1 1 }  { m_axi_IMGmem_ARVALID VALID 1 1 }  { m_axi_IMGmem_ARREADY READY 0 1 }  { m_axi_IMGmem_ARADDR ADDR 1 64 }  { m_axi_IMGmem_ARID ID 1 1 }  { m_axi_IMGmem_ARLEN SIZE 1 8 }  { m_axi_IMGmem_ARSIZE BURST 1 3 }  { m_axi_IMGmem_ARBURST LOCK 1 2 }  { m_axi_IMGmem_ARLOCK CACHE 1 2 }  { m_axi_IMGmem_ARCACHE PROT 1 4 }  { m_axi_IMGmem_ARPROT QOS 1 3 }  { m_axi_IMGmem_ARQOS REGION 1 4 }  { m_axi_IMGmem_ARREGION USER 1 4 }  { m_axi_IMGmem_ARUSER DATA 1 1 }  { m_axi_IMGmem_RVALID VALID 0 1 }  { m_axi_IMGmem_RREADY READY 1 1 }  { m_axi_IMGmem_RDATA FIFONUM 0 32 }  { m_axi_IMGmem_RLAST LAST 0 1 }  { m_axi_IMGmem_RID ID 0 1 }  { m_axi_IMGmem_RUSER DATA 0 1 }  { m_axi_IMGmem_RRESP RESP 0 2 }  { m_axi_IMGmem_BVALID VALID 0 1 }  { m_axi_IMGmem_BREADY READY 1 1 }  { m_axi_IMGmem_BRESP RESP 0 2 }  { m_axi_IMGmem_BID ID 0 1 }  { m_axi_IMGmem_BUSER DATA 0 1 } } }
	W1mem { m_axi {  { m_axi_W1mem_AWVALID VALID 1 1 }  { m_axi_W1mem_AWREADY READY 0 1 }  { m_axi_W1mem_AWADDR ADDR 1 64 }  { m_axi_W1mem_AWID ID 1 1 }  { m_axi_W1mem_AWLEN SIZE 1 8 }  { m_axi_W1mem_AWSIZE BURST 1 3 }  { m_axi_W1mem_AWBURST LOCK 1 2 }  { m_axi_W1mem_AWLOCK CACHE 1 2 }  { m_axi_W1mem_AWCACHE PROT 1 4 }  { m_axi_W1mem_AWPROT QOS 1 3 }  { m_axi_W1mem_AWQOS REGION 1 4 }  { m_axi_W1mem_AWREGION USER 1 4 }  { m_axi_W1mem_AWUSER DATA 1 1 }  { m_axi_W1mem_WVALID VALID 1 1 }  { m_axi_W1mem_WREADY READY 0 1 }  { m_axi_W1mem_WDATA FIFONUM 1 32 }  { m_axi_W1mem_WSTRB STRB 1 4 }  { m_axi_W1mem_WLAST LAST 1 1 }  { m_axi_W1mem_WID ID 1 1 }  { m_axi_W1mem_WUSER DATA 1 1 }  { m_axi_W1mem_ARVALID VALID 1 1 }  { m_axi_W1mem_ARREADY READY 0 1 }  { m_axi_W1mem_ARADDR ADDR 1 64 }  { m_axi_W1mem_ARID ID 1 1 }  { m_axi_W1mem_ARLEN SIZE 1 8 }  { m_axi_W1mem_ARSIZE BURST 1 3 }  { m_axi_W1mem_ARBURST LOCK 1 2 }  { m_axi_W1mem_ARLOCK CACHE 1 2 }  { m_axi_W1mem_ARCACHE PROT 1 4 }  { m_axi_W1mem_ARPROT QOS 1 3 }  { m_axi_W1mem_ARQOS REGION 1 4 }  { m_axi_W1mem_ARREGION USER 1 4 }  { m_axi_W1mem_ARUSER DATA 1 1 }  { m_axi_W1mem_RVALID VALID 0 1 }  { m_axi_W1mem_RREADY READY 1 1 }  { m_axi_W1mem_RDATA FIFONUM 0 32 }  { m_axi_W1mem_RLAST LAST 0 1 }  { m_axi_W1mem_RID ID 0 1 }  { m_axi_W1mem_RUSER DATA 0 1 }  { m_axi_W1mem_RRESP RESP 0 2 }  { m_axi_W1mem_BVALID VALID 0 1 }  { m_axi_W1mem_BREADY READY 1 1 }  { m_axi_W1mem_BRESP RESP 0 2 }  { m_axi_W1mem_BID ID 0 1 }  { m_axi_W1mem_BUSER DATA 0 1 } } }
	B1mem { m_axi {  { m_axi_B1mem_AWVALID VALID 1 1 }  { m_axi_B1mem_AWREADY READY 0 1 }  { m_axi_B1mem_AWADDR ADDR 1 64 }  { m_axi_B1mem_AWID ID 1 1 }  { m_axi_B1mem_AWLEN SIZE 1 8 }  { m_axi_B1mem_AWSIZE BURST 1 3 }  { m_axi_B1mem_AWBURST LOCK 1 2 }  { m_axi_B1mem_AWLOCK CACHE 1 2 }  { m_axi_B1mem_AWCACHE PROT 1 4 }  { m_axi_B1mem_AWPROT QOS 1 3 }  { m_axi_B1mem_AWQOS REGION 1 4 }  { m_axi_B1mem_AWREGION USER 1 4 }  { m_axi_B1mem_AWUSER DATA 1 1 }  { m_axi_B1mem_WVALID VALID 1 1 }  { m_axi_B1mem_WREADY READY 0 1 }  { m_axi_B1mem_WDATA FIFONUM 1 32 }  { m_axi_B1mem_WSTRB STRB 1 4 }  { m_axi_B1mem_WLAST LAST 1 1 }  { m_axi_B1mem_WID ID 1 1 }  { m_axi_B1mem_WUSER DATA 1 1 }  { m_axi_B1mem_ARVALID VALID 1 1 }  { m_axi_B1mem_ARREADY READY 0 1 }  { m_axi_B1mem_ARADDR ADDR 1 64 }  { m_axi_B1mem_ARID ID 1 1 }  { m_axi_B1mem_ARLEN SIZE 1 8 }  { m_axi_B1mem_ARSIZE BURST 1 3 }  { m_axi_B1mem_ARBURST LOCK 1 2 }  { m_axi_B1mem_ARLOCK CACHE 1 2 }  { m_axi_B1mem_ARCACHE PROT 1 4 }  { m_axi_B1mem_ARPROT QOS 1 3 }  { m_axi_B1mem_ARQOS REGION 1 4 }  { m_axi_B1mem_ARREGION USER 1 4 }  { m_axi_B1mem_ARUSER DATA 1 1 }  { m_axi_B1mem_RVALID VALID 0 1 }  { m_axi_B1mem_RREADY READY 1 1 }  { m_axi_B1mem_RDATA FIFONUM 0 32 }  { m_axi_B1mem_RLAST LAST 0 1 }  { m_axi_B1mem_RID ID 0 1 }  { m_axi_B1mem_RUSER DATA 0 1 }  { m_axi_B1mem_RRESP RESP 0 2 }  { m_axi_B1mem_BVALID VALID 0 1 }  { m_axi_B1mem_BREADY READY 1 1 }  { m_axi_B1mem_BRESP RESP 0 2 }  { m_axi_B1mem_BID ID 0 1 }  { m_axi_B1mem_BUSER DATA 0 1 } } }
	W2mem { m_axi {  { m_axi_W2mem_AWVALID VALID 1 1 }  { m_axi_W2mem_AWREADY READY 0 1 }  { m_axi_W2mem_AWADDR ADDR 1 64 }  { m_axi_W2mem_AWID ID 1 1 }  { m_axi_W2mem_AWLEN SIZE 1 8 }  { m_axi_W2mem_AWSIZE BURST 1 3 }  { m_axi_W2mem_AWBURST LOCK 1 2 }  { m_axi_W2mem_AWLOCK CACHE 1 2 }  { m_axi_W2mem_AWCACHE PROT 1 4 }  { m_axi_W2mem_AWPROT QOS 1 3 }  { m_axi_W2mem_AWQOS REGION 1 4 }  { m_axi_W2mem_AWREGION USER 1 4 }  { m_axi_W2mem_AWUSER DATA 1 1 }  { m_axi_W2mem_WVALID VALID 1 1 }  { m_axi_W2mem_WREADY READY 0 1 }  { m_axi_W2mem_WDATA FIFONUM 1 32 }  { m_axi_W2mem_WSTRB STRB 1 4 }  { m_axi_W2mem_WLAST LAST 1 1 }  { m_axi_W2mem_WID ID 1 1 }  { m_axi_W2mem_WUSER DATA 1 1 }  { m_axi_W2mem_ARVALID VALID 1 1 }  { m_axi_W2mem_ARREADY READY 0 1 }  { m_axi_W2mem_ARADDR ADDR 1 64 }  { m_axi_W2mem_ARID ID 1 1 }  { m_axi_W2mem_ARLEN SIZE 1 8 }  { m_axi_W2mem_ARSIZE BURST 1 3 }  { m_axi_W2mem_ARBURST LOCK 1 2 }  { m_axi_W2mem_ARLOCK CACHE 1 2 }  { m_axi_W2mem_ARCACHE PROT 1 4 }  { m_axi_W2mem_ARPROT QOS 1 3 }  { m_axi_W2mem_ARQOS REGION 1 4 }  { m_axi_W2mem_ARREGION USER 1 4 }  { m_axi_W2mem_ARUSER DATA 1 1 }  { m_axi_W2mem_RVALID VALID 0 1 }  { m_axi_W2mem_RREADY READY 1 1 }  { m_axi_W2mem_RDATA FIFONUM 0 32 }  { m_axi_W2mem_RLAST LAST 0 1 }  { m_axi_W2mem_RID ID 0 1 }  { m_axi_W2mem_RUSER DATA 0 1 }  { m_axi_W2mem_RRESP RESP 0 2 }  { m_axi_W2mem_BVALID VALID 0 1 }  { m_axi_W2mem_BREADY READY 1 1 }  { m_axi_W2mem_BRESP RESP 0 2 }  { m_axi_W2mem_BID ID 0 1 }  { m_axi_W2mem_BUSER DATA 0 1 } } }
	B2mem { m_axi {  { m_axi_B2mem_AWVALID VALID 1 1 }  { m_axi_B2mem_AWREADY READY 0 1 }  { m_axi_B2mem_AWADDR ADDR 1 64 }  { m_axi_B2mem_AWID ID 1 1 }  { m_axi_B2mem_AWLEN SIZE 1 8 }  { m_axi_B2mem_AWSIZE BURST 1 3 }  { m_axi_B2mem_AWBURST LOCK 1 2 }  { m_axi_B2mem_AWLOCK CACHE 1 2 }  { m_axi_B2mem_AWCACHE PROT 1 4 }  { m_axi_B2mem_AWPROT QOS 1 3 }  { m_axi_B2mem_AWQOS REGION 1 4 }  { m_axi_B2mem_AWREGION USER 1 4 }  { m_axi_B2mem_AWUSER DATA 1 1 }  { m_axi_B2mem_WVALID VALID 1 1 }  { m_axi_B2mem_WREADY READY 0 1 }  { m_axi_B2mem_WDATA FIFONUM 1 32 }  { m_axi_B2mem_WSTRB STRB 1 4 }  { m_axi_B2mem_WLAST LAST 1 1 }  { m_axi_B2mem_WID ID 1 1 }  { m_axi_B2mem_WUSER DATA 1 1 }  { m_axi_B2mem_ARVALID VALID 1 1 }  { m_axi_B2mem_ARREADY READY 0 1 }  { m_axi_B2mem_ARADDR ADDR 1 64 }  { m_axi_B2mem_ARID ID 1 1 }  { m_axi_B2mem_ARLEN SIZE 1 8 }  { m_axi_B2mem_ARSIZE BURST 1 3 }  { m_axi_B2mem_ARBURST LOCK 1 2 }  { m_axi_B2mem_ARLOCK CACHE 1 2 }  { m_axi_B2mem_ARCACHE PROT 1 4 }  { m_axi_B2mem_ARPROT QOS 1 3 }  { m_axi_B2mem_ARQOS REGION 1 4 }  { m_axi_B2mem_ARREGION USER 1 4 }  { m_axi_B2mem_ARUSER DATA 1 1 }  { m_axi_B2mem_RVALID VALID 0 1 }  { m_axi_B2mem_RREADY READY 1 1 }  { m_axi_B2mem_RDATA FIFONUM 0 32 }  { m_axi_B2mem_RLAST LAST 0 1 }  { m_axi_B2mem_RID ID 0 1 }  { m_axi_B2mem_RUSER DATA 0 1 }  { m_axi_B2mem_RRESP RESP 0 2 }  { m_axi_B2mem_BVALID VALID 0 1 }  { m_axi_B2mem_BREADY READY 1 1 }  { m_axi_B2mem_BRESP RESP 0 2 }  { m_axi_B2mem_BID ID 0 1 }  { m_axi_B2mem_BUSER DATA 0 1 } } }
	W3mem { m_axi {  { m_axi_W3mem_AWVALID VALID 1 1 }  { m_axi_W3mem_AWREADY READY 0 1 }  { m_axi_W3mem_AWADDR ADDR 1 64 }  { m_axi_W3mem_AWID ID 1 1 }  { m_axi_W3mem_AWLEN SIZE 1 8 }  { m_axi_W3mem_AWSIZE BURST 1 3 }  { m_axi_W3mem_AWBURST LOCK 1 2 }  { m_axi_W3mem_AWLOCK CACHE 1 2 }  { m_axi_W3mem_AWCACHE PROT 1 4 }  { m_axi_W3mem_AWPROT QOS 1 3 }  { m_axi_W3mem_AWQOS REGION 1 4 }  { m_axi_W3mem_AWREGION USER 1 4 }  { m_axi_W3mem_AWUSER DATA 1 1 }  { m_axi_W3mem_WVALID VALID 1 1 }  { m_axi_W3mem_WREADY READY 0 1 }  { m_axi_W3mem_WDATA FIFONUM 1 32 }  { m_axi_W3mem_WSTRB STRB 1 4 }  { m_axi_W3mem_WLAST LAST 1 1 }  { m_axi_W3mem_WID ID 1 1 }  { m_axi_W3mem_WUSER DATA 1 1 }  { m_axi_W3mem_ARVALID VALID 1 1 }  { m_axi_W3mem_ARREADY READY 0 1 }  { m_axi_W3mem_ARADDR ADDR 1 64 }  { m_axi_W3mem_ARID ID 1 1 }  { m_axi_W3mem_ARLEN SIZE 1 8 }  { m_axi_W3mem_ARSIZE BURST 1 3 }  { m_axi_W3mem_ARBURST LOCK 1 2 }  { m_axi_W3mem_ARLOCK CACHE 1 2 }  { m_axi_W3mem_ARCACHE PROT 1 4 }  { m_axi_W3mem_ARPROT QOS 1 3 }  { m_axi_W3mem_ARQOS REGION 1 4 }  { m_axi_W3mem_ARREGION USER 1 4 }  { m_axi_W3mem_ARUSER DATA 1 1 }  { m_axi_W3mem_RVALID VALID 0 1 }  { m_axi_W3mem_RREADY READY 1 1 }  { m_axi_W3mem_RDATA FIFONUM 0 32 }  { m_axi_W3mem_RLAST LAST 0 1 }  { m_axi_W3mem_RID ID 0 1 }  { m_axi_W3mem_RUSER DATA 0 1 }  { m_axi_W3mem_RRESP RESP 0 2 }  { m_axi_W3mem_BVALID VALID 0 1 }  { m_axi_W3mem_BREADY READY 1 1 }  { m_axi_W3mem_BRESP RESP 0 2 }  { m_axi_W3mem_BID ID 0 1 }  { m_axi_W3mem_BUSER DATA 0 1 } } }
	B3mem { m_axi {  { m_axi_B3mem_AWVALID VALID 1 1 }  { m_axi_B3mem_AWREADY READY 0 1 }  { m_axi_B3mem_AWADDR ADDR 1 64 }  { m_axi_B3mem_AWID ID 1 1 }  { m_axi_B3mem_AWLEN SIZE 1 8 }  { m_axi_B3mem_AWSIZE BURST 1 3 }  { m_axi_B3mem_AWBURST LOCK 1 2 }  { m_axi_B3mem_AWLOCK CACHE 1 2 }  { m_axi_B3mem_AWCACHE PROT 1 4 }  { m_axi_B3mem_AWPROT QOS 1 3 }  { m_axi_B3mem_AWQOS REGION 1 4 }  { m_axi_B3mem_AWREGION USER 1 4 }  { m_axi_B3mem_AWUSER DATA 1 1 }  { m_axi_B3mem_WVALID VALID 1 1 }  { m_axi_B3mem_WREADY READY 0 1 }  { m_axi_B3mem_WDATA FIFONUM 1 32 }  { m_axi_B3mem_WSTRB STRB 1 4 }  { m_axi_B3mem_WLAST LAST 1 1 }  { m_axi_B3mem_WID ID 1 1 }  { m_axi_B3mem_WUSER DATA 1 1 }  { m_axi_B3mem_ARVALID VALID 1 1 }  { m_axi_B3mem_ARREADY READY 0 1 }  { m_axi_B3mem_ARADDR ADDR 1 64 }  { m_axi_B3mem_ARID ID 1 1 }  { m_axi_B3mem_ARLEN SIZE 1 8 }  { m_axi_B3mem_ARSIZE BURST 1 3 }  { m_axi_B3mem_ARBURST LOCK 1 2 }  { m_axi_B3mem_ARLOCK CACHE 1 2 }  { m_axi_B3mem_ARCACHE PROT 1 4 }  { m_axi_B3mem_ARPROT QOS 1 3 }  { m_axi_B3mem_ARQOS REGION 1 4 }  { m_axi_B3mem_ARREGION USER 1 4 }  { m_axi_B3mem_ARUSER DATA 1 1 }  { m_axi_B3mem_RVALID VALID 0 1 }  { m_axi_B3mem_RREADY READY 1 1 }  { m_axi_B3mem_RDATA FIFONUM 0 32 }  { m_axi_B3mem_RLAST LAST 0 1 }  { m_axi_B3mem_RID ID 0 1 }  { m_axi_B3mem_RUSER DATA 0 1 }  { m_axi_B3mem_RRESP RESP 0 2 }  { m_axi_B3mem_BVALID VALID 0 1 }  { m_axi_B3mem_BREADY READY 1 1 }  { m_axi_B3mem_BRESP RESP 0 2 }  { m_axi_B3mem_BID ID 0 1 }  { m_axi_B3mem_BUSER DATA 0 1 } } }
	W4mem { m_axi {  { m_axi_W4mem_AWVALID VALID 1 1 }  { m_axi_W4mem_AWREADY READY 0 1 }  { m_axi_W4mem_AWADDR ADDR 1 64 }  { m_axi_W4mem_AWID ID 1 1 }  { m_axi_W4mem_AWLEN SIZE 1 8 }  { m_axi_W4mem_AWSIZE BURST 1 3 }  { m_axi_W4mem_AWBURST LOCK 1 2 }  { m_axi_W4mem_AWLOCK CACHE 1 2 }  { m_axi_W4mem_AWCACHE PROT 1 4 }  { m_axi_W4mem_AWPROT QOS 1 3 }  { m_axi_W4mem_AWQOS REGION 1 4 }  { m_axi_W4mem_AWREGION USER 1 4 }  { m_axi_W4mem_AWUSER DATA 1 1 }  { m_axi_W4mem_WVALID VALID 1 1 }  { m_axi_W4mem_WREADY READY 0 1 }  { m_axi_W4mem_WDATA FIFONUM 1 32 }  { m_axi_W4mem_WSTRB STRB 1 4 }  { m_axi_W4mem_WLAST LAST 1 1 }  { m_axi_W4mem_WID ID 1 1 }  { m_axi_W4mem_WUSER DATA 1 1 }  { m_axi_W4mem_ARVALID VALID 1 1 }  { m_axi_W4mem_ARREADY READY 0 1 }  { m_axi_W4mem_ARADDR ADDR 1 64 }  { m_axi_W4mem_ARID ID 1 1 }  { m_axi_W4mem_ARLEN SIZE 1 8 }  { m_axi_W4mem_ARSIZE BURST 1 3 }  { m_axi_W4mem_ARBURST LOCK 1 2 }  { m_axi_W4mem_ARLOCK CACHE 1 2 }  { m_axi_W4mem_ARCACHE PROT 1 4 }  { m_axi_W4mem_ARPROT QOS 1 3 }  { m_axi_W4mem_ARQOS REGION 1 4 }  { m_axi_W4mem_ARREGION USER 1 4 }  { m_axi_W4mem_ARUSER DATA 1 1 }  { m_axi_W4mem_RVALID VALID 0 1 }  { m_axi_W4mem_RREADY READY 1 1 }  { m_axi_W4mem_RDATA FIFONUM 0 32 }  { m_axi_W4mem_RLAST LAST 0 1 }  { m_axi_W4mem_RID ID 0 1 }  { m_axi_W4mem_RUSER DATA 0 1 }  { m_axi_W4mem_RRESP RESP 0 2 }  { m_axi_W4mem_BVALID VALID 0 1 }  { m_axi_W4mem_BREADY READY 1 1 }  { m_axi_W4mem_BRESP RESP 0 2 }  { m_axi_W4mem_BID ID 0 1 }  { m_axi_W4mem_BUSER DATA 0 1 } } }
	B4mem { m_axi {  { m_axi_B4mem_AWVALID VALID 1 1 }  { m_axi_B4mem_AWREADY READY 0 1 }  { m_axi_B4mem_AWADDR ADDR 1 64 }  { m_axi_B4mem_AWID ID 1 1 }  { m_axi_B4mem_AWLEN SIZE 1 8 }  { m_axi_B4mem_AWSIZE BURST 1 3 }  { m_axi_B4mem_AWBURST LOCK 1 2 }  { m_axi_B4mem_AWLOCK CACHE 1 2 }  { m_axi_B4mem_AWCACHE PROT 1 4 }  { m_axi_B4mem_AWPROT QOS 1 3 }  { m_axi_B4mem_AWQOS REGION 1 4 }  { m_axi_B4mem_AWREGION USER 1 4 }  { m_axi_B4mem_AWUSER DATA 1 1 }  { m_axi_B4mem_WVALID VALID 1 1 }  { m_axi_B4mem_WREADY READY 0 1 }  { m_axi_B4mem_WDATA FIFONUM 1 32 }  { m_axi_B4mem_WSTRB STRB 1 4 }  { m_axi_B4mem_WLAST LAST 1 1 }  { m_axi_B4mem_WID ID 1 1 }  { m_axi_B4mem_WUSER DATA 1 1 }  { m_axi_B4mem_ARVALID VALID 1 1 }  { m_axi_B4mem_ARREADY READY 0 1 }  { m_axi_B4mem_ARADDR ADDR 1 64 }  { m_axi_B4mem_ARID ID 1 1 }  { m_axi_B4mem_ARLEN SIZE 1 8 }  { m_axi_B4mem_ARSIZE BURST 1 3 }  { m_axi_B4mem_ARBURST LOCK 1 2 }  { m_axi_B4mem_ARLOCK CACHE 1 2 }  { m_axi_B4mem_ARCACHE PROT 1 4 }  { m_axi_B4mem_ARPROT QOS 1 3 }  { m_axi_B4mem_ARQOS REGION 1 4 }  { m_axi_B4mem_ARREGION USER 1 4 }  { m_axi_B4mem_ARUSER DATA 1 1 }  { m_axi_B4mem_RVALID VALID 0 1 }  { m_axi_B4mem_RREADY READY 1 1 }  { m_axi_B4mem_RDATA FIFONUM 0 32 }  { m_axi_B4mem_RLAST LAST 0 1 }  { m_axi_B4mem_RID ID 0 1 }  { m_axi_B4mem_RUSER DATA 0 1 }  { m_axi_B4mem_RRESP RESP 0 2 }  { m_axi_B4mem_BVALID VALID 0 1 }  { m_axi_B4mem_BREADY READY 1 1 }  { m_axi_B4mem_BRESP RESP 0 2 }  { m_axi_B4mem_BID ID 0 1 }  { m_axi_B4mem_BUSER DATA 0 1 } } }
	Foutmem { m_axi {  { m_axi_Foutmem_AWVALID VALID 1 1 }  { m_axi_Foutmem_AWREADY READY 0 1 }  { m_axi_Foutmem_AWADDR ADDR 1 64 }  { m_axi_Foutmem_AWID ID 1 1 }  { m_axi_Foutmem_AWLEN SIZE 1 8 }  { m_axi_Foutmem_AWSIZE BURST 1 3 }  { m_axi_Foutmem_AWBURST LOCK 1 2 }  { m_axi_Foutmem_AWLOCK CACHE 1 2 }  { m_axi_Foutmem_AWCACHE PROT 1 4 }  { m_axi_Foutmem_AWPROT QOS 1 3 }  { m_axi_Foutmem_AWQOS REGION 1 4 }  { m_axi_Foutmem_AWREGION USER 1 4 }  { m_axi_Foutmem_AWUSER DATA 1 1 }  { m_axi_Foutmem_WVALID VALID 1 1 }  { m_axi_Foutmem_WREADY READY 0 1 }  { m_axi_Foutmem_WDATA FIFONUM 1 32 }  { m_axi_Foutmem_WSTRB STRB 1 4 }  { m_axi_Foutmem_WLAST LAST 1 1 }  { m_axi_Foutmem_WID ID 1 1 }  { m_axi_Foutmem_WUSER DATA 1 1 }  { m_axi_Foutmem_ARVALID VALID 1 1 }  { m_axi_Foutmem_ARREADY READY 0 1 }  { m_axi_Foutmem_ARADDR ADDR 1 64 }  { m_axi_Foutmem_ARID ID 1 1 }  { m_axi_Foutmem_ARLEN SIZE 1 8 }  { m_axi_Foutmem_ARSIZE BURST 1 3 }  { m_axi_Foutmem_ARBURST LOCK 1 2 }  { m_axi_Foutmem_ARLOCK CACHE 1 2 }  { m_axi_Foutmem_ARCACHE PROT 1 4 }  { m_axi_Foutmem_ARPROT QOS 1 3 }  { m_axi_Foutmem_ARQOS REGION 1 4 }  { m_axi_Foutmem_ARREGION USER 1 4 }  { m_axi_Foutmem_ARUSER DATA 1 1 }  { m_axi_Foutmem_RVALID VALID 0 1 }  { m_axi_Foutmem_RREADY READY 1 1 }  { m_axi_Foutmem_RDATA FIFONUM 0 32 }  { m_axi_Foutmem_RLAST LAST 0 1 }  { m_axi_Foutmem_RID ID 0 1 }  { m_axi_Foutmem_RUSER DATA 0 1 }  { m_axi_Foutmem_RRESP RESP 0 2 }  { m_axi_Foutmem_BVALID VALID 0 1 }  { m_axi_Foutmem_BREADY READY 1 1 }  { m_axi_Foutmem_BRESP RESP 0 2 }  { m_axi_Foutmem_BID ID 0 1 }  { m_axi_Foutmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict B1mem { CHANNEL_NUM 0 BUNDLE B1mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict B2mem { CHANNEL_NUM 0 BUNDLE B2mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict B3mem { CHANNEL_NUM 0 BUNDLE B3mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict B4mem { CHANNEL_NUM 0 BUNDLE B4mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict Foutmem { CHANNEL_NUM 0 BUNDLE Foutmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict IMGmem { CHANNEL_NUM 0 BUNDLE IMGmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict W1mem { CHANNEL_NUM 0 BUNDLE W1mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict W2mem { CHANNEL_NUM 0 BUNDLE W2mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict W3mem { CHANNEL_NUM 0 BUNDLE W3mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict W4mem { CHANNEL_NUM 0 BUNDLE W4mem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ IMGmem 1 }
	{ W1mem 1 }
	{ B1mem 1 }
	{ W2mem 1 }
	{ B2mem 1 }
	{ W3mem 1 }
	{ B3mem 1 }
	{ W4mem 1 }
	{ B4mem 1 }
	{ Foutmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ IMGmem 1 }
	{ W1mem 1 }
	{ B1mem 1 }
	{ W2mem 1 }
	{ B2mem 1 }
	{ W3mem 1 }
	{ B3mem 1 }
	{ W4mem 1 }
	{ B4mem 1 }
	{ Foutmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
