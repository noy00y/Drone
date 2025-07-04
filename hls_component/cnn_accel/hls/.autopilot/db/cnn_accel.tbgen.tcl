set moduleName cnn_accel
set isTopModule 1
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
set cdfgNum 13
set C_modelName {cnn_accel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
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
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "img_in","offset": { "type": "dynamic","port_name": "img_in","bundle": "control"},"direction": "READONLY"},{"cName": "weights1","offset": { "type": "dynamic","port_name": "weights1","bundle": "control"},"direction": "READONLY"},{"cName": "bias1","offset": { "type": "dynamic","port_name": "bias1","bundle": "control"},"direction": "READONLY"},{"cName": "weights2","offset": { "type": "dynamic","port_name": "weights2","bundle": "control"},"direction": "READONLY"},{"cName": "bias2","offset": { "type": "dynamic","port_name": "bias2","bundle": "control"},"direction": "READONLY"},{"cName": "FC1_W","offset": { "type": "dynamic","port_name": "FC1_W","bundle": "control"},"direction": "READONLY"},{"cName": "FC1_B","offset": { "type": "dynamic","port_name": "FC1_B","bundle": "control"},"direction": "READONLY"},{"cName": "FC2_W","offset": { "type": "dynamic","port_name": "FC2_W","bundle": "control"},"direction": "READONLY"},{"cName": "FC2_B","offset": { "type": "dynamic","port_name": "FC2_B","bundle": "control"},"direction": "READONLY"},{"cName": "flag_out","offset": { "type": "dynamic","port_name": "flag_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
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
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
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
	{ interrupt sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accel {
		gmem {Type IO LastRead 56 FirstWrite -1}
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
		local_img_2 {Type IO LastRead -1 FirstWrite -1}
		feat1 {Type IO LastRead -1 FirstWrite -1}
		feat1_3 {Type IO LastRead -1 FirstWrite -1}
		feat1_4 {Type IO LastRead -1 FirstWrite -1}
		feat1_5 {Type IO LastRead -1 FirstWrite -1}
		feat1_6 {Type IO LastRead -1 FirstWrite -1}
		feat1_7 {Type IO LastRead -1 FirstWrite -1}
		feat1_8 {Type IO LastRead -1 FirstWrite -1}
		feat1_9 {Type IO LastRead -1 FirstWrite -1}
		feat1_p {Type IO LastRead -1 FirstWrite -1}
		feat1_p_10 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_11 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_12 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_13 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_14 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_15 {Type IO LastRead -1 FirstWrite -1}
		feat1_p_16 {Type IO LastRead -1 FirstWrite -1}
		feat2_p {Type IO LastRead -1 FirstWrite -1}
		feat2 {Type IO LastRead -1 FirstWrite -1}
		feat2_17 {Type IO LastRead -1 FirstWrite -1}
		feat2_18 {Type IO LastRead -1 FirstWrite -1}
		feat2_19 {Type IO LastRead -1 FirstWrite -1}
		feat2_20 {Type IO LastRead -1 FirstWrite -1}
		feat2_21 {Type IO LastRead -1 FirstWrite -1}
		feat2_22 {Type IO LastRead -1 FirstWrite -1}
		feat2_23 {Type IO LastRead -1 FirstWrite -1}
		feat2_24 {Type IO LastRead -1 FirstWrite -1}
		feat2_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_15 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_26 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_27 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_28 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_29 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_30 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_31 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_32 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_33 {Type IO LastRead -1 FirstWrite -1}
		feat2_p_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_15 {Type IO LastRead -1 FirstWrite -1}
		vec1 {Type IO LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		vec2 {Type IO LastRead -1 FirstWrite -1}}
	cnn_accel_Pipeline_LOAD_IMG_ROWS_LOAD_IMG_COLS_LOAD_IMG_CH {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln85 {Type I LastRead 0 FirstWrite -1}
		local_img {Type O LastRead -1 FirstWrite 2}
		local_img_1 {Type O LastRead -1 FirstWrite 2}
		local_img_2 {Type O LastRead -1 FirstWrite 2}}
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
		feat1_9 {Type O LastRead -1 FirstWrite 95}}
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
		feat1_p_16 {Type O LastRead -1 FirstWrite 5}}
	cnn_accel_Pipeline_POOL2_ROW_POOL2_COL_POOL2_CH {
		feat2_p {Type O LastRead -1 FirstWrite 5}
		feat2 {Type I LastRead 3 FirstWrite -1}
		feat2_17 {Type I LastRead 3 FirstWrite -1}
		feat2_18 {Type I LastRead 3 FirstWrite -1}
		feat2_19 {Type I LastRead 3 FirstWrite -1}
		feat2_20 {Type I LastRead 3 FirstWrite -1}
		feat2_21 {Type I LastRead 3 FirstWrite -1}
		feat2_22 {Type I LastRead 3 FirstWrite -1}
		feat2_23 {Type I LastRead 3 FirstWrite -1}
		feat2_24 {Type I LastRead 3 FirstWrite -1}
		feat2_25 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_10 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_11 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_12 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_13 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_14 {Type I LastRead 3 FirstWrite -1}
		p_ZZ9cnn_accelE5feat2_15 {Type I LastRead 3 FirstWrite -1}
		feat2_p_26 {Type O LastRead -1 FirstWrite 5}
		feat2_p_27 {Type O LastRead -1 FirstWrite 5}
		feat2_p_28 {Type O LastRead -1 FirstWrite 5}
		feat2_p_29 {Type O LastRead -1 FirstWrite 5}
		feat2_p_30 {Type O LastRead -1 FirstWrite 5}
		feat2_p_31 {Type O LastRead -1 FirstWrite 5}
		feat2_p_32 {Type O LastRead -1 FirstWrite 5}
		feat2_p_33 {Type O LastRead -1 FirstWrite 5}
		feat2_p_34 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_10 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_11 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_12 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_13 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_14 {Type O LastRead -1 FirstWrite 5}
		p_ZZ9cnn_accelE7feat2_p_15 {Type O LastRead -1 FirstWrite 5}}
	cnn_accel_Pipeline_CONV2_KR_CONV2_KC_CONV2_CH {
		acc_28 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		i_3 {Type I LastRead 0 FirstWrite -1}
		j_3 {Type I LastRead 0 FirstWrite -1}
		tmp_42 {Type I LastRead 0 FirstWrite -1}
		weights2 {Type I LastRead 0 FirstWrite -1}
		acc_34_out {Type O LastRead -1 FirstWrite 12}
		feat1_p {Type I LastRead 7 FirstWrite -1}
		feat1_p_10 {Type I LastRead 7 FirstWrite -1}
		feat1_p_11 {Type I LastRead 7 FirstWrite -1}
		feat1_p_12 {Type I LastRead 7 FirstWrite -1}
		feat1_p_13 {Type I LastRead 7 FirstWrite -1}
		feat1_p_14 {Type I LastRead 7 FirstWrite -1}
		feat1_p_15 {Type I LastRead 7 FirstWrite -1}
		feat1_p_16 {Type I LastRead 7 FirstWrite -1}}
	cnn_accel_Pipeline_FLATTEN_VITIS_LOOP_189_1_VITIS_LOOP_190_2 {
		feat2_p {Type I LastRead 4 FirstWrite -1}
		feat2_p_26 {Type I LastRead 4 FirstWrite -1}
		feat2_p_27 {Type I LastRead 4 FirstWrite -1}
		feat2_p_28 {Type I LastRead 4 FirstWrite -1}
		feat2_p_29 {Type I LastRead 4 FirstWrite -1}
		feat2_p_30 {Type I LastRead 4 FirstWrite -1}
		feat2_p_31 {Type I LastRead 4 FirstWrite -1}
		feat2_p_32 {Type I LastRead 4 FirstWrite -1}
		feat2_p_33 {Type I LastRead 4 FirstWrite -1}
		feat2_p_34 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_10 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_11 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_12 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_13 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_14 {Type I LastRead 4 FirstWrite -1}
		p_ZZ9cnn_accelE7feat2_p_15 {Type I LastRead 4 FirstWrite -1}
		vec1 {Type O LastRead -1 FirstWrite 5}}
	cnn_accel_Pipeline_VITIS_LOOP_202_3 {
		acc_33 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 9 FirstWrite -1}
		sext_ln199 {Type I LastRead 0 FirstWrite -1}
		zext_ln201 {Type I LastRead 0 FirstWrite -1}
		acc_31_out {Type O LastRead -1 FirstWrite 11}
		vec1 {Type I LastRead 8 FirstWrite -1}}
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
	cnn_accel_Pipeline_FC2_LOOP {
		acc2 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln212 {Type I LastRead 0 FirstWrite -1}
		acc2_1_out {Type O LastRead -1 FirstWrite 3}
		vec2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "125926547", "Max" : "125927699"}
	, {"Name" : "Interval", "Min" : "125926548", "Max" : "125927700"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
