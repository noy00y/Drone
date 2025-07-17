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
set cdfgNum 4
set C_modelName {cnn_accel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict weights_0_0_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_0_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_0_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_1_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_1_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_1_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_2_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_2_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_0_2_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_0_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_0_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_0_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_1_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_1_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_1_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_2_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_2_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_1_2_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_0_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_0_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_0_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_1_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_1_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_1_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_2_0 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_2_1 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_2_2_2 { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias { MEM_WIDTH 16 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pix_in int 48 regular {axi_s 0 volatile  { pix_in Data } }  }
	{ fmap_out0 int 16 regular {axi_s 1 volatile  { fmap_out0 Data } }  }
	{ fmap_out1 int 16 regular {axi_s 1 volatile  { fmap_out1 Data } }  }
	{ weights_0_0_0 int 16 regular {axi_slave 0}  }
	{ weights_0_0_1 int 16 regular {axi_slave 0}  }
	{ weights_0_0_2 int 16 regular {axi_slave 0}  }
	{ weights_0_1_0 int 16 regular {axi_slave 0}  }
	{ weights_0_1_1 int 16 regular {axi_slave 0}  }
	{ weights_0_1_2 int 16 regular {axi_slave 0}  }
	{ weights_0_2_0 int 16 regular {axi_slave 0}  }
	{ weights_0_2_1 int 16 regular {axi_slave 0}  }
	{ weights_0_2_2 int 16 regular {axi_slave 0}  }
	{ weights_1_0_0 int 16 regular {axi_slave 0}  }
	{ weights_1_0_1 int 16 regular {axi_slave 0}  }
	{ weights_1_0_2 int 16 regular {axi_slave 0}  }
	{ weights_1_1_0 int 16 regular {axi_slave 0}  }
	{ weights_1_1_1 int 16 regular {axi_slave 0}  }
	{ weights_1_1_2 int 16 regular {axi_slave 0}  }
	{ weights_1_2_0 int 16 regular {axi_slave 0}  }
	{ weights_1_2_1 int 16 regular {axi_slave 0}  }
	{ weights_1_2_2 int 16 regular {axi_slave 0}  }
	{ weights_2_0_0 int 16 regular {axi_slave 0}  }
	{ weights_2_0_1 int 16 regular {axi_slave 0}  }
	{ weights_2_0_2 int 16 regular {axi_slave 0}  }
	{ weights_2_1_0 int 16 regular {axi_slave 0}  }
	{ weights_2_1_1 int 16 regular {axi_slave 0}  }
	{ weights_2_1_2 int 16 regular {axi_slave 0}  }
	{ weights_2_2_0 int 16 regular {axi_slave 0}  }
	{ weights_2_2_1 int 16 regular {axi_slave 0}  }
	{ weights_2_2_2 int 16 regular {axi_slave 0}  }
	{ bias int 16 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pix_in", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "fmap_out0", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fmap_out1", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_0_0_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "weights_0_0_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":47}} , 
 	{ "Name" : "weights_0_0_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":63}} , 
 	{ "Name" : "weights_0_1_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":79}} , 
 	{ "Name" : "weights_0_1_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":95}} , 
 	{ "Name" : "weights_0_1_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":111}} , 
 	{ "Name" : "weights_0_2_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":127}} , 
 	{ "Name" : "weights_0_2_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":143}} , 
 	{ "Name" : "weights_0_2_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":159}} , 
 	{ "Name" : "weights_1_0_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":175}} , 
 	{ "Name" : "weights_1_0_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":191}} , 
 	{ "Name" : "weights_1_0_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":207}} , 
 	{ "Name" : "weights_1_1_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":223}} , 
 	{ "Name" : "weights_1_1_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":239}} , 
 	{ "Name" : "weights_1_1_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":255}} , 
 	{ "Name" : "weights_1_2_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":271}} , 
 	{ "Name" : "weights_1_2_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":287}} , 
 	{ "Name" : "weights_1_2_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":303}} , 
 	{ "Name" : "weights_2_0_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":304}, "offset_end" : {"in":319}} , 
 	{ "Name" : "weights_2_0_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":320}, "offset_end" : {"in":335}} , 
 	{ "Name" : "weights_2_0_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":336}, "offset_end" : {"in":351}} , 
 	{ "Name" : "weights_2_1_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":352}, "offset_end" : {"in":367}} , 
 	{ "Name" : "weights_2_1_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":368}, "offset_end" : {"in":383}} , 
 	{ "Name" : "weights_2_1_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":384}, "offset_end" : {"in":399}} , 
 	{ "Name" : "weights_2_2_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":400}, "offset_end" : {"in":415}} , 
 	{ "Name" : "weights_2_2_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":416}, "offset_end" : {"in":431}} , 
 	{ "Name" : "weights_2_2_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":432}, "offset_end" : {"in":447}} , 
 	{ "Name" : "bias", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":448}, "offset_end" : {"in":463}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ pix_in_TDATA sc_in sc_lv 48 signal 0 } 
	{ pix_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ pix_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ fmap_out0_TDATA sc_out sc_lv 16 signal 1 } 
	{ fmap_out0_TVALID sc_out sc_logic 1 outvld 1 } 
	{ fmap_out0_TREADY sc_in sc_logic 1 outacc 1 } 
	{ fmap_out1_TDATA sc_out sc_lv 16 signal 2 } 
	{ fmap_out1_TVALID sc_out sc_logic 1 outvld 2 } 
	{ fmap_out1_TREADY sc_in sc_logic 1 outacc 2 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"cnn_accel","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"weights_0_0_0","role":"data","value":"16"},{"name":"weights_0_0_1","role":"data","value":"32"},{"name":"weights_0_0_2","role":"data","value":"48"},{"name":"weights_0_1_0","role":"data","value":"64"},{"name":"weights_0_1_1","role":"data","value":"80"},{"name":"weights_0_1_2","role":"data","value":"96"},{"name":"weights_0_2_0","role":"data","value":"112"},{"name":"weights_0_2_1","role":"data","value":"128"},{"name":"weights_0_2_2","role":"data","value":"144"},{"name":"weights_1_0_0","role":"data","value":"160"},{"name":"weights_1_0_1","role":"data","value":"176"},{"name":"weights_1_0_2","role":"data","value":"192"},{"name":"weights_1_1_0","role":"data","value":"208"},{"name":"weights_1_1_1","role":"data","value":"224"},{"name":"weights_1_1_2","role":"data","value":"240"},{"name":"weights_1_2_0","role":"data","value":"256"},{"name":"weights_1_2_1","role":"data","value":"272"},{"name":"weights_1_2_2","role":"data","value":"288"},{"name":"weights_2_0_0","role":"data","value":"304"},{"name":"weights_2_0_1","role":"data","value":"320"},{"name":"weights_2_0_2","role":"data","value":"336"},{"name":"weights_2_1_0","role":"data","value":"352"},{"name":"weights_2_1_1","role":"data","value":"368"},{"name":"weights_2_1_2","role":"data","value":"384"},{"name":"weights_2_2_0","role":"data","value":"400"},{"name":"weights_2_2_1","role":"data","value":"416"},{"name":"weights_2_2_2","role":"data","value":"432"},{"name":"bias","role":"data","value":"448"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"cnn_accel","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_accel","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "pix_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "pix_in", "role": "TDATA" }} , 
 	{ "name": "pix_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pix_in", "role": "TVALID" }} , 
 	{ "name": "pix_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pix_in", "role": "TREADY" }} , 
 	{ "name": "fmap_out0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fmap_out0", "role": "TDATA" }} , 
 	{ "name": "fmap_out0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmap_out0", "role": "TVALID" }} , 
 	{ "name": "fmap_out0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "fmap_out0", "role": "TREADY" }} , 
 	{ "name": "fmap_out1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fmap_out1", "role": "TDATA" }} , 
 	{ "name": "fmap_out1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fmap_out1", "role": "TVALID" }} , 
 	{ "name": "fmap_out1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "fmap_out1", "role": "TREADY" }}  ]}

set ArgLastReadFirstWriteLatency {
	cnn_accel {
		pix_in {Type I LastRead 0 FirstWrite -1}
		fmap_out0 {Type O LastRead -1 FirstWrite 4}
		fmap_out1 {Type O LastRead -1 FirstWrite 4}
		weights_0_0_0 {Type I LastRead 7 FirstWrite -1}
		weights_0_0_1 {Type I LastRead 7 FirstWrite -1}
		weights_0_0_2 {Type I LastRead 7 FirstWrite -1}
		weights_0_1_0 {Type I LastRead 7 FirstWrite -1}
		weights_0_1_1 {Type I LastRead 7 FirstWrite -1}
		weights_0_1_2 {Type I LastRead 7 FirstWrite -1}
		weights_0_2_0 {Type I LastRead 7 FirstWrite -1}
		weights_0_2_1 {Type I LastRead 7 FirstWrite -1}
		weights_0_2_2 {Type I LastRead 7 FirstWrite -1}
		weights_1_0_0 {Type I LastRead 7 FirstWrite -1}
		weights_1_0_1 {Type I LastRead 7 FirstWrite -1}
		weights_1_0_2 {Type I LastRead 7 FirstWrite -1}
		weights_1_1_0 {Type I LastRead 7 FirstWrite -1}
		weights_1_1_1 {Type I LastRead 7 FirstWrite -1}
		weights_1_1_2 {Type I LastRead 7 FirstWrite -1}
		weights_1_2_0 {Type I LastRead 7 FirstWrite -1}
		weights_1_2_1 {Type I LastRead 7 FirstWrite -1}
		weights_1_2_2 {Type I LastRead 7 FirstWrite -1}
		weights_2_0_0 {Type I LastRead 7 FirstWrite -1}
		weights_2_0_1 {Type I LastRead 7 FirstWrite -1}
		weights_2_0_2 {Type I LastRead 7 FirstWrite -1}
		weights_2_1_0 {Type I LastRead 7 FirstWrite -1}
		weights_2_1_1 {Type I LastRead 7 FirstWrite -1}
		weights_2_1_2 {Type I LastRead 7 FirstWrite -1}
		weights_2_2_0 {Type I LastRead 7 FirstWrite -1}
		weights_2_2_1 {Type I LastRead 7 FirstWrite -1}
		weights_2_2_2 {Type I LastRead 7 FirstWrite -1}
		bias {Type I LastRead 7 FirstWrite -1}
		LB0 {Type IO LastRead -1 FirstWrite -1}
		LB0_1 {Type IO LastRead -1 FirstWrite -1}
		LB0_2 {Type IO LastRead -1 FirstWrite -1}
		toggle {Type IO LastRead -1 FirstWrite -1}}
	cnn_accel_Pipeline_RowLoop_ColLoop {
		pix_in {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11338 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21377 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11259 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11259_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11259_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21299 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21299_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21299_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_11180 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_21219 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_11014_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_11094 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_21133 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_21051_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1934 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2973 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1855 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1855_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1855_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2895 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2895_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2895_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_1776 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_2815 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_1698 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_2737 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_1_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1620 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2659 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1541 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1541_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1541_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2581 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2581_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2581_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_1462 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_2501 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_1384 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_2423 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_2_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1306 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2345 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1227 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1227_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1227_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2267 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2267_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2267_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_1148 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_2187 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_170 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_2109 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i145_3_2_2_2 {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i276_cast {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i276_1_cast {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i276_2_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln124 {Type I LastRead 0 FirstWrite -1}
		fmap_out0 {Type O LastRead -1 FirstWrite 4}
		conv7_i_i {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12684 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22723 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12605 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12605_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12605_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22645 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22645_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22645_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_12526 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_22565 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_12360_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_12440 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_22479 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_22397_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_12280 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_22319 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_12201 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_12201_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_12201_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_22241 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_22241_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_22241_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_12122 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_22161 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_12044 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_22083 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_1_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_11966 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_22005 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_11887 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_11887_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_11887_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_21927 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_21927_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_21927_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_11808 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_21847 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_11730 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_21769 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_2_2_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_11652 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_21691 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_11573 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_11573_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_11573_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_21613 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_21613_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_21613_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_11494 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_21533 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_1_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_11416 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_21455 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_1_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_1_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_2_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_i_3_2_2_2 {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i_cast {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i_1_cast {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i_2_cast {Type I LastRead 0 FirstWrite -1}
		shl_i_i16_i_i_3_cast {Type I LastRead 0 FirstWrite -1}
		fmap_out1 {Type O LastRead -1 FirstWrite 4}
		LB0 {Type IO LastRead -1 FirstWrite -1}
		LB0_1 {Type IO LastRead -1 FirstWrite -1}
		LB0_2 {Type IO LastRead -1 FirstWrite -1}
		toggle {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "200720", "Max" : "200720"}
	, {"Name" : "Interval", "Min" : "200721", "Max" : "200721"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pix_in { axis {  { pix_in_TDATA in_data 0 48 }  { pix_in_TVALID in_vld 0 1 }  { pix_in_TREADY in_acc 1 1 } } }
	fmap_out0 { axis {  { fmap_out0_TDATA out_data 1 16 }  { fmap_out0_TVALID out_vld 1 1 }  { fmap_out0_TREADY out_acc 0 1 } } }
	fmap_out1 { axis {  { fmap_out1_TDATA out_data 1 16 }  { fmap_out1_TVALID out_vld 1 1 }  { fmap_out1_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
