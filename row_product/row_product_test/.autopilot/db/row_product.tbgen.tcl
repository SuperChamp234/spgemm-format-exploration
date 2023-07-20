set moduleName row_product
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {row_product}
set C_modelType { void 0 }
set C_modelArgList {
	{ csr_x int 64 regular {axi_master 0}  }
	{ csr_y int 64 regular {axi_master 0}  }
	{ csr_z int 64 regular {axi_master 2}  }
	{ x_rowptr int 64 regular {axi_slave 0}  }
	{ x_colind int 64 regular {axi_slave 0}  }
	{ x_data int 64 regular {axi_slave 0}  }
	{ y_rowptr int 64 regular {axi_slave 0}  }
	{ y_colind int 64 regular {axi_slave 0}  }
	{ y_data int 64 regular {axi_slave 0}  }
	{ z_rowptr int 64 regular {axi_slave 0}  }
	{ z_colind int 64 regular {axi_slave 0}  }
	{ z_data int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "csr_x", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "x_rowptr","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "x_rowptr","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "x_colind","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "x_colind","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "x_data","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "x_data","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "csr_y", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "y_rowptr","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "y_rowptr","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "y_colind","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "y_colind","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "y_data","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "y_data","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "csr_z", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "z_rowptr","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "z_rowptr","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "z_colind","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "z_colind","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "z_data","cData": "long","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "z_data","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "x_rowptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "x_colind", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "x_data", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "y_rowptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "y_colind", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "y_data", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "z_rowptr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "z_colind", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "z_data", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} ]}
# RTL Port declarations: 
set portNum 158
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_csr_x_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_csr_x_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_csr_x_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_csr_x_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_csr_x_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_csr_x_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_csr_x_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_csr_x_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_csr_x_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_csr_x_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_csr_x_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_csr_x_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_csr_x_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_csr_x_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_csr_x_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_csr_x_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_csr_x_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_csr_x_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_csr_x_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_csr_x_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_csr_x_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_csr_x_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_csr_x_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_csr_x_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_csr_x_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_csr_y_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_csr_y_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_csr_y_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_csr_y_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_csr_y_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_csr_y_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_csr_y_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_csr_y_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_csr_y_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_csr_y_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_csr_y_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_csr_y_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_csr_y_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_csr_y_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_csr_y_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_csr_y_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_csr_y_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_csr_y_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_csr_y_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_csr_y_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_csr_y_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_csr_y_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_csr_y_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_csr_y_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_csr_y_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_csr_z_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_csr_z_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_csr_z_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_csr_z_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_csr_z_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_csr_z_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_csr_z_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_csr_z_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_csr_z_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_csr_z_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_csr_z_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_csr_z_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_csr_z_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_csr_z_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_csr_z_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_csr_z_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_csr_z_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_csr_z_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_csr_z_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_csr_z_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_csr_z_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_csr_z_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_csr_z_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_csr_z_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_csr_z_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"x_rowptr","role":"data","value":"16"},{"name":"x_colind","role":"data","value":"28"},{"name":"x_data","role":"data","value":"40"},{"name":"y_rowptr","role":"data","value":"52"},{"name":"y_colind","role":"data","value":"64"},{"name":"y_data","role":"data","value":"76"},{"name":"z_rowptr","role":"data","value":"88"},{"name":"z_colind","role":"data","value":"100"},{"name":"z_data","role":"data","value":"112"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_csr_x_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "AWVALID" }} , 
 	{ "name": "m_axi_csr_x_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "AWREADY" }} , 
 	{ "name": "m_axi_csr_x_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_x", "role": "AWADDR" }} , 
 	{ "name": "m_axi_csr_x_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "AWID" }} , 
 	{ "name": "m_axi_csr_x_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_x", "role": "AWLEN" }} , 
 	{ "name": "m_axi_csr_x_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_x", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_csr_x_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "AWBURST" }} , 
 	{ "name": "m_axi_csr_x_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_csr_x_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_csr_x_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_x", "role": "AWPROT" }} , 
 	{ "name": "m_axi_csr_x_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "AWQOS" }} , 
 	{ "name": "m_axi_csr_x_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "AWREGION" }} , 
 	{ "name": "m_axi_csr_x_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "AWUSER" }} , 
 	{ "name": "m_axi_csr_x_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "WVALID" }} , 
 	{ "name": "m_axi_csr_x_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "WREADY" }} , 
 	{ "name": "m_axi_csr_x_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_x", "role": "WDATA" }} , 
 	{ "name": "m_axi_csr_x_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_x", "role": "WSTRB" }} , 
 	{ "name": "m_axi_csr_x_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "WLAST" }} , 
 	{ "name": "m_axi_csr_x_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "WID" }} , 
 	{ "name": "m_axi_csr_x_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "WUSER" }} , 
 	{ "name": "m_axi_csr_x_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "ARVALID" }} , 
 	{ "name": "m_axi_csr_x_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "ARREADY" }} , 
 	{ "name": "m_axi_csr_x_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_x", "role": "ARADDR" }} , 
 	{ "name": "m_axi_csr_x_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "ARID" }} , 
 	{ "name": "m_axi_csr_x_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_x", "role": "ARLEN" }} , 
 	{ "name": "m_axi_csr_x_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_x", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_csr_x_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "ARBURST" }} , 
 	{ "name": "m_axi_csr_x_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_csr_x_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_csr_x_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_x", "role": "ARPROT" }} , 
 	{ "name": "m_axi_csr_x_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "ARQOS" }} , 
 	{ "name": "m_axi_csr_x_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_x", "role": "ARREGION" }} , 
 	{ "name": "m_axi_csr_x_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "ARUSER" }} , 
 	{ "name": "m_axi_csr_x_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "RVALID" }} , 
 	{ "name": "m_axi_csr_x_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "RREADY" }} , 
 	{ "name": "m_axi_csr_x_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_x", "role": "RDATA" }} , 
 	{ "name": "m_axi_csr_x_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "RLAST" }} , 
 	{ "name": "m_axi_csr_x_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "RID" }} , 
 	{ "name": "m_axi_csr_x_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "RUSER" }} , 
 	{ "name": "m_axi_csr_x_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "RRESP" }} , 
 	{ "name": "m_axi_csr_x_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "BVALID" }} , 
 	{ "name": "m_axi_csr_x_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "BREADY" }} , 
 	{ "name": "m_axi_csr_x_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_x", "role": "BRESP" }} , 
 	{ "name": "m_axi_csr_x_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "BID" }} , 
 	{ "name": "m_axi_csr_x_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_x", "role": "BUSER" }} , 
 	{ "name": "m_axi_csr_y_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "AWVALID" }} , 
 	{ "name": "m_axi_csr_y_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "AWREADY" }} , 
 	{ "name": "m_axi_csr_y_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_y", "role": "AWADDR" }} , 
 	{ "name": "m_axi_csr_y_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "AWID" }} , 
 	{ "name": "m_axi_csr_y_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_y", "role": "AWLEN" }} , 
 	{ "name": "m_axi_csr_y_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_y", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_csr_y_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "AWBURST" }} , 
 	{ "name": "m_axi_csr_y_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_csr_y_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_csr_y_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_y", "role": "AWPROT" }} , 
 	{ "name": "m_axi_csr_y_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "AWQOS" }} , 
 	{ "name": "m_axi_csr_y_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "AWREGION" }} , 
 	{ "name": "m_axi_csr_y_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "AWUSER" }} , 
 	{ "name": "m_axi_csr_y_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "WVALID" }} , 
 	{ "name": "m_axi_csr_y_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "WREADY" }} , 
 	{ "name": "m_axi_csr_y_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_y", "role": "WDATA" }} , 
 	{ "name": "m_axi_csr_y_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_y", "role": "WSTRB" }} , 
 	{ "name": "m_axi_csr_y_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "WLAST" }} , 
 	{ "name": "m_axi_csr_y_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "WID" }} , 
 	{ "name": "m_axi_csr_y_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "WUSER" }} , 
 	{ "name": "m_axi_csr_y_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "ARVALID" }} , 
 	{ "name": "m_axi_csr_y_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "ARREADY" }} , 
 	{ "name": "m_axi_csr_y_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_y", "role": "ARADDR" }} , 
 	{ "name": "m_axi_csr_y_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "ARID" }} , 
 	{ "name": "m_axi_csr_y_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_y", "role": "ARLEN" }} , 
 	{ "name": "m_axi_csr_y_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_y", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_csr_y_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "ARBURST" }} , 
 	{ "name": "m_axi_csr_y_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_csr_y_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_csr_y_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_y", "role": "ARPROT" }} , 
 	{ "name": "m_axi_csr_y_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "ARQOS" }} , 
 	{ "name": "m_axi_csr_y_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_y", "role": "ARREGION" }} , 
 	{ "name": "m_axi_csr_y_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "ARUSER" }} , 
 	{ "name": "m_axi_csr_y_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "RVALID" }} , 
 	{ "name": "m_axi_csr_y_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "RREADY" }} , 
 	{ "name": "m_axi_csr_y_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_y", "role": "RDATA" }} , 
 	{ "name": "m_axi_csr_y_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "RLAST" }} , 
 	{ "name": "m_axi_csr_y_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "RID" }} , 
 	{ "name": "m_axi_csr_y_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "RUSER" }} , 
 	{ "name": "m_axi_csr_y_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "RRESP" }} , 
 	{ "name": "m_axi_csr_y_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "BVALID" }} , 
 	{ "name": "m_axi_csr_y_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "BREADY" }} , 
 	{ "name": "m_axi_csr_y_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_y", "role": "BRESP" }} , 
 	{ "name": "m_axi_csr_y_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "BID" }} , 
 	{ "name": "m_axi_csr_y_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_y", "role": "BUSER" }} , 
 	{ "name": "m_axi_csr_z_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "AWVALID" }} , 
 	{ "name": "m_axi_csr_z_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "AWREADY" }} , 
 	{ "name": "m_axi_csr_z_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_z", "role": "AWADDR" }} , 
 	{ "name": "m_axi_csr_z_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "AWID" }} , 
 	{ "name": "m_axi_csr_z_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_z", "role": "AWLEN" }} , 
 	{ "name": "m_axi_csr_z_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_z", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_csr_z_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "AWBURST" }} , 
 	{ "name": "m_axi_csr_z_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_csr_z_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_csr_z_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_z", "role": "AWPROT" }} , 
 	{ "name": "m_axi_csr_z_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "AWQOS" }} , 
 	{ "name": "m_axi_csr_z_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "AWREGION" }} , 
 	{ "name": "m_axi_csr_z_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "AWUSER" }} , 
 	{ "name": "m_axi_csr_z_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "WVALID" }} , 
 	{ "name": "m_axi_csr_z_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "WREADY" }} , 
 	{ "name": "m_axi_csr_z_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_z", "role": "WDATA" }} , 
 	{ "name": "m_axi_csr_z_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_z", "role": "WSTRB" }} , 
 	{ "name": "m_axi_csr_z_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "WLAST" }} , 
 	{ "name": "m_axi_csr_z_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "WID" }} , 
 	{ "name": "m_axi_csr_z_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "WUSER" }} , 
 	{ "name": "m_axi_csr_z_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "ARVALID" }} , 
 	{ "name": "m_axi_csr_z_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "ARREADY" }} , 
 	{ "name": "m_axi_csr_z_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_z", "role": "ARADDR" }} , 
 	{ "name": "m_axi_csr_z_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "ARID" }} , 
 	{ "name": "m_axi_csr_z_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "csr_z", "role": "ARLEN" }} , 
 	{ "name": "m_axi_csr_z_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_z", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_csr_z_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "ARBURST" }} , 
 	{ "name": "m_axi_csr_z_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_csr_z_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_csr_z_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr_z", "role": "ARPROT" }} , 
 	{ "name": "m_axi_csr_z_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "ARQOS" }} , 
 	{ "name": "m_axi_csr_z_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "csr_z", "role": "ARREGION" }} , 
 	{ "name": "m_axi_csr_z_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "ARUSER" }} , 
 	{ "name": "m_axi_csr_z_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "RVALID" }} , 
 	{ "name": "m_axi_csr_z_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "RREADY" }} , 
 	{ "name": "m_axi_csr_z_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "csr_z", "role": "RDATA" }} , 
 	{ "name": "m_axi_csr_z_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "RLAST" }} , 
 	{ "name": "m_axi_csr_z_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "RID" }} , 
 	{ "name": "m_axi_csr_z_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "RUSER" }} , 
 	{ "name": "m_axi_csr_z_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "RRESP" }} , 
 	{ "name": "m_axi_csr_z_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "BVALID" }} , 
 	{ "name": "m_axi_csr_z_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "BREADY" }} , 
 	{ "name": "m_axi_csr_z_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "csr_z", "role": "BRESP" }} , 
 	{ "name": "m_axi_csr_z_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "BID" }} , 
 	{ "name": "m_axi_csr_z_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "csr_z", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "row_product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "csr_x", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "csr_x_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "csr_x_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "csr_y", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "csr_y_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "csr_y_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "csr_z", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "csr_z_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "csr_z_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "csr_z_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "csr_z_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "csr_z_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_rowptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_colind", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_rowptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_colind", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_rowptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_colind", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_data", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.csr_x_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.csr_y_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.csr_z_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	row_product {
		csr_x {Type I LastRead 40 FirstWrite -1}
		csr_y {Type I LastRead 71 FirstWrite -1}
		csr_z {Type IO LastRead 39 FirstWrite 2}
		x_rowptr {Type I LastRead 0 FirstWrite -1}
		x_colind {Type I LastRead 0 FirstWrite -1}
		x_data {Type I LastRead 0 FirstWrite -1}
		y_rowptr {Type I LastRead 0 FirstWrite -1}
		y_colind {Type I LastRead 0 FirstWrite -1}
		y_data {Type I LastRead 0 FirstWrite -1}
		z_rowptr {Type I LastRead 0 FirstWrite -1}
		z_colind {Type I LastRead 0 FirstWrite -1}
		z_data {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
]}

set Spec2ImplPortList { 
	csr_x { m_axi {  { m_axi_csr_x_AWVALID VALID 1 1 }  { m_axi_csr_x_AWREADY READY 0 1 }  { m_axi_csr_x_AWADDR ADDR 1 64 }  { m_axi_csr_x_AWID ID 1 1 }  { m_axi_csr_x_AWLEN LEN 1 8 }  { m_axi_csr_x_AWSIZE SIZE 1 3 }  { m_axi_csr_x_AWBURST BURST 1 2 }  { m_axi_csr_x_AWLOCK LOCK 1 2 }  { m_axi_csr_x_AWCACHE CACHE 1 4 }  { m_axi_csr_x_AWPROT PROT 1 3 }  { m_axi_csr_x_AWQOS QOS 1 4 }  { m_axi_csr_x_AWREGION REGION 1 4 }  { m_axi_csr_x_AWUSER USER 1 1 }  { m_axi_csr_x_WVALID VALID 1 1 }  { m_axi_csr_x_WREADY READY 0 1 }  { m_axi_csr_x_WDATA DATA 1 64 }  { m_axi_csr_x_WSTRB STRB 1 8 }  { m_axi_csr_x_WLAST LAST 1 1 }  { m_axi_csr_x_WID ID 1 1 }  { m_axi_csr_x_WUSER USER 1 1 }  { m_axi_csr_x_ARVALID VALID 1 1 }  { m_axi_csr_x_ARREADY READY 0 1 }  { m_axi_csr_x_ARADDR ADDR 1 64 }  { m_axi_csr_x_ARID ID 1 1 }  { m_axi_csr_x_ARLEN LEN 1 8 }  { m_axi_csr_x_ARSIZE SIZE 1 3 }  { m_axi_csr_x_ARBURST BURST 1 2 }  { m_axi_csr_x_ARLOCK LOCK 1 2 }  { m_axi_csr_x_ARCACHE CACHE 1 4 }  { m_axi_csr_x_ARPROT PROT 1 3 }  { m_axi_csr_x_ARQOS QOS 1 4 }  { m_axi_csr_x_ARREGION REGION 1 4 }  { m_axi_csr_x_ARUSER USER 1 1 }  { m_axi_csr_x_RVALID VALID 0 1 }  { m_axi_csr_x_RREADY READY 1 1 }  { m_axi_csr_x_RDATA DATA 0 64 }  { m_axi_csr_x_RLAST LAST 0 1 }  { m_axi_csr_x_RID ID 0 1 }  { m_axi_csr_x_RUSER USER 0 1 }  { m_axi_csr_x_RRESP RESP 0 2 }  { m_axi_csr_x_BVALID VALID 0 1 }  { m_axi_csr_x_BREADY READY 1 1 }  { m_axi_csr_x_BRESP RESP 0 2 }  { m_axi_csr_x_BID ID 0 1 }  { m_axi_csr_x_BUSER USER 0 1 } } }
	csr_y { m_axi {  { m_axi_csr_y_AWVALID VALID 1 1 }  { m_axi_csr_y_AWREADY READY 0 1 }  { m_axi_csr_y_AWADDR ADDR 1 64 }  { m_axi_csr_y_AWID ID 1 1 }  { m_axi_csr_y_AWLEN LEN 1 8 }  { m_axi_csr_y_AWSIZE SIZE 1 3 }  { m_axi_csr_y_AWBURST BURST 1 2 }  { m_axi_csr_y_AWLOCK LOCK 1 2 }  { m_axi_csr_y_AWCACHE CACHE 1 4 }  { m_axi_csr_y_AWPROT PROT 1 3 }  { m_axi_csr_y_AWQOS QOS 1 4 }  { m_axi_csr_y_AWREGION REGION 1 4 }  { m_axi_csr_y_AWUSER USER 1 1 }  { m_axi_csr_y_WVALID VALID 1 1 }  { m_axi_csr_y_WREADY READY 0 1 }  { m_axi_csr_y_WDATA DATA 1 64 }  { m_axi_csr_y_WSTRB STRB 1 8 }  { m_axi_csr_y_WLAST LAST 1 1 }  { m_axi_csr_y_WID ID 1 1 }  { m_axi_csr_y_WUSER USER 1 1 }  { m_axi_csr_y_ARVALID VALID 1 1 }  { m_axi_csr_y_ARREADY READY 0 1 }  { m_axi_csr_y_ARADDR ADDR 1 64 }  { m_axi_csr_y_ARID ID 1 1 }  { m_axi_csr_y_ARLEN LEN 1 8 }  { m_axi_csr_y_ARSIZE SIZE 1 3 }  { m_axi_csr_y_ARBURST BURST 1 2 }  { m_axi_csr_y_ARLOCK LOCK 1 2 }  { m_axi_csr_y_ARCACHE CACHE 1 4 }  { m_axi_csr_y_ARPROT PROT 1 3 }  { m_axi_csr_y_ARQOS QOS 1 4 }  { m_axi_csr_y_ARREGION REGION 1 4 }  { m_axi_csr_y_ARUSER USER 1 1 }  { m_axi_csr_y_RVALID VALID 0 1 }  { m_axi_csr_y_RREADY READY 1 1 }  { m_axi_csr_y_RDATA DATA 0 64 }  { m_axi_csr_y_RLAST LAST 0 1 }  { m_axi_csr_y_RID ID 0 1 }  { m_axi_csr_y_RUSER USER 0 1 }  { m_axi_csr_y_RRESP RESP 0 2 }  { m_axi_csr_y_BVALID VALID 0 1 }  { m_axi_csr_y_BREADY READY 1 1 }  { m_axi_csr_y_BRESP RESP 0 2 }  { m_axi_csr_y_BID ID 0 1 }  { m_axi_csr_y_BUSER USER 0 1 } } }
	csr_z { m_axi {  { m_axi_csr_z_AWVALID VALID 1 1 }  { m_axi_csr_z_AWREADY READY 0 1 }  { m_axi_csr_z_AWADDR ADDR 1 64 }  { m_axi_csr_z_AWID ID 1 1 }  { m_axi_csr_z_AWLEN LEN 1 8 }  { m_axi_csr_z_AWSIZE SIZE 1 3 }  { m_axi_csr_z_AWBURST BURST 1 2 }  { m_axi_csr_z_AWLOCK LOCK 1 2 }  { m_axi_csr_z_AWCACHE CACHE 1 4 }  { m_axi_csr_z_AWPROT PROT 1 3 }  { m_axi_csr_z_AWQOS QOS 1 4 }  { m_axi_csr_z_AWREGION REGION 1 4 }  { m_axi_csr_z_AWUSER USER 1 1 }  { m_axi_csr_z_WVALID VALID 1 1 }  { m_axi_csr_z_WREADY READY 0 1 }  { m_axi_csr_z_WDATA DATA 1 64 }  { m_axi_csr_z_WSTRB STRB 1 8 }  { m_axi_csr_z_WLAST LAST 1 1 }  { m_axi_csr_z_WID ID 1 1 }  { m_axi_csr_z_WUSER USER 1 1 }  { m_axi_csr_z_ARVALID VALID 1 1 }  { m_axi_csr_z_ARREADY READY 0 1 }  { m_axi_csr_z_ARADDR ADDR 1 64 }  { m_axi_csr_z_ARID ID 1 1 }  { m_axi_csr_z_ARLEN LEN 1 8 }  { m_axi_csr_z_ARSIZE SIZE 1 3 }  { m_axi_csr_z_ARBURST BURST 1 2 }  { m_axi_csr_z_ARLOCK LOCK 1 2 }  { m_axi_csr_z_ARCACHE CACHE 1 4 }  { m_axi_csr_z_ARPROT PROT 1 3 }  { m_axi_csr_z_ARQOS QOS 1 4 }  { m_axi_csr_z_ARREGION REGION 1 4 }  { m_axi_csr_z_ARUSER USER 1 1 }  { m_axi_csr_z_RVALID VALID 0 1 }  { m_axi_csr_z_RREADY READY 1 1 }  { m_axi_csr_z_RDATA DATA 0 64 }  { m_axi_csr_z_RLAST LAST 0 1 }  { m_axi_csr_z_RID ID 0 1 }  { m_axi_csr_z_RUSER USER 0 1 }  { m_axi_csr_z_RRESP RESP 0 2 }  { m_axi_csr_z_BVALID VALID 0 1 }  { m_axi_csr_z_BREADY READY 1 1 }  { m_axi_csr_z_BRESP RESP 0 2 }  { m_axi_csr_z_BID ID 0 1 }  { m_axi_csr_z_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ csr_x { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ csr_y { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ csr_z { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ csr_x 1 }
	{ csr_y 1 }
	{ csr_z 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ csr_x 1 }
	{ csr_y 1 }
	{ csr_z 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
