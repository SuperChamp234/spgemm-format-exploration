set moduleName Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit103_proc
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
set C_modelName {Block__ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei.exit103_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ z_rowptr int 32 regular {axi_master 2}  }
	{ x_rowptr int 32 regular {axi_master 0}  }
	{ x_colind int 32 regular {axi_master 0}  }
	{ x_data int 32 regular {axi_master 0}  }
	{ y_rowptr int 32 regular {axi_master 0}  }
	{ y_data int 32 regular {axi_master 0}  }
	{ y_colind int 32 regular {axi_master 0}  }
	{ z_colind int 32 regular {axi_master 1}  }
	{ z_data int 32 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "z_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "x_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 412
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
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
	{ m_axi_x_rowptr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_rowptr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_rowptr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_rowptr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_rowptr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_rowptr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_rowptr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_rowptr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_rowptr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_rowptr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_rowptr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_x_rowptr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_rowptr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_rowptr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_rowptr_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_colind_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_colind_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_colind_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_colind_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_colind_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_colind_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_colind_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_colind_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_colind_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_colind_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_colind_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_colind_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_colind_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_colind_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_colind_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_colind_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_x_colind_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_colind_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_colind_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_colind_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_colind_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_colind_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_colind_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_colind_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_data_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_x_data_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_x_data_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_x_data_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_x_data_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_x_data_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_x_data_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_x_data_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_x_data_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_x_data_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_x_data_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_x_data_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_x_data_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_x_data_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_x_data_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_x_data_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_x_data_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_x_data_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_x_data_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_x_data_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_x_data_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_x_data_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_x_data_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_x_data_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_y_rowptr_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_y_rowptr_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_y_rowptr_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowptr_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowptr_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_y_rowptr_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_y_rowptr_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_y_rowptr_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowptr_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowptr_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowptr_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_y_rowptr_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowptr_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_y_rowptr_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowptr_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_data_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_y_data_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_y_data_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_y_data_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_y_data_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_y_data_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_y_data_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_y_data_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_y_data_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_y_data_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_y_data_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_y_data_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_y_data_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_y_data_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_y_data_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_y_data_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_y_data_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_y_data_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_y_data_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_y_data_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_y_data_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_y_colind_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_y_colind_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_y_colind_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_y_colind_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_y_colind_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_y_colind_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_y_colind_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_y_colind_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_y_colind_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_y_colind_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_y_colind_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_y_colind_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_y_colind_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_y_colind_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_y_colind_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_y_colind_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_y_colind_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_y_colind_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_y_colind_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_y_colind_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_y_colind_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_y_colind_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_y_colind_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_y_colind_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_z_colind_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_z_colind_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_AWLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_z_colind_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_z_colind_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_z_colind_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_z_colind_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_z_colind_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_z_colind_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_z_colind_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_ARLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_z_colind_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_z_colind_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_z_colind_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_z_colind_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_z_colind_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_z_colind_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_z_colind_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_z_colind_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_z_colind_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_z_colind_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_z_colind_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_z_colind_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_z_data_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_z_data_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_z_data_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_z_data_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_z_data_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_z_data_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_z_data_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_z_data_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_z_data_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_z_data_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_z_data_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_z_data_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_z_data_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_z_data_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_z_data_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_z_data_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_z_data_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_z_data_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_z_data_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_z_data_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_z_data_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_z_data_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_z_data_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_z_data_BUSER sc_in sc_lv 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "m_axi_x_rowptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_rowptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_rowptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_rowptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWID" }} , 
 	{ "name": "m_axi_x_rowptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_rowptr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_rowptr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_rowptr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_rowptr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_rowptr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_rowptr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_rowptr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_rowptr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_rowptr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_rowptr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_rowptr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_rowptr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_rowptr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_rowptr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WID" }} , 
 	{ "name": "m_axi_x_rowptr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_rowptr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_rowptr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_rowptr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_rowptr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARID" }} , 
 	{ "name": "m_axi_x_rowptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_rowptr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_rowptr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_rowptr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_rowptr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_rowptr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_rowptr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_rowptr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_rowptr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_rowptr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_rowptr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_rowptr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_rowptr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_rowptr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RID" }} , 
 	{ "name": "m_axi_x_rowptr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_rowptr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_rowptr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_rowptr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_rowptr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_rowptr", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_rowptr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "BID" }} , 
 	{ "name": "m_axi_x_rowptr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "BUSER" }} , 
 	{ "name": "m_axi_x_colind_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_colind_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_colind_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_colind", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_colind_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "AWID" }} , 
 	{ "name": "m_axi_x_colind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_colind", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_colind_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_colind", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_colind_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_colind_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_colind_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_colind_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_colind", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_colind_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_colind_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_colind_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_colind_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_colind_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_colind_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_colind", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_colind_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_colind_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_colind_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "WID" }} , 
 	{ "name": "m_axi_x_colind_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_colind_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_colind_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_colind_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_colind", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_colind_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "ARID" }} , 
 	{ "name": "m_axi_x_colind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_colind", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_colind_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_colind", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_colind_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_colind_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_colind_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_colind_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_colind", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_colind_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_colind_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_colind", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_colind_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_colind_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_colind_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_colind_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_colind", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_colind_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_colind_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "RID" }} , 
 	{ "name": "m_axi_x_colind_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_colind_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_colind_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_colind_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_colind_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_colind", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_colind_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "BID" }} , 
 	{ "name": "m_axi_x_colind_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_colind", "role": "BUSER" }} , 
 	{ "name": "m_axi_x_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "AWID" }} , 
 	{ "name": "m_axi_x_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "WID" }} , 
 	{ "name": "m_axi_x_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "ARID" }} , 
 	{ "name": "m_axi_x_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "RID" }} , 
 	{ "name": "m_axi_x_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "BID" }} , 
 	{ "name": "m_axi_x_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_data", "role": "BUSER" }} , 
 	{ "name": "m_axi_y_rowptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_rowptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_rowptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_rowptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWID" }} , 
 	{ "name": "m_axi_y_rowptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_y_rowptr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_y_rowptr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_y_rowptr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_y_rowptr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_y_rowptr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_y_rowptr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_y_rowptr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_y_rowptr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_y_rowptr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WVALID" }} , 
 	{ "name": "m_axi_y_rowptr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WREADY" }} , 
 	{ "name": "m_axi_y_rowptr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WDATA" }} , 
 	{ "name": "m_axi_y_rowptr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_y_rowptr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WLAST" }} , 
 	{ "name": "m_axi_y_rowptr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WID" }} , 
 	{ "name": "m_axi_y_rowptr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "WUSER" }} , 
 	{ "name": "m_axi_y_rowptr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_y_rowptr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_y_rowptr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_y_rowptr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARID" }} , 
 	{ "name": "m_axi_y_rowptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_y_rowptr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_y_rowptr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_y_rowptr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_y_rowptr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_y_rowptr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_y_rowptr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_y_rowptr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_y_rowptr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_y_rowptr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RVALID" }} , 
 	{ "name": "m_axi_y_rowptr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RREADY" }} , 
 	{ "name": "m_axi_y_rowptr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RDATA" }} , 
 	{ "name": "m_axi_y_rowptr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RLAST" }} , 
 	{ "name": "m_axi_y_rowptr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RID" }} , 
 	{ "name": "m_axi_y_rowptr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RUSER" }} , 
 	{ "name": "m_axi_y_rowptr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "RRESP" }} , 
 	{ "name": "m_axi_y_rowptr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "BVALID" }} , 
 	{ "name": "m_axi_y_rowptr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "BREADY" }} , 
 	{ "name": "m_axi_y_rowptr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowptr", "role": "BRESP" }} , 
 	{ "name": "m_axi_y_rowptr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "BID" }} , 
 	{ "name": "m_axi_y_rowptr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowptr", "role": "BUSER" }} , 
 	{ "name": "m_axi_y_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWID" }} , 
 	{ "name": "m_axi_y_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_y_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_y_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_y_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_y_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_y_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_y_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_y_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_y_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_y_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_y_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_y_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_y_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_y_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_y_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "WID" }} , 
 	{ "name": "m_axi_y_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_y_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_y_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_y_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_y_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "ARID" }} , 
 	{ "name": "m_axi_y_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_y_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_y_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_y_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_y_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_y_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_y_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_y_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_y_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_y_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_y_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_y_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_y_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_y_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "RID" }} , 
 	{ "name": "m_axi_y_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_y_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_y_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_y_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_y_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_y_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "BID" }} , 
 	{ "name": "m_axi_y_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "BUSER" }} , 
 	{ "name": "m_axi_y_colind_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_colind_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_colind_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_colind", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_colind_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "AWID" }} , 
 	{ "name": "m_axi_y_colind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colind", "role": "AWLEN" }} , 
 	{ "name": "m_axi_y_colind_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colind", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_y_colind_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "AWBURST" }} , 
 	{ "name": "m_axi_y_colind_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_y_colind_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_y_colind_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colind", "role": "AWPROT" }} , 
 	{ "name": "m_axi_y_colind_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "AWQOS" }} , 
 	{ "name": "m_axi_y_colind_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "AWREGION" }} , 
 	{ "name": "m_axi_y_colind_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "AWUSER" }} , 
 	{ "name": "m_axi_y_colind_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "WVALID" }} , 
 	{ "name": "m_axi_y_colind_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "WREADY" }} , 
 	{ "name": "m_axi_y_colind_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colind", "role": "WDATA" }} , 
 	{ "name": "m_axi_y_colind_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "WSTRB" }} , 
 	{ "name": "m_axi_y_colind_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "WLAST" }} , 
 	{ "name": "m_axi_y_colind_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "WID" }} , 
 	{ "name": "m_axi_y_colind_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "WUSER" }} , 
 	{ "name": "m_axi_y_colind_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "ARVALID" }} , 
 	{ "name": "m_axi_y_colind_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "ARREADY" }} , 
 	{ "name": "m_axi_y_colind_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_colind", "role": "ARADDR" }} , 
 	{ "name": "m_axi_y_colind_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "ARID" }} , 
 	{ "name": "m_axi_y_colind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colind", "role": "ARLEN" }} , 
 	{ "name": "m_axi_y_colind_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colind", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_y_colind_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "ARBURST" }} , 
 	{ "name": "m_axi_y_colind_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_y_colind_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_y_colind_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colind", "role": "ARPROT" }} , 
 	{ "name": "m_axi_y_colind_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "ARQOS" }} , 
 	{ "name": "m_axi_y_colind_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colind", "role": "ARREGION" }} , 
 	{ "name": "m_axi_y_colind_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "ARUSER" }} , 
 	{ "name": "m_axi_y_colind_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "RVALID" }} , 
 	{ "name": "m_axi_y_colind_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "RREADY" }} , 
 	{ "name": "m_axi_y_colind_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colind", "role": "RDATA" }} , 
 	{ "name": "m_axi_y_colind_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "RLAST" }} , 
 	{ "name": "m_axi_y_colind_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "RID" }} , 
 	{ "name": "m_axi_y_colind_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "RUSER" }} , 
 	{ "name": "m_axi_y_colind_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "RRESP" }} , 
 	{ "name": "m_axi_y_colind_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "BVALID" }} , 
 	{ "name": "m_axi_y_colind_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "BREADY" }} , 
 	{ "name": "m_axi_y_colind_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colind", "role": "BRESP" }} , 
 	{ "name": "m_axi_y_colind_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "BID" }} , 
 	{ "name": "m_axi_y_colind_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colind", "role": "BUSER" }} , 
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
 	{ "name": "m_axi_z_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_data", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit103_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "z_rowptr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_rowptr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_rowptr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_rowptr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "x_rowptr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_colind", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_colind_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "x_colind_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "x_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_rowptr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_rowptr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_rowptr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_colind", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_colind_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_colind_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "z_colind", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_colind_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_colind_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "z_colind_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "z_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_data_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "z_data_blk_n_B", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit103_proc {
		z_rowptr {Type IO LastRead 37 FirstWrite 1}
		x_rowptr {Type I LastRead 20 FirstWrite -1}
		x_colind {Type I LastRead 31 FirstWrite -1}
		x_data {Type I LastRead 40 FirstWrite -1}
		y_rowptr {Type I LastRead 51 FirstWrite -1}
		y_data {Type I LastRead 69 FirstWrite -1}
		y_colind {Type I LastRead 60 FirstWrite -1}
		z_colind {Type O LastRead 36 FirstWrite 35}
		z_data {Type O LastRead 36 FirstWrite 35}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
]}

set Spec2ImplPortList { 
	z_rowptr { m_axi {  { m_axi_z_rowptr_AWVALID VALID 1 1 }  { m_axi_z_rowptr_AWREADY READY 0 1 }  { m_axi_z_rowptr_AWADDR ADDR 1 64 }  { m_axi_z_rowptr_AWID ID 1 1 }  { m_axi_z_rowptr_AWLEN LEN 1 32 }  { m_axi_z_rowptr_AWSIZE SIZE 1 3 }  { m_axi_z_rowptr_AWBURST BURST 1 2 }  { m_axi_z_rowptr_AWLOCK LOCK 1 2 }  { m_axi_z_rowptr_AWCACHE CACHE 1 4 }  { m_axi_z_rowptr_AWPROT PROT 1 3 }  { m_axi_z_rowptr_AWQOS QOS 1 4 }  { m_axi_z_rowptr_AWREGION REGION 1 4 }  { m_axi_z_rowptr_AWUSER USER 1 1 }  { m_axi_z_rowptr_WVALID VALID 1 1 }  { m_axi_z_rowptr_WREADY READY 0 1 }  { m_axi_z_rowptr_WDATA DATA 1 32 }  { m_axi_z_rowptr_WSTRB STRB 1 4 }  { m_axi_z_rowptr_WLAST LAST 1 1 }  { m_axi_z_rowptr_WID ID 1 1 }  { m_axi_z_rowptr_WUSER USER 1 1 }  { m_axi_z_rowptr_ARVALID VALID 1 1 }  { m_axi_z_rowptr_ARREADY READY 0 1 }  { m_axi_z_rowptr_ARADDR ADDR 1 64 }  { m_axi_z_rowptr_ARID ID 1 1 }  { m_axi_z_rowptr_ARLEN LEN 1 32 }  { m_axi_z_rowptr_ARSIZE SIZE 1 3 }  { m_axi_z_rowptr_ARBURST BURST 1 2 }  { m_axi_z_rowptr_ARLOCK LOCK 1 2 }  { m_axi_z_rowptr_ARCACHE CACHE 1 4 }  { m_axi_z_rowptr_ARPROT PROT 1 3 }  { m_axi_z_rowptr_ARQOS QOS 1 4 }  { m_axi_z_rowptr_ARREGION REGION 1 4 }  { m_axi_z_rowptr_ARUSER USER 1 1 }  { m_axi_z_rowptr_RVALID VALID 0 1 }  { m_axi_z_rowptr_RREADY READY 1 1 }  { m_axi_z_rowptr_RDATA DATA 0 32 }  { m_axi_z_rowptr_RLAST LAST 0 1 }  { m_axi_z_rowptr_RID ID 0 1 }  { m_axi_z_rowptr_RUSER USER 0 1 }  { m_axi_z_rowptr_RRESP RESP 0 2 }  { m_axi_z_rowptr_BVALID VALID 0 1 }  { m_axi_z_rowptr_BREADY READY 1 1 }  { m_axi_z_rowptr_BRESP RESP 0 2 }  { m_axi_z_rowptr_BID ID 0 1 }  { m_axi_z_rowptr_BUSER USER 0 1 } } }
	x_rowptr { m_axi {  { m_axi_x_rowptr_AWVALID VALID 1 1 }  { m_axi_x_rowptr_AWREADY READY 0 1 }  { m_axi_x_rowptr_AWADDR ADDR 1 64 }  { m_axi_x_rowptr_AWID ID 1 1 }  { m_axi_x_rowptr_AWLEN LEN 1 32 }  { m_axi_x_rowptr_AWSIZE SIZE 1 3 }  { m_axi_x_rowptr_AWBURST BURST 1 2 }  { m_axi_x_rowptr_AWLOCK LOCK 1 2 }  { m_axi_x_rowptr_AWCACHE CACHE 1 4 }  { m_axi_x_rowptr_AWPROT PROT 1 3 }  { m_axi_x_rowptr_AWQOS QOS 1 4 }  { m_axi_x_rowptr_AWREGION REGION 1 4 }  { m_axi_x_rowptr_AWUSER USER 1 1 }  { m_axi_x_rowptr_WVALID VALID 1 1 }  { m_axi_x_rowptr_WREADY READY 0 1 }  { m_axi_x_rowptr_WDATA DATA 1 32 }  { m_axi_x_rowptr_WSTRB STRB 1 4 }  { m_axi_x_rowptr_WLAST LAST 1 1 }  { m_axi_x_rowptr_WID ID 1 1 }  { m_axi_x_rowptr_WUSER USER 1 1 }  { m_axi_x_rowptr_ARVALID VALID 1 1 }  { m_axi_x_rowptr_ARREADY READY 0 1 }  { m_axi_x_rowptr_ARADDR ADDR 1 64 }  { m_axi_x_rowptr_ARID ID 1 1 }  { m_axi_x_rowptr_ARLEN LEN 1 32 }  { m_axi_x_rowptr_ARSIZE SIZE 1 3 }  { m_axi_x_rowptr_ARBURST BURST 1 2 }  { m_axi_x_rowptr_ARLOCK LOCK 1 2 }  { m_axi_x_rowptr_ARCACHE CACHE 1 4 }  { m_axi_x_rowptr_ARPROT PROT 1 3 }  { m_axi_x_rowptr_ARQOS QOS 1 4 }  { m_axi_x_rowptr_ARREGION REGION 1 4 }  { m_axi_x_rowptr_ARUSER USER 1 1 }  { m_axi_x_rowptr_RVALID VALID 0 1 }  { m_axi_x_rowptr_RREADY READY 1 1 }  { m_axi_x_rowptr_RDATA DATA 0 32 }  { m_axi_x_rowptr_RLAST LAST 0 1 }  { m_axi_x_rowptr_RID ID 0 1 }  { m_axi_x_rowptr_RUSER USER 0 1 }  { m_axi_x_rowptr_RRESP RESP 0 2 }  { m_axi_x_rowptr_BVALID VALID 0 1 }  { m_axi_x_rowptr_BREADY READY 1 1 }  { m_axi_x_rowptr_BRESP RESP 0 2 }  { m_axi_x_rowptr_BID ID 0 1 }  { m_axi_x_rowptr_BUSER USER 0 1 } } }
	x_colind { m_axi {  { m_axi_x_colind_AWVALID VALID 1 1 }  { m_axi_x_colind_AWREADY READY 0 1 }  { m_axi_x_colind_AWADDR ADDR 1 64 }  { m_axi_x_colind_AWID ID 1 1 }  { m_axi_x_colind_AWLEN LEN 1 32 }  { m_axi_x_colind_AWSIZE SIZE 1 3 }  { m_axi_x_colind_AWBURST BURST 1 2 }  { m_axi_x_colind_AWLOCK LOCK 1 2 }  { m_axi_x_colind_AWCACHE CACHE 1 4 }  { m_axi_x_colind_AWPROT PROT 1 3 }  { m_axi_x_colind_AWQOS QOS 1 4 }  { m_axi_x_colind_AWREGION REGION 1 4 }  { m_axi_x_colind_AWUSER USER 1 1 }  { m_axi_x_colind_WVALID VALID 1 1 }  { m_axi_x_colind_WREADY READY 0 1 }  { m_axi_x_colind_WDATA DATA 1 32 }  { m_axi_x_colind_WSTRB STRB 1 4 }  { m_axi_x_colind_WLAST LAST 1 1 }  { m_axi_x_colind_WID ID 1 1 }  { m_axi_x_colind_WUSER USER 1 1 }  { m_axi_x_colind_ARVALID VALID 1 1 }  { m_axi_x_colind_ARREADY READY 0 1 }  { m_axi_x_colind_ARADDR ADDR 1 64 }  { m_axi_x_colind_ARID ID 1 1 }  { m_axi_x_colind_ARLEN LEN 1 32 }  { m_axi_x_colind_ARSIZE SIZE 1 3 }  { m_axi_x_colind_ARBURST BURST 1 2 }  { m_axi_x_colind_ARLOCK LOCK 1 2 }  { m_axi_x_colind_ARCACHE CACHE 1 4 }  { m_axi_x_colind_ARPROT PROT 1 3 }  { m_axi_x_colind_ARQOS QOS 1 4 }  { m_axi_x_colind_ARREGION REGION 1 4 }  { m_axi_x_colind_ARUSER USER 1 1 }  { m_axi_x_colind_RVALID VALID 0 1 }  { m_axi_x_colind_RREADY READY 1 1 }  { m_axi_x_colind_RDATA DATA 0 32 }  { m_axi_x_colind_RLAST LAST 0 1 }  { m_axi_x_colind_RID ID 0 1 }  { m_axi_x_colind_RUSER USER 0 1 }  { m_axi_x_colind_RRESP RESP 0 2 }  { m_axi_x_colind_BVALID VALID 0 1 }  { m_axi_x_colind_BREADY READY 1 1 }  { m_axi_x_colind_BRESP RESP 0 2 }  { m_axi_x_colind_BID ID 0 1 }  { m_axi_x_colind_BUSER USER 0 1 } } }
	x_data { m_axi {  { m_axi_x_data_AWVALID VALID 1 1 }  { m_axi_x_data_AWREADY READY 0 1 }  { m_axi_x_data_AWADDR ADDR 1 64 }  { m_axi_x_data_AWID ID 1 1 }  { m_axi_x_data_AWLEN LEN 1 32 }  { m_axi_x_data_AWSIZE SIZE 1 3 }  { m_axi_x_data_AWBURST BURST 1 2 }  { m_axi_x_data_AWLOCK LOCK 1 2 }  { m_axi_x_data_AWCACHE CACHE 1 4 }  { m_axi_x_data_AWPROT PROT 1 3 }  { m_axi_x_data_AWQOS QOS 1 4 }  { m_axi_x_data_AWREGION REGION 1 4 }  { m_axi_x_data_AWUSER USER 1 1 }  { m_axi_x_data_WVALID VALID 1 1 }  { m_axi_x_data_WREADY READY 0 1 }  { m_axi_x_data_WDATA DATA 1 32 }  { m_axi_x_data_WSTRB STRB 1 4 }  { m_axi_x_data_WLAST LAST 1 1 }  { m_axi_x_data_WID ID 1 1 }  { m_axi_x_data_WUSER USER 1 1 }  { m_axi_x_data_ARVALID VALID 1 1 }  { m_axi_x_data_ARREADY READY 0 1 }  { m_axi_x_data_ARADDR ADDR 1 64 }  { m_axi_x_data_ARID ID 1 1 }  { m_axi_x_data_ARLEN LEN 1 32 }  { m_axi_x_data_ARSIZE SIZE 1 3 }  { m_axi_x_data_ARBURST BURST 1 2 }  { m_axi_x_data_ARLOCK LOCK 1 2 }  { m_axi_x_data_ARCACHE CACHE 1 4 }  { m_axi_x_data_ARPROT PROT 1 3 }  { m_axi_x_data_ARQOS QOS 1 4 }  { m_axi_x_data_ARREGION REGION 1 4 }  { m_axi_x_data_ARUSER USER 1 1 }  { m_axi_x_data_RVALID VALID 0 1 }  { m_axi_x_data_RREADY READY 1 1 }  { m_axi_x_data_RDATA DATA 0 32 }  { m_axi_x_data_RLAST LAST 0 1 }  { m_axi_x_data_RID ID 0 1 }  { m_axi_x_data_RUSER USER 0 1 }  { m_axi_x_data_RRESP RESP 0 2 }  { m_axi_x_data_BVALID VALID 0 1 }  { m_axi_x_data_BREADY READY 1 1 }  { m_axi_x_data_BRESP RESP 0 2 }  { m_axi_x_data_BID ID 0 1 }  { m_axi_x_data_BUSER USER 0 1 } } }
	y_rowptr { m_axi {  { m_axi_y_rowptr_AWVALID VALID 1 1 }  { m_axi_y_rowptr_AWREADY READY 0 1 }  { m_axi_y_rowptr_AWADDR ADDR 1 64 }  { m_axi_y_rowptr_AWID ID 1 1 }  { m_axi_y_rowptr_AWLEN LEN 1 32 }  { m_axi_y_rowptr_AWSIZE SIZE 1 3 }  { m_axi_y_rowptr_AWBURST BURST 1 2 }  { m_axi_y_rowptr_AWLOCK LOCK 1 2 }  { m_axi_y_rowptr_AWCACHE CACHE 1 4 }  { m_axi_y_rowptr_AWPROT PROT 1 3 }  { m_axi_y_rowptr_AWQOS QOS 1 4 }  { m_axi_y_rowptr_AWREGION REGION 1 4 }  { m_axi_y_rowptr_AWUSER USER 1 1 }  { m_axi_y_rowptr_WVALID VALID 1 1 }  { m_axi_y_rowptr_WREADY READY 0 1 }  { m_axi_y_rowptr_WDATA DATA 1 32 }  { m_axi_y_rowptr_WSTRB STRB 1 4 }  { m_axi_y_rowptr_WLAST LAST 1 1 }  { m_axi_y_rowptr_WID ID 1 1 }  { m_axi_y_rowptr_WUSER USER 1 1 }  { m_axi_y_rowptr_ARVALID VALID 1 1 }  { m_axi_y_rowptr_ARREADY READY 0 1 }  { m_axi_y_rowptr_ARADDR ADDR 1 64 }  { m_axi_y_rowptr_ARID ID 1 1 }  { m_axi_y_rowptr_ARLEN LEN 1 32 }  { m_axi_y_rowptr_ARSIZE SIZE 1 3 }  { m_axi_y_rowptr_ARBURST BURST 1 2 }  { m_axi_y_rowptr_ARLOCK LOCK 1 2 }  { m_axi_y_rowptr_ARCACHE CACHE 1 4 }  { m_axi_y_rowptr_ARPROT PROT 1 3 }  { m_axi_y_rowptr_ARQOS QOS 1 4 }  { m_axi_y_rowptr_ARREGION REGION 1 4 }  { m_axi_y_rowptr_ARUSER USER 1 1 }  { m_axi_y_rowptr_RVALID VALID 0 1 }  { m_axi_y_rowptr_RREADY READY 1 1 }  { m_axi_y_rowptr_RDATA DATA 0 32 }  { m_axi_y_rowptr_RLAST LAST 0 1 }  { m_axi_y_rowptr_RID ID 0 1 }  { m_axi_y_rowptr_RUSER USER 0 1 }  { m_axi_y_rowptr_RRESP RESP 0 2 }  { m_axi_y_rowptr_BVALID VALID 0 1 }  { m_axi_y_rowptr_BREADY READY 1 1 }  { m_axi_y_rowptr_BRESP RESP 0 2 }  { m_axi_y_rowptr_BID ID 0 1 }  { m_axi_y_rowptr_BUSER USER 0 1 } } }
	y_data { m_axi {  { m_axi_y_data_AWVALID VALID 1 1 }  { m_axi_y_data_AWREADY READY 0 1 }  { m_axi_y_data_AWADDR ADDR 1 64 }  { m_axi_y_data_AWID ID 1 1 }  { m_axi_y_data_AWLEN LEN 1 32 }  { m_axi_y_data_AWSIZE SIZE 1 3 }  { m_axi_y_data_AWBURST BURST 1 2 }  { m_axi_y_data_AWLOCK LOCK 1 2 }  { m_axi_y_data_AWCACHE CACHE 1 4 }  { m_axi_y_data_AWPROT PROT 1 3 }  { m_axi_y_data_AWQOS QOS 1 4 }  { m_axi_y_data_AWREGION REGION 1 4 }  { m_axi_y_data_AWUSER USER 1 1 }  { m_axi_y_data_WVALID VALID 1 1 }  { m_axi_y_data_WREADY READY 0 1 }  { m_axi_y_data_WDATA DATA 1 32 }  { m_axi_y_data_WSTRB STRB 1 4 }  { m_axi_y_data_WLAST LAST 1 1 }  { m_axi_y_data_WID ID 1 1 }  { m_axi_y_data_WUSER USER 1 1 }  { m_axi_y_data_ARVALID VALID 1 1 }  { m_axi_y_data_ARREADY READY 0 1 }  { m_axi_y_data_ARADDR ADDR 1 64 }  { m_axi_y_data_ARID ID 1 1 }  { m_axi_y_data_ARLEN LEN 1 32 }  { m_axi_y_data_ARSIZE SIZE 1 3 }  { m_axi_y_data_ARBURST BURST 1 2 }  { m_axi_y_data_ARLOCK LOCK 1 2 }  { m_axi_y_data_ARCACHE CACHE 1 4 }  { m_axi_y_data_ARPROT PROT 1 3 }  { m_axi_y_data_ARQOS QOS 1 4 }  { m_axi_y_data_ARREGION REGION 1 4 }  { m_axi_y_data_ARUSER USER 1 1 }  { m_axi_y_data_RVALID VALID 0 1 }  { m_axi_y_data_RREADY READY 1 1 }  { m_axi_y_data_RDATA DATA 0 32 }  { m_axi_y_data_RLAST LAST 0 1 }  { m_axi_y_data_RID ID 0 1 }  { m_axi_y_data_RUSER USER 0 1 }  { m_axi_y_data_RRESP RESP 0 2 }  { m_axi_y_data_BVALID VALID 0 1 }  { m_axi_y_data_BREADY READY 1 1 }  { m_axi_y_data_BRESP RESP 0 2 }  { m_axi_y_data_BID ID 0 1 }  { m_axi_y_data_BUSER USER 0 1 } } }
	y_colind { m_axi {  { m_axi_y_colind_AWVALID VALID 1 1 }  { m_axi_y_colind_AWREADY READY 0 1 }  { m_axi_y_colind_AWADDR ADDR 1 64 }  { m_axi_y_colind_AWID ID 1 1 }  { m_axi_y_colind_AWLEN LEN 1 32 }  { m_axi_y_colind_AWSIZE SIZE 1 3 }  { m_axi_y_colind_AWBURST BURST 1 2 }  { m_axi_y_colind_AWLOCK LOCK 1 2 }  { m_axi_y_colind_AWCACHE CACHE 1 4 }  { m_axi_y_colind_AWPROT PROT 1 3 }  { m_axi_y_colind_AWQOS QOS 1 4 }  { m_axi_y_colind_AWREGION REGION 1 4 }  { m_axi_y_colind_AWUSER USER 1 1 }  { m_axi_y_colind_WVALID VALID 1 1 }  { m_axi_y_colind_WREADY READY 0 1 }  { m_axi_y_colind_WDATA DATA 1 32 }  { m_axi_y_colind_WSTRB STRB 1 4 }  { m_axi_y_colind_WLAST LAST 1 1 }  { m_axi_y_colind_WID ID 1 1 }  { m_axi_y_colind_WUSER USER 1 1 }  { m_axi_y_colind_ARVALID VALID 1 1 }  { m_axi_y_colind_ARREADY READY 0 1 }  { m_axi_y_colind_ARADDR ADDR 1 64 }  { m_axi_y_colind_ARID ID 1 1 }  { m_axi_y_colind_ARLEN LEN 1 32 }  { m_axi_y_colind_ARSIZE SIZE 1 3 }  { m_axi_y_colind_ARBURST BURST 1 2 }  { m_axi_y_colind_ARLOCK LOCK 1 2 }  { m_axi_y_colind_ARCACHE CACHE 1 4 }  { m_axi_y_colind_ARPROT PROT 1 3 }  { m_axi_y_colind_ARQOS QOS 1 4 }  { m_axi_y_colind_ARREGION REGION 1 4 }  { m_axi_y_colind_ARUSER USER 1 1 }  { m_axi_y_colind_RVALID VALID 0 1 }  { m_axi_y_colind_RREADY READY 1 1 }  { m_axi_y_colind_RDATA DATA 0 32 }  { m_axi_y_colind_RLAST LAST 0 1 }  { m_axi_y_colind_RID ID 0 1 }  { m_axi_y_colind_RUSER USER 0 1 }  { m_axi_y_colind_RRESP RESP 0 2 }  { m_axi_y_colind_BVALID VALID 0 1 }  { m_axi_y_colind_BREADY READY 1 1 }  { m_axi_y_colind_BRESP RESP 0 2 }  { m_axi_y_colind_BID ID 0 1 }  { m_axi_y_colind_BUSER USER 0 1 } } }
	z_colind { m_axi {  { m_axi_z_colind_AWVALID VALID 1 1 }  { m_axi_z_colind_AWREADY READY 0 1 }  { m_axi_z_colind_AWADDR ADDR 1 64 }  { m_axi_z_colind_AWID ID 1 1 }  { m_axi_z_colind_AWLEN LEN 1 32 }  { m_axi_z_colind_AWSIZE SIZE 1 3 }  { m_axi_z_colind_AWBURST BURST 1 2 }  { m_axi_z_colind_AWLOCK LOCK 1 2 }  { m_axi_z_colind_AWCACHE CACHE 1 4 }  { m_axi_z_colind_AWPROT PROT 1 3 }  { m_axi_z_colind_AWQOS QOS 1 4 }  { m_axi_z_colind_AWREGION REGION 1 4 }  { m_axi_z_colind_AWUSER USER 1 1 }  { m_axi_z_colind_WVALID VALID 1 1 }  { m_axi_z_colind_WREADY READY 0 1 }  { m_axi_z_colind_WDATA DATA 1 32 }  { m_axi_z_colind_WSTRB STRB 1 4 }  { m_axi_z_colind_WLAST LAST 1 1 }  { m_axi_z_colind_WID ID 1 1 }  { m_axi_z_colind_WUSER USER 1 1 }  { m_axi_z_colind_ARVALID VALID 1 1 }  { m_axi_z_colind_ARREADY READY 0 1 }  { m_axi_z_colind_ARADDR ADDR 1 64 }  { m_axi_z_colind_ARID ID 1 1 }  { m_axi_z_colind_ARLEN LEN 1 32 }  { m_axi_z_colind_ARSIZE SIZE 1 3 }  { m_axi_z_colind_ARBURST BURST 1 2 }  { m_axi_z_colind_ARLOCK LOCK 1 2 }  { m_axi_z_colind_ARCACHE CACHE 1 4 }  { m_axi_z_colind_ARPROT PROT 1 3 }  { m_axi_z_colind_ARQOS QOS 1 4 }  { m_axi_z_colind_ARREGION REGION 1 4 }  { m_axi_z_colind_ARUSER USER 1 1 }  { m_axi_z_colind_RVALID VALID 0 1 }  { m_axi_z_colind_RREADY READY 1 1 }  { m_axi_z_colind_RDATA DATA 0 32 }  { m_axi_z_colind_RLAST LAST 0 1 }  { m_axi_z_colind_RID ID 0 1 }  { m_axi_z_colind_RUSER USER 0 1 }  { m_axi_z_colind_RRESP RESP 0 2 }  { m_axi_z_colind_BVALID VALID 0 1 }  { m_axi_z_colind_BREADY READY 1 1 }  { m_axi_z_colind_BRESP RESP 0 2 }  { m_axi_z_colind_BID ID 0 1 }  { m_axi_z_colind_BUSER USER 0 1 } } }
	z_data { m_axi {  { m_axi_z_data_AWVALID VALID 1 1 }  { m_axi_z_data_AWREADY READY 0 1 }  { m_axi_z_data_AWADDR ADDR 1 64 }  { m_axi_z_data_AWID ID 1 1 }  { m_axi_z_data_AWLEN LEN 1 32 }  { m_axi_z_data_AWSIZE SIZE 1 3 }  { m_axi_z_data_AWBURST BURST 1 2 }  { m_axi_z_data_AWLOCK LOCK 1 2 }  { m_axi_z_data_AWCACHE CACHE 1 4 }  { m_axi_z_data_AWPROT PROT 1 3 }  { m_axi_z_data_AWQOS QOS 1 4 }  { m_axi_z_data_AWREGION REGION 1 4 }  { m_axi_z_data_AWUSER USER 1 1 }  { m_axi_z_data_WVALID VALID 1 1 }  { m_axi_z_data_WREADY READY 0 1 }  { m_axi_z_data_WDATA DATA 1 32 }  { m_axi_z_data_WSTRB STRB 1 4 }  { m_axi_z_data_WLAST LAST 1 1 }  { m_axi_z_data_WID ID 1 1 }  { m_axi_z_data_WUSER USER 1 1 }  { m_axi_z_data_ARVALID VALID 1 1 }  { m_axi_z_data_ARREADY READY 0 1 }  { m_axi_z_data_ARADDR ADDR 1 64 }  { m_axi_z_data_ARID ID 1 1 }  { m_axi_z_data_ARLEN LEN 1 32 }  { m_axi_z_data_ARSIZE SIZE 1 3 }  { m_axi_z_data_ARBURST BURST 1 2 }  { m_axi_z_data_ARLOCK LOCK 1 2 }  { m_axi_z_data_ARCACHE CACHE 1 4 }  { m_axi_z_data_ARPROT PROT 1 3 }  { m_axi_z_data_ARQOS QOS 1 4 }  { m_axi_z_data_ARREGION REGION 1 4 }  { m_axi_z_data_ARUSER USER 1 1 }  { m_axi_z_data_RVALID VALID 0 1 }  { m_axi_z_data_RREADY READY 1 1 }  { m_axi_z_data_RDATA DATA 0 32 }  { m_axi_z_data_RLAST LAST 0 1 }  { m_axi_z_data_RID ID 0 1 }  { m_axi_z_data_RUSER USER 0 1 }  { m_axi_z_data_RRESP RESP 0 2 }  { m_axi_z_data_BVALID VALID 0 1 }  { m_axi_z_data_BREADY READY 1 1 }  { m_axi_z_data_BRESP RESP 0 2 }  { m_axi_z_data_BID ID 0 1 }  { m_axi_z_data_BUSER USER 0 1 } } }
}