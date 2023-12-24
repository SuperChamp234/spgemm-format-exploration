set moduleName accumulate
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {accumulate}
set C_modelType { void 0 }
set C_modelArgList {
	{ z_rowptr int 32 regular {axi_master 0}  }
	{ z_colind int 32 regular {axi_master 0}  }
	{ z_data int 32 regular {axi_master 0}  }
	{ csr2_rowptr int 32 regular {array 5 { 1 1 } 1 1 }  }
	{ csr2_colind int 3 regular {array 20 { 1 3 } 1 1 }  }
	{ csr2_data int 32 regular {array 20 { 1 3 } 1 1 }  }
	{ out_csr_rowptr int 32 regular {array 5 { 0 3 } 0 1 }  }
	{ out_csr_colind int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ out_csr_data int 32 regular {array 20 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "z_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_colind", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_csr_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_csr_colind", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_csr_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 165
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_z_rowptr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_z_rowptr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_z_rowptr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_z_rowptr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_z_rowptr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_z_rowptr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_z_rowptr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_z_rowptr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_z_rowptr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_z_rowptr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_z_rowptr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_z_rowptr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_z_rowptr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_z_rowptr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_z_rowptr_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_z_colind_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_z_colind_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_z_colind_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_z_colind_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_z_colind_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_z_colind_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_z_colind_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_z_colind_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_z_colind_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_z_colind_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_z_colind_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_z_colind_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_z_colind_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_z_colind_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_z_colind_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_z_colind_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_z_colind_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_z_colind_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_z_colind_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_z_colind_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_z_colind_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_z_colind_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_z_colind_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_z_colind_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_z_data_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_z_data_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_z_data_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_z_data_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_z_data_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_z_data_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_z_data_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_z_data_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_z_data_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_z_data_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_z_data_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_z_data_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_z_data_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_z_data_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_z_data_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_z_data_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_z_data_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_z_data_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_z_data_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_z_data_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_z_data_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_z_data_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_z_data_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_z_data_BUSER sc_in sc_lv 1 signal 2 } 
	{ csr2_rowptr_address0 sc_out sc_lv 3 signal 3 } 
	{ csr2_rowptr_ce0 sc_out sc_logic 1 signal 3 } 
	{ csr2_rowptr_q0 sc_in sc_lv 32 signal 3 } 
	{ csr2_rowptr_address1 sc_out sc_lv 3 signal 3 } 
	{ csr2_rowptr_ce1 sc_out sc_logic 1 signal 3 } 
	{ csr2_rowptr_q1 sc_in sc_lv 32 signal 3 } 
	{ csr2_colind_address0 sc_out sc_lv 5 signal 4 } 
	{ csr2_colind_ce0 sc_out sc_logic 1 signal 4 } 
	{ csr2_colind_q0 sc_in sc_lv 3 signal 4 } 
	{ csr2_data_address0 sc_out sc_lv 5 signal 5 } 
	{ csr2_data_ce0 sc_out sc_logic 1 signal 5 } 
	{ csr2_data_q0 sc_in sc_lv 32 signal 5 } 
	{ out_csr_rowptr_address0 sc_out sc_lv 3 signal 6 } 
	{ out_csr_rowptr_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_csr_rowptr_we0 sc_out sc_logic 1 signal 6 } 
	{ out_csr_rowptr_d0 sc_out sc_lv 32 signal 6 } 
	{ out_csr_colind_address0 sc_out sc_lv 5 signal 7 } 
	{ out_csr_colind_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_csr_colind_we0 sc_out sc_logic 1 signal 7 } 
	{ out_csr_colind_d0 sc_out sc_lv 32 signal 7 } 
	{ out_csr_data_address0 sc_out sc_lv 5 signal 8 } 
	{ out_csr_data_ce0 sc_out sc_logic 1 signal 8 } 
	{ out_csr_data_we0 sc_out sc_logic 1 signal 8 } 
	{ out_csr_data_d0 sc_out sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_z_rowptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_z_rowptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_z_rowptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_z_rowptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWID" }} , 
 	{ "name": "m_axi_z_rowptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_z_rowptr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_z_rowptr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_z_rowptr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_z_rowptr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_z_rowptr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_z_rowptr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_z_rowptr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_z_rowptr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_z_rowptr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WVALID" }} , 
 	{ "name": "m_axi_z_rowptr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WREADY" }} , 
 	{ "name": "m_axi_z_rowptr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WDATA" }} , 
 	{ "name": "m_axi_z_rowptr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_z_rowptr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WLAST" }} , 
 	{ "name": "m_axi_z_rowptr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WID" }} , 
 	{ "name": "m_axi_z_rowptr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "WUSER" }} , 
 	{ "name": "m_axi_z_rowptr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_z_rowptr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_z_rowptr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_z_rowptr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARID" }} , 
 	{ "name": "m_axi_z_rowptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_z_rowptr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_z_rowptr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_z_rowptr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_z_rowptr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_z_rowptr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_z_rowptr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_z_rowptr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_z_rowptr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_z_rowptr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RVALID" }} , 
 	{ "name": "m_axi_z_rowptr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RREADY" }} , 
 	{ "name": "m_axi_z_rowptr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RDATA" }} , 
 	{ "name": "m_axi_z_rowptr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RLAST" }} , 
 	{ "name": "m_axi_z_rowptr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RID" }} , 
 	{ "name": "m_axi_z_rowptr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RUSER" }} , 
 	{ "name": "m_axi_z_rowptr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "RRESP" }} , 
 	{ "name": "m_axi_z_rowptr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "BVALID" }} , 
 	{ "name": "m_axi_z_rowptr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "BREADY" }} , 
 	{ "name": "m_axi_z_rowptr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_rowptr", "role": "BRESP" }} , 
 	{ "name": "m_axi_z_rowptr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "BID" }} , 
 	{ "name": "m_axi_z_rowptr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "BUSER" }} , 
 	{ "name": "m_axi_z_colind_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "AWVALID" }} , 
 	{ "name": "m_axi_z_colind_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "AWREADY" }} , 
 	{ "name": "m_axi_z_colind_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_colind", "role": "AWADDR" }} , 
 	{ "name": "m_axi_z_colind_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "AWID" }} , 
 	{ "name": "m_axi_z_colind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_colind", "role": "AWLEN" }} , 
 	{ "name": "m_axi_z_colind_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_colind", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_z_colind_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "AWBURST" }} , 
 	{ "name": "m_axi_z_colind_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_z_colind_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_z_colind_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_colind", "role": "AWPROT" }} , 
 	{ "name": "m_axi_z_colind_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "AWQOS" }} , 
 	{ "name": "m_axi_z_colind_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "AWREGION" }} , 
 	{ "name": "m_axi_z_colind_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "AWUSER" }} , 
 	{ "name": "m_axi_z_colind_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "WVALID" }} , 
 	{ "name": "m_axi_z_colind_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "WREADY" }} , 
 	{ "name": "m_axi_z_colind_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_colind", "role": "WDATA" }} , 
 	{ "name": "m_axi_z_colind_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "WSTRB" }} , 
 	{ "name": "m_axi_z_colind_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "WLAST" }} , 
 	{ "name": "m_axi_z_colind_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "WID" }} , 
 	{ "name": "m_axi_z_colind_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "WUSER" }} , 
 	{ "name": "m_axi_z_colind_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "ARVALID" }} , 
 	{ "name": "m_axi_z_colind_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "ARREADY" }} , 
 	{ "name": "m_axi_z_colind_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_colind", "role": "ARADDR" }} , 
 	{ "name": "m_axi_z_colind_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "ARID" }} , 
 	{ "name": "m_axi_z_colind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_colind", "role": "ARLEN" }} , 
 	{ "name": "m_axi_z_colind_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_colind", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_z_colind_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "ARBURST" }} , 
 	{ "name": "m_axi_z_colind_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_z_colind_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_z_colind_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_colind", "role": "ARPROT" }} , 
 	{ "name": "m_axi_z_colind_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "ARQOS" }} , 
 	{ "name": "m_axi_z_colind_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_colind", "role": "ARREGION" }} , 
 	{ "name": "m_axi_z_colind_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "ARUSER" }} , 
 	{ "name": "m_axi_z_colind_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "RVALID" }} , 
 	{ "name": "m_axi_z_colind_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "RREADY" }} , 
 	{ "name": "m_axi_z_colind_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_colind", "role": "RDATA" }} , 
 	{ "name": "m_axi_z_colind_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "RLAST" }} , 
 	{ "name": "m_axi_z_colind_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "RID" }} , 
 	{ "name": "m_axi_z_colind_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "RUSER" }} , 
 	{ "name": "m_axi_z_colind_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "RRESP" }} , 
 	{ "name": "m_axi_z_colind_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "BVALID" }} , 
 	{ "name": "m_axi_z_colind_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "BREADY" }} , 
 	{ "name": "m_axi_z_colind_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_colind", "role": "BRESP" }} , 
 	{ "name": "m_axi_z_colind_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "BID" }} , 
 	{ "name": "m_axi_z_colind_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_colind", "role": "BUSER" }} , 
 	{ "name": "m_axi_z_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_z_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_z_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_z_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "AWID" }} , 
 	{ "name": "m_axi_z_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_z_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_z_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_z_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_z_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_z_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_z_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_z_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_z_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_z_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_z_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_z_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_z_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_z_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_z_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "WID" }} , 
 	{ "name": "m_axi_z_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_z_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_z_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_z_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_z_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "ARID" }} , 
 	{ "name": "m_axi_z_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_z_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_z_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_z_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_z_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_z_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_z_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_z_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_z_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_z_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_z_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_z_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_z_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_z_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "RID" }} , 
 	{ "name": "m_axi_z_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_z_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_z_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_z_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_z_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "z_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_z_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "BID" }} , 
 	{ "name": "m_axi_z_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "BUSER" }} , 
 	{ "name": "csr2_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "address0" }} , 
 	{ "name": "csr2_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "ce0" }} , 
 	{ "name": "csr2_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "q0" }} , 
 	{ "name": "csr2_rowptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "address1" }} , 
 	{ "name": "csr2_rowptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "ce1" }} , 
 	{ "name": "csr2_rowptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "q1" }} , 
 	{ "name": "csr2_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "csr2_colind", "role": "address0" }} , 
 	{ "name": "csr2_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_colind", "role": "ce0" }} , 
 	{ "name": "csr2_colind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "csr2_colind", "role": "q0" }} , 
 	{ "name": "csr2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "csr2_data", "role": "address0" }} , 
 	{ "name": "csr2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_data", "role": "ce0" }} , 
 	{ "name": "csr2_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_data", "role": "q0" }} , 
 	{ "name": "out_csr_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_csr_rowptr", "role": "address0" }} , 
 	{ "name": "out_csr_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_rowptr", "role": "ce0" }} , 
 	{ "name": "out_csr_rowptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_rowptr", "role": "we0" }} , 
 	{ "name": "out_csr_rowptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_csr_rowptr", "role": "d0" }} , 
 	{ "name": "out_csr_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_csr_colind", "role": "address0" }} , 
 	{ "name": "out_csr_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_colind", "role": "ce0" }} , 
 	{ "name": "out_csr_colind_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_colind", "role": "we0" }} , 
 	{ "name": "out_csr_colind_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_csr_colind", "role": "d0" }} , 
 	{ "name": "out_csr_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_csr_data", "role": "address0" }} , 
 	{ "name": "out_csr_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_data", "role": "ce0" }} , 
 	{ "name": "out_csr_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_csr_data", "role": "we0" }} , 
 	{ "name": "out_csr_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_csr_data", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "accumulate",
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
			{"Name" : "z_rowptr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_rowptr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "z_colind", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_colind_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "z_colind_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "z_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "z_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "csr2_rowptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr2_colind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr2_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_csr_rowptr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_csr_colind", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_csr_data", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeRows_fu_355", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "mergeRows",
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
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "colind1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "colind1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "colind2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "colind2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "merged_colind", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "merged_colind_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "merged_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "merged_data_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeRows_fu_355.colind1_buff_fifo_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeRows_fu_355.colind2_buff_fifo_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colind1_fifo_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colind2_fifo_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data1_fifo_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data2_fifo_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merged_colind_fifo_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merged_data_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accumulate {
		z_rowptr {Type I LastRead 10 FirstWrite -1}
		z_colind {Type I LastRead 20 FirstWrite -1}
		z_data {Type I LastRead 20 FirstWrite -1}
		csr2_rowptr {Type I LastRead 21 FirstWrite -1}
		csr2_colind {Type I LastRead 22 FirstWrite -1}
		csr2_data {Type I LastRead 22 FirstWrite -1}
		out_csr_rowptr {Type O LastRead -1 FirstWrite 2}
		out_csr_colind {Type O LastRead -1 FirstWrite 26}
		out_csr_data {Type O LastRead -1 FirstWrite 26}}
	mergeRows {
		colind1 {Type I LastRead 4 FirstWrite -1}
		colind2 {Type I LastRead 6 FirstWrite -1}
		data1 {Type I LastRead 5 FirstWrite -1}
		data2 {Type I LastRead 7 FirstWrite -1}
		merged_colind {Type O LastRead -1 FirstWrite 3}
		merged_data {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	z_rowptr { m_axi {  { m_axi_z_rowptr_AWVALID VALID 1 1 }  { m_axi_z_rowptr_AWREADY READY 0 1 }  { m_axi_z_rowptr_AWADDR ADDR 1 64 }  { m_axi_z_rowptr_AWID ID 1 1 }  { m_axi_z_rowptr_AWLEN LEN 1 32 }  { m_axi_z_rowptr_AWSIZE SIZE 1 3 }  { m_axi_z_rowptr_AWBURST BURST 1 2 }  { m_axi_z_rowptr_AWLOCK LOCK 1 2 }  { m_axi_z_rowptr_AWCACHE CACHE 1 4 }  { m_axi_z_rowptr_AWPROT PROT 1 3 }  { m_axi_z_rowptr_AWQOS QOS 1 4 }  { m_axi_z_rowptr_AWREGION REGION 1 4 }  { m_axi_z_rowptr_AWUSER USER 1 1 }  { m_axi_z_rowptr_WVALID VALID 1 1 }  { m_axi_z_rowptr_WREADY READY 0 1 }  { m_axi_z_rowptr_WDATA DATA 1 32 }  { m_axi_z_rowptr_WSTRB STRB 1 4 }  { m_axi_z_rowptr_WLAST LAST 1 1 }  { m_axi_z_rowptr_WID ID 1 1 }  { m_axi_z_rowptr_WUSER USER 1 1 }  { m_axi_z_rowptr_ARVALID VALID 1 1 }  { m_axi_z_rowptr_ARREADY READY 0 1 }  { m_axi_z_rowptr_ARADDR ADDR 1 64 }  { m_axi_z_rowptr_ARID ID 1 1 }  { m_axi_z_rowptr_ARLEN LEN 1 32 }  { m_axi_z_rowptr_ARSIZE SIZE 1 3 }  { m_axi_z_rowptr_ARBURST BURST 1 2 }  { m_axi_z_rowptr_ARLOCK LOCK 1 2 }  { m_axi_z_rowptr_ARCACHE CACHE 1 4 }  { m_axi_z_rowptr_ARPROT PROT 1 3 }  { m_axi_z_rowptr_ARQOS QOS 1 4 }  { m_axi_z_rowptr_ARREGION REGION 1 4 }  { m_axi_z_rowptr_ARUSER USER 1 1 }  { m_axi_z_rowptr_RVALID VALID 0 1 }  { m_axi_z_rowptr_RREADY READY 1 1 }  { m_axi_z_rowptr_RDATA DATA 0 32 }  { m_axi_z_rowptr_RLAST LAST 0 1 }  { m_axi_z_rowptr_RID ID 0 1 }  { m_axi_z_rowptr_RUSER USER 0 1 }  { m_axi_z_rowptr_RRESP RESP 0 2 }  { m_axi_z_rowptr_BVALID VALID 0 1 }  { m_axi_z_rowptr_BREADY READY 1 1 }  { m_axi_z_rowptr_BRESP RESP 0 2 }  { m_axi_z_rowptr_BID ID 0 1 }  { m_axi_z_rowptr_BUSER USER 0 1 } } }
	z_colind { m_axi {  { m_axi_z_colind_AWVALID VALID 1 1 }  { m_axi_z_colind_AWREADY READY 0 1 }  { m_axi_z_colind_AWADDR ADDR 1 64 }  { m_axi_z_colind_AWID ID 1 1 }  { m_axi_z_colind_AWLEN LEN 1 32 }  { m_axi_z_colind_AWSIZE SIZE 1 3 }  { m_axi_z_colind_AWBURST BURST 1 2 }  { m_axi_z_colind_AWLOCK LOCK 1 2 }  { m_axi_z_colind_AWCACHE CACHE 1 4 }  { m_axi_z_colind_AWPROT PROT 1 3 }  { m_axi_z_colind_AWQOS QOS 1 4 }  { m_axi_z_colind_AWREGION REGION 1 4 }  { m_axi_z_colind_AWUSER USER 1 1 }  { m_axi_z_colind_WVALID VALID 1 1 }  { m_axi_z_colind_WREADY READY 0 1 }  { m_axi_z_colind_WDATA DATA 1 32 }  { m_axi_z_colind_WSTRB STRB 1 4 }  { m_axi_z_colind_WLAST LAST 1 1 }  { m_axi_z_colind_WID ID 1 1 }  { m_axi_z_colind_WUSER USER 1 1 }  { m_axi_z_colind_ARVALID VALID 1 1 }  { m_axi_z_colind_ARREADY READY 0 1 }  { m_axi_z_colind_ARADDR ADDR 1 64 }  { m_axi_z_colind_ARID ID 1 1 }  { m_axi_z_colind_ARLEN LEN 1 32 }  { m_axi_z_colind_ARSIZE SIZE 1 3 }  { m_axi_z_colind_ARBURST BURST 1 2 }  { m_axi_z_colind_ARLOCK LOCK 1 2 }  { m_axi_z_colind_ARCACHE CACHE 1 4 }  { m_axi_z_colind_ARPROT PROT 1 3 }  { m_axi_z_colind_ARQOS QOS 1 4 }  { m_axi_z_colind_ARREGION REGION 1 4 }  { m_axi_z_colind_ARUSER USER 1 1 }  { m_axi_z_colind_RVALID VALID 0 1 }  { m_axi_z_colind_RREADY READY 1 1 }  { m_axi_z_colind_RDATA DATA 0 32 }  { m_axi_z_colind_RLAST LAST 0 1 }  { m_axi_z_colind_RID ID 0 1 }  { m_axi_z_colind_RUSER USER 0 1 }  { m_axi_z_colind_RRESP RESP 0 2 }  { m_axi_z_colind_BVALID VALID 0 1 }  { m_axi_z_colind_BREADY READY 1 1 }  { m_axi_z_colind_BRESP RESP 0 2 }  { m_axi_z_colind_BID ID 0 1 }  { m_axi_z_colind_BUSER USER 0 1 } } }
	z_data { m_axi {  { m_axi_z_data_AWVALID VALID 1 1 }  { m_axi_z_data_AWREADY READY 0 1 }  { m_axi_z_data_AWADDR ADDR 1 64 }  { m_axi_z_data_AWID ID 1 1 }  { m_axi_z_data_AWLEN LEN 1 32 }  { m_axi_z_data_AWSIZE SIZE 1 3 }  { m_axi_z_data_AWBURST BURST 1 2 }  { m_axi_z_data_AWLOCK LOCK 1 2 }  { m_axi_z_data_AWCACHE CACHE 1 4 }  { m_axi_z_data_AWPROT PROT 1 3 }  { m_axi_z_data_AWQOS QOS 1 4 }  { m_axi_z_data_AWREGION REGION 1 4 }  { m_axi_z_data_AWUSER USER 1 1 }  { m_axi_z_data_WVALID VALID 1 1 }  { m_axi_z_data_WREADY READY 0 1 }  { m_axi_z_data_WDATA DATA 1 32 }  { m_axi_z_data_WSTRB STRB 1 4 }  { m_axi_z_data_WLAST LAST 1 1 }  { m_axi_z_data_WID ID 1 1 }  { m_axi_z_data_WUSER USER 1 1 }  { m_axi_z_data_ARVALID VALID 1 1 }  { m_axi_z_data_ARREADY READY 0 1 }  { m_axi_z_data_ARADDR ADDR 1 64 }  { m_axi_z_data_ARID ID 1 1 }  { m_axi_z_data_ARLEN LEN 1 32 }  { m_axi_z_data_ARSIZE SIZE 1 3 }  { m_axi_z_data_ARBURST BURST 1 2 }  { m_axi_z_data_ARLOCK LOCK 1 2 }  { m_axi_z_data_ARCACHE CACHE 1 4 }  { m_axi_z_data_ARPROT PROT 1 3 }  { m_axi_z_data_ARQOS QOS 1 4 }  { m_axi_z_data_ARREGION REGION 1 4 }  { m_axi_z_data_ARUSER USER 1 1 }  { m_axi_z_data_RVALID VALID 0 1 }  { m_axi_z_data_RREADY READY 1 1 }  { m_axi_z_data_RDATA DATA 0 32 }  { m_axi_z_data_RLAST LAST 0 1 }  { m_axi_z_data_RID ID 0 1 }  { m_axi_z_data_RUSER USER 0 1 }  { m_axi_z_data_RRESP RESP 0 2 }  { m_axi_z_data_BVALID VALID 0 1 }  { m_axi_z_data_BREADY READY 1 1 }  { m_axi_z_data_BRESP RESP 0 2 }  { m_axi_z_data_BID ID 0 1 }  { m_axi_z_data_BUSER USER 0 1 } } }
	csr2_rowptr { ap_memory {  { csr2_rowptr_address0 mem_address 1 3 }  { csr2_rowptr_ce0 mem_ce 1 1 }  { csr2_rowptr_q0 mem_dout 0 32 }  { csr2_rowptr_address1 MemPortADDR2 1 3 }  { csr2_rowptr_ce1 MemPortCE2 1 1 }  { csr2_rowptr_q1 MemPortDOUT2 0 32 } } }
	csr2_colind { ap_memory {  { csr2_colind_address0 mem_address 1 5 }  { csr2_colind_ce0 mem_ce 1 1 }  { csr2_colind_q0 mem_dout 0 3 } } }
	csr2_data { ap_memory {  { csr2_data_address0 mem_address 1 5 }  { csr2_data_ce0 mem_ce 1 1 }  { csr2_data_q0 mem_dout 0 32 } } }
	out_csr_rowptr { ap_memory {  { out_csr_rowptr_address0 mem_address 1 3 }  { out_csr_rowptr_ce0 mem_ce 1 1 }  { out_csr_rowptr_we0 mem_we 1 1 }  { out_csr_rowptr_d0 mem_din 1 32 } } }
	out_csr_colind { ap_memory {  { out_csr_colind_address0 mem_address 1 5 }  { out_csr_colind_ce0 mem_ce 1 1 }  { out_csr_colind_we0 mem_we 1 1 }  { out_csr_colind_d0 mem_din 1 32 } } }
	out_csr_data { ap_memory {  { out_csr_data_address0 mem_address 1 5 }  { out_csr_data_ce0 mem_ce 1 1 }  { out_csr_data_we0 mem_we 1 1 }  { out_csr_data_d0 mem_din 1 32 } } }
}
