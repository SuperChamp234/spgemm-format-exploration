set moduleName outer_product
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
set C_modelName {outer_product}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_rowptr int 32 regular {axi_master 0}  }
	{ x_colind int 32 regular {axi_master 0}  }
	{ x_data int 32 regular {axi_master 0}  }
	{ y_colptr int 32 regular {axi_master 0}  }
	{ y_rowind int 32 regular {axi_master 0}  }
	{ y_data int 32 regular {axi_master 0}  }
	{ z_rowptr int 32 regular {axi_master 2}  }
	{ z_colind int 32 regular {axi_master 2}  }
	{ z_data int 32 regular {axi_master 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "x_rowptr","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "x_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "x_colind","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "x_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "x_data","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y_colptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "y_colptr","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y_rowind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "y_rowind","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "y_data","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "z_rowptr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "z_rowptr","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "z_colind", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "z_colind","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "z_data", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "z_data","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 425
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_x_rowptr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_x_rowptr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_x_rowptr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_rowptr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_rowptr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_rowptr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_x_rowptr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_x_rowptr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_rowptr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_rowptr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_rowptr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_x_rowptr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_rowptr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_rowptr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_rowptr_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_colind_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_colind_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_x_colind_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_colind_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_colind_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_colind_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_colind_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_x_colind_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_x_colind_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_x_colind_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_colind_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_colind_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_x_colind_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_x_colind_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_x_colind_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_x_colind_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_x_colind_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_colind_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_colind_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_colind_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_x_colind_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_x_colind_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_x_colind_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_colind_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_x_data_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_data_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_x_data_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_data_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_data_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_data_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_data_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_x_data_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_x_data_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_x_data_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_data_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_data_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_x_data_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_x_data_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_x_data_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_x_data_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_x_data_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_data_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_data_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_data_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_x_data_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_x_data_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_x_data_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_x_data_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_y_colptr_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_y_colptr_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_y_colptr_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_y_colptr_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_y_colptr_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_y_colptr_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_y_colptr_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_y_colptr_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_y_colptr_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_y_colptr_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_y_colptr_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_y_colptr_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_y_colptr_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_y_colptr_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_y_colptr_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_y_rowind_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_y_rowind_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_y_rowind_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowind_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowind_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_y_rowind_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_y_rowind_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_y_rowind_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowind_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_y_rowind_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_y_rowind_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_y_rowind_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_y_rowind_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_y_rowind_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_rowind_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_y_data_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_y_data_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_y_data_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_y_data_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_y_data_AWLEN sc_out sc_lv 8 signal 5 } 
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
	{ m_axi_y_data_ARLEN sc_out sc_lv 8 signal 5 } 
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
	{ m_axi_z_rowptr_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_z_rowptr_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_z_rowptr_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_z_rowptr_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_z_rowptr_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_z_rowptr_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_z_rowptr_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_z_rowptr_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_z_rowptr_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_z_rowptr_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_z_rowptr_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_z_rowptr_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_z_rowptr_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_z_rowptr_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_z_rowptr_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_z_colind_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_z_colind_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_z_colind_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_z_colind_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_z_colind_AWLEN sc_out sc_lv 8 signal 7 } 
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
	{ m_axi_z_colind_ARLEN sc_out sc_lv 8 signal 7 } 
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
	{ m_axi_z_data_AWLEN sc_out sc_lv 8 signal 8 } 
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
	{ m_axi_z_data_ARLEN sc_out sc_lv 8 signal 8 } 
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"outer_product","role":"start","value":"0","valid_bit":"0"},{"name":"outer_product","role":"continue","value":"0","valid_bit":"4"},{"name":"outer_product","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"outer_product","role":"start","value":"0","valid_bit":"0"},{"name":"outer_product","role":"done","value":"0","valid_bit":"1"},{"name":"outer_product","role":"idle","value":"0","valid_bit":"2"},{"name":"outer_product","role":"ready","value":"0","valid_bit":"3"},{"name":"outer_product","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_x_rowptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_rowptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_rowptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_rowptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWID" }} , 
 	{ "name": "m_axi_x_rowptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_rowptr", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_x_rowptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_rowptr", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_x_colind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_colind", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_x_colind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_colind", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_x_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_x_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_y_colptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_colptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_colptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_colptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWID" }} , 
 	{ "name": "m_axi_y_colptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_y_colptr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_y_colptr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_y_colptr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_y_colptr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_y_colptr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_y_colptr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_y_colptr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_y_colptr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_y_colptr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "WVALID" }} , 
 	{ "name": "m_axi_y_colptr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "WREADY" }} , 
 	{ "name": "m_axi_y_colptr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colptr", "role": "WDATA" }} , 
 	{ "name": "m_axi_y_colptr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_y_colptr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "WLAST" }} , 
 	{ "name": "m_axi_y_colptr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "WID" }} , 
 	{ "name": "m_axi_y_colptr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "WUSER" }} , 
 	{ "name": "m_axi_y_colptr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_y_colptr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_y_colptr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_y_colptr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARID" }} , 
 	{ "name": "m_axi_y_colptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_y_colptr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_y_colptr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_y_colptr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_y_colptr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_y_colptr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_y_colptr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_y_colptr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_y_colptr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_y_colptr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "RVALID" }} , 
 	{ "name": "m_axi_y_colptr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "RREADY" }} , 
 	{ "name": "m_axi_y_colptr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_colptr", "role": "RDATA" }} , 
 	{ "name": "m_axi_y_colptr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "RLAST" }} , 
 	{ "name": "m_axi_y_colptr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "RID" }} , 
 	{ "name": "m_axi_y_colptr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "RUSER" }} , 
 	{ "name": "m_axi_y_colptr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "RRESP" }} , 
 	{ "name": "m_axi_y_colptr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "BVALID" }} , 
 	{ "name": "m_axi_y_colptr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "BREADY" }} , 
 	{ "name": "m_axi_y_colptr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_colptr", "role": "BRESP" }} , 
 	{ "name": "m_axi_y_colptr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "BID" }} , 
 	{ "name": "m_axi_y_colptr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_colptr", "role": "BUSER" }} , 
 	{ "name": "m_axi_y_rowind_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_rowind_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_rowind_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_rowind_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWID" }} , 
 	{ "name": "m_axi_y_rowind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWLEN" }} , 
 	{ "name": "m_axi_y_rowind_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_y_rowind_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWBURST" }} , 
 	{ "name": "m_axi_y_rowind_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_y_rowind_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_y_rowind_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWPROT" }} , 
 	{ "name": "m_axi_y_rowind_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWQOS" }} , 
 	{ "name": "m_axi_y_rowind_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWREGION" }} , 
 	{ "name": "m_axi_y_rowind_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "AWUSER" }} , 
 	{ "name": "m_axi_y_rowind_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "WVALID" }} , 
 	{ "name": "m_axi_y_rowind_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "WREADY" }} , 
 	{ "name": "m_axi_y_rowind_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowind", "role": "WDATA" }} , 
 	{ "name": "m_axi_y_rowind_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "WSTRB" }} , 
 	{ "name": "m_axi_y_rowind_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "WLAST" }} , 
 	{ "name": "m_axi_y_rowind_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "WID" }} , 
 	{ "name": "m_axi_y_rowind_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "WUSER" }} , 
 	{ "name": "m_axi_y_rowind_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARVALID" }} , 
 	{ "name": "m_axi_y_rowind_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARREADY" }} , 
 	{ "name": "m_axi_y_rowind_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARADDR" }} , 
 	{ "name": "m_axi_y_rowind_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARID" }} , 
 	{ "name": "m_axi_y_rowind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARLEN" }} , 
 	{ "name": "m_axi_y_rowind_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_y_rowind_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARBURST" }} , 
 	{ "name": "m_axi_y_rowind_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_y_rowind_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_y_rowind_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARPROT" }} , 
 	{ "name": "m_axi_y_rowind_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARQOS" }} , 
 	{ "name": "m_axi_y_rowind_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARREGION" }} , 
 	{ "name": "m_axi_y_rowind_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "ARUSER" }} , 
 	{ "name": "m_axi_y_rowind_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "RVALID" }} , 
 	{ "name": "m_axi_y_rowind_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "RREADY" }} , 
 	{ "name": "m_axi_y_rowind_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_rowind", "role": "RDATA" }} , 
 	{ "name": "m_axi_y_rowind_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "RLAST" }} , 
 	{ "name": "m_axi_y_rowind_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "RID" }} , 
 	{ "name": "m_axi_y_rowind_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "RUSER" }} , 
 	{ "name": "m_axi_y_rowind_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "RRESP" }} , 
 	{ "name": "m_axi_y_rowind_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "BVALID" }} , 
 	{ "name": "m_axi_y_rowind_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "BREADY" }} , 
 	{ "name": "m_axi_y_rowind_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "y_rowind", "role": "BRESP" }} , 
 	{ "name": "m_axi_y_rowind_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "BID" }} , 
 	{ "name": "m_axi_y_rowind_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_rowind", "role": "BUSER" }} , 
 	{ "name": "m_axi_y_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_y_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_y_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_y_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_data", "role": "AWID" }} , 
 	{ "name": "m_axi_y_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_y_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_z_rowptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_z_rowptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_z_rowptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_z_rowptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWID" }} , 
 	{ "name": "m_axi_z_rowptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_rowptr", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_z_rowptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_rowptr", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_z_colind_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_colind", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_z_colind_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_colind", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_z_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_z_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "z_data", "role": "ARLEN" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "28"],
		"CDFG" : "outer_product",
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
			{"Name" : "y_colptr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_colptr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_colptr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_rowind", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_rowind_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_rowind_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "y_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "z_rowptr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_rowptr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "z_rowptr_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_accumulate_fu_629", "Port" : "z_rowptr"}]},
			{"Name" : "z_colind", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_colind_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_colind_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "z_colind_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_accumulate_fu_629", "Port" : "z_colind"}]},
			{"Name" : "z_data", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "z_data_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "z_data_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_accumulate_fu_629", "Port" : "z_data"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_rowptr_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_colind_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_data_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_colptr_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_rowind_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_data_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_rowptr_m_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_colind_m_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_data_m_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_rowptr_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_colind_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_data_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partial_z_rowptr_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partial_z_colind_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partial_z_data_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629", "Parent" : "0", "Child" : ["19", "22", "23", "24", "25", "26", "27"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.grp_mergeRows_fu_355", "Parent" : "18", "Child" : ["20", "21"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.grp_mergeRows_fu_355.colind1_buff_fifo_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.grp_mergeRows_fu_355.colind2_buff_fifo_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.colind1_fifo_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.colind2_fifo_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.data1_fifo_U", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.data2_fifo_U", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.merged_colind_fifo_U", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_629.merged_data_fifo_U", "Parent" : "18"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_row_col_fu_645", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "multiply_row_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "84",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "row", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_rowptr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_colind", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_row_col_fu_645.grp_mult_fu_302", "Parent" : "28", "Child" : ["30"],
		"CDFG" : "mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_multiply_row_col_fu_645.grp_mult_fu_302.mul_32s_32s_48_1_1_U1", "Parent" : "29"}]}


set ArgLastReadFirstWriteLatency {
	outer_product {
		x_rowptr {Type I LastRead 14 FirstWrite -1}
		x_colind {Type I LastRead 23 FirstWrite -1}
		x_data {Type I LastRead 32 FirstWrite -1}
		y_colptr {Type I LastRead 24 FirstWrite -1}
		y_rowind {Type I LastRead 33 FirstWrite -1}
		y_data {Type I LastRead 33 FirstWrite -1}
		z_rowptr {Type IO LastRead 33 FirstWrite -1}
		z_colind {Type IO LastRead 40 FirstWrite -1}
		z_data {Type IO LastRead 40 FirstWrite -1}}
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
		merged_data {Type O LastRead -1 FirstWrite 3}}
	multiply_row_col {
		row {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		out_rowptr {Type O LastRead -1 FirstWrite 0}
		out_colind {Type O LastRead -1 FirstWrite 4}
		out_data {Type O LastRead -1 FirstWrite 4}}
	mult {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_rowptr { m_axi {  { m_axi_x_rowptr_AWVALID VALID 1 1 }  { m_axi_x_rowptr_AWREADY READY 0 1 }  { m_axi_x_rowptr_AWADDR ADDR 1 64 }  { m_axi_x_rowptr_AWID ID 1 1 }  { m_axi_x_rowptr_AWLEN LEN 1 8 }  { m_axi_x_rowptr_AWSIZE SIZE 1 3 }  { m_axi_x_rowptr_AWBURST BURST 1 2 }  { m_axi_x_rowptr_AWLOCK LOCK 1 2 }  { m_axi_x_rowptr_AWCACHE CACHE 1 4 }  { m_axi_x_rowptr_AWPROT PROT 1 3 }  { m_axi_x_rowptr_AWQOS QOS 1 4 }  { m_axi_x_rowptr_AWREGION REGION 1 4 }  { m_axi_x_rowptr_AWUSER USER 1 1 }  { m_axi_x_rowptr_WVALID VALID 1 1 }  { m_axi_x_rowptr_WREADY READY 0 1 }  { m_axi_x_rowptr_WDATA DATA 1 32 }  { m_axi_x_rowptr_WSTRB STRB 1 4 }  { m_axi_x_rowptr_WLAST LAST 1 1 }  { m_axi_x_rowptr_WID ID 1 1 }  { m_axi_x_rowptr_WUSER USER 1 1 }  { m_axi_x_rowptr_ARVALID VALID 1 1 }  { m_axi_x_rowptr_ARREADY READY 0 1 }  { m_axi_x_rowptr_ARADDR ADDR 1 64 }  { m_axi_x_rowptr_ARID ID 1 1 }  { m_axi_x_rowptr_ARLEN LEN 1 8 }  { m_axi_x_rowptr_ARSIZE SIZE 1 3 }  { m_axi_x_rowptr_ARBURST BURST 1 2 }  { m_axi_x_rowptr_ARLOCK LOCK 1 2 }  { m_axi_x_rowptr_ARCACHE CACHE 1 4 }  { m_axi_x_rowptr_ARPROT PROT 1 3 }  { m_axi_x_rowptr_ARQOS QOS 1 4 }  { m_axi_x_rowptr_ARREGION REGION 1 4 }  { m_axi_x_rowptr_ARUSER USER 1 1 }  { m_axi_x_rowptr_RVALID VALID 0 1 }  { m_axi_x_rowptr_RREADY READY 1 1 }  { m_axi_x_rowptr_RDATA DATA 0 32 }  { m_axi_x_rowptr_RLAST LAST 0 1 }  { m_axi_x_rowptr_RID ID 0 1 }  { m_axi_x_rowptr_RUSER USER 0 1 }  { m_axi_x_rowptr_RRESP RESP 0 2 }  { m_axi_x_rowptr_BVALID VALID 0 1 }  { m_axi_x_rowptr_BREADY READY 1 1 }  { m_axi_x_rowptr_BRESP RESP 0 2 }  { m_axi_x_rowptr_BID ID 0 1 }  { m_axi_x_rowptr_BUSER USER 0 1 } } }
	x_colind { m_axi {  { m_axi_x_colind_AWVALID VALID 1 1 }  { m_axi_x_colind_AWREADY READY 0 1 }  { m_axi_x_colind_AWADDR ADDR 1 64 }  { m_axi_x_colind_AWID ID 1 1 }  { m_axi_x_colind_AWLEN LEN 1 8 }  { m_axi_x_colind_AWSIZE SIZE 1 3 }  { m_axi_x_colind_AWBURST BURST 1 2 }  { m_axi_x_colind_AWLOCK LOCK 1 2 }  { m_axi_x_colind_AWCACHE CACHE 1 4 }  { m_axi_x_colind_AWPROT PROT 1 3 }  { m_axi_x_colind_AWQOS QOS 1 4 }  { m_axi_x_colind_AWREGION REGION 1 4 }  { m_axi_x_colind_AWUSER USER 1 1 }  { m_axi_x_colind_WVALID VALID 1 1 }  { m_axi_x_colind_WREADY READY 0 1 }  { m_axi_x_colind_WDATA DATA 1 32 }  { m_axi_x_colind_WSTRB STRB 1 4 }  { m_axi_x_colind_WLAST LAST 1 1 }  { m_axi_x_colind_WID ID 1 1 }  { m_axi_x_colind_WUSER USER 1 1 }  { m_axi_x_colind_ARVALID VALID 1 1 }  { m_axi_x_colind_ARREADY READY 0 1 }  { m_axi_x_colind_ARADDR ADDR 1 64 }  { m_axi_x_colind_ARID ID 1 1 }  { m_axi_x_colind_ARLEN LEN 1 8 }  { m_axi_x_colind_ARSIZE SIZE 1 3 }  { m_axi_x_colind_ARBURST BURST 1 2 }  { m_axi_x_colind_ARLOCK LOCK 1 2 }  { m_axi_x_colind_ARCACHE CACHE 1 4 }  { m_axi_x_colind_ARPROT PROT 1 3 }  { m_axi_x_colind_ARQOS QOS 1 4 }  { m_axi_x_colind_ARREGION REGION 1 4 }  { m_axi_x_colind_ARUSER USER 1 1 }  { m_axi_x_colind_RVALID VALID 0 1 }  { m_axi_x_colind_RREADY READY 1 1 }  { m_axi_x_colind_RDATA DATA 0 32 }  { m_axi_x_colind_RLAST LAST 0 1 }  { m_axi_x_colind_RID ID 0 1 }  { m_axi_x_colind_RUSER USER 0 1 }  { m_axi_x_colind_RRESP RESP 0 2 }  { m_axi_x_colind_BVALID VALID 0 1 }  { m_axi_x_colind_BREADY READY 1 1 }  { m_axi_x_colind_BRESP RESP 0 2 }  { m_axi_x_colind_BID ID 0 1 }  { m_axi_x_colind_BUSER USER 0 1 } } }
	x_data { m_axi {  { m_axi_x_data_AWVALID VALID 1 1 }  { m_axi_x_data_AWREADY READY 0 1 }  { m_axi_x_data_AWADDR ADDR 1 64 }  { m_axi_x_data_AWID ID 1 1 }  { m_axi_x_data_AWLEN LEN 1 8 }  { m_axi_x_data_AWSIZE SIZE 1 3 }  { m_axi_x_data_AWBURST BURST 1 2 }  { m_axi_x_data_AWLOCK LOCK 1 2 }  { m_axi_x_data_AWCACHE CACHE 1 4 }  { m_axi_x_data_AWPROT PROT 1 3 }  { m_axi_x_data_AWQOS QOS 1 4 }  { m_axi_x_data_AWREGION REGION 1 4 }  { m_axi_x_data_AWUSER USER 1 1 }  { m_axi_x_data_WVALID VALID 1 1 }  { m_axi_x_data_WREADY READY 0 1 }  { m_axi_x_data_WDATA DATA 1 32 }  { m_axi_x_data_WSTRB STRB 1 4 }  { m_axi_x_data_WLAST LAST 1 1 }  { m_axi_x_data_WID ID 1 1 }  { m_axi_x_data_WUSER USER 1 1 }  { m_axi_x_data_ARVALID VALID 1 1 }  { m_axi_x_data_ARREADY READY 0 1 }  { m_axi_x_data_ARADDR ADDR 1 64 }  { m_axi_x_data_ARID ID 1 1 }  { m_axi_x_data_ARLEN LEN 1 8 }  { m_axi_x_data_ARSIZE SIZE 1 3 }  { m_axi_x_data_ARBURST BURST 1 2 }  { m_axi_x_data_ARLOCK LOCK 1 2 }  { m_axi_x_data_ARCACHE CACHE 1 4 }  { m_axi_x_data_ARPROT PROT 1 3 }  { m_axi_x_data_ARQOS QOS 1 4 }  { m_axi_x_data_ARREGION REGION 1 4 }  { m_axi_x_data_ARUSER USER 1 1 }  { m_axi_x_data_RVALID VALID 0 1 }  { m_axi_x_data_RREADY READY 1 1 }  { m_axi_x_data_RDATA DATA 0 32 }  { m_axi_x_data_RLAST LAST 0 1 }  { m_axi_x_data_RID ID 0 1 }  { m_axi_x_data_RUSER USER 0 1 }  { m_axi_x_data_RRESP RESP 0 2 }  { m_axi_x_data_BVALID VALID 0 1 }  { m_axi_x_data_BREADY READY 1 1 }  { m_axi_x_data_BRESP RESP 0 2 }  { m_axi_x_data_BID ID 0 1 }  { m_axi_x_data_BUSER USER 0 1 } } }
	y_colptr { m_axi {  { m_axi_y_colptr_AWVALID VALID 1 1 }  { m_axi_y_colptr_AWREADY READY 0 1 }  { m_axi_y_colptr_AWADDR ADDR 1 64 }  { m_axi_y_colptr_AWID ID 1 1 }  { m_axi_y_colptr_AWLEN LEN 1 8 }  { m_axi_y_colptr_AWSIZE SIZE 1 3 }  { m_axi_y_colptr_AWBURST BURST 1 2 }  { m_axi_y_colptr_AWLOCK LOCK 1 2 }  { m_axi_y_colptr_AWCACHE CACHE 1 4 }  { m_axi_y_colptr_AWPROT PROT 1 3 }  { m_axi_y_colptr_AWQOS QOS 1 4 }  { m_axi_y_colptr_AWREGION REGION 1 4 }  { m_axi_y_colptr_AWUSER USER 1 1 }  { m_axi_y_colptr_WVALID VALID 1 1 }  { m_axi_y_colptr_WREADY READY 0 1 }  { m_axi_y_colptr_WDATA DATA 1 32 }  { m_axi_y_colptr_WSTRB STRB 1 4 }  { m_axi_y_colptr_WLAST LAST 1 1 }  { m_axi_y_colptr_WID ID 1 1 }  { m_axi_y_colptr_WUSER USER 1 1 }  { m_axi_y_colptr_ARVALID VALID 1 1 }  { m_axi_y_colptr_ARREADY READY 0 1 }  { m_axi_y_colptr_ARADDR ADDR 1 64 }  { m_axi_y_colptr_ARID ID 1 1 }  { m_axi_y_colptr_ARLEN LEN 1 8 }  { m_axi_y_colptr_ARSIZE SIZE 1 3 }  { m_axi_y_colptr_ARBURST BURST 1 2 }  { m_axi_y_colptr_ARLOCK LOCK 1 2 }  { m_axi_y_colptr_ARCACHE CACHE 1 4 }  { m_axi_y_colptr_ARPROT PROT 1 3 }  { m_axi_y_colptr_ARQOS QOS 1 4 }  { m_axi_y_colptr_ARREGION REGION 1 4 }  { m_axi_y_colptr_ARUSER USER 1 1 }  { m_axi_y_colptr_RVALID VALID 0 1 }  { m_axi_y_colptr_RREADY READY 1 1 }  { m_axi_y_colptr_RDATA DATA 0 32 }  { m_axi_y_colptr_RLAST LAST 0 1 }  { m_axi_y_colptr_RID ID 0 1 }  { m_axi_y_colptr_RUSER USER 0 1 }  { m_axi_y_colptr_RRESP RESP 0 2 }  { m_axi_y_colptr_BVALID VALID 0 1 }  { m_axi_y_colptr_BREADY READY 1 1 }  { m_axi_y_colptr_BRESP RESP 0 2 }  { m_axi_y_colptr_BID ID 0 1 }  { m_axi_y_colptr_BUSER USER 0 1 } } }
	y_rowind { m_axi {  { m_axi_y_rowind_AWVALID VALID 1 1 }  { m_axi_y_rowind_AWREADY READY 0 1 }  { m_axi_y_rowind_AWADDR ADDR 1 64 }  { m_axi_y_rowind_AWID ID 1 1 }  { m_axi_y_rowind_AWLEN LEN 1 8 }  { m_axi_y_rowind_AWSIZE SIZE 1 3 }  { m_axi_y_rowind_AWBURST BURST 1 2 }  { m_axi_y_rowind_AWLOCK LOCK 1 2 }  { m_axi_y_rowind_AWCACHE CACHE 1 4 }  { m_axi_y_rowind_AWPROT PROT 1 3 }  { m_axi_y_rowind_AWQOS QOS 1 4 }  { m_axi_y_rowind_AWREGION REGION 1 4 }  { m_axi_y_rowind_AWUSER USER 1 1 }  { m_axi_y_rowind_WVALID VALID 1 1 }  { m_axi_y_rowind_WREADY READY 0 1 }  { m_axi_y_rowind_WDATA DATA 1 32 }  { m_axi_y_rowind_WSTRB STRB 1 4 }  { m_axi_y_rowind_WLAST LAST 1 1 }  { m_axi_y_rowind_WID ID 1 1 }  { m_axi_y_rowind_WUSER USER 1 1 }  { m_axi_y_rowind_ARVALID VALID 1 1 }  { m_axi_y_rowind_ARREADY READY 0 1 }  { m_axi_y_rowind_ARADDR ADDR 1 64 }  { m_axi_y_rowind_ARID ID 1 1 }  { m_axi_y_rowind_ARLEN LEN 1 8 }  { m_axi_y_rowind_ARSIZE SIZE 1 3 }  { m_axi_y_rowind_ARBURST BURST 1 2 }  { m_axi_y_rowind_ARLOCK LOCK 1 2 }  { m_axi_y_rowind_ARCACHE CACHE 1 4 }  { m_axi_y_rowind_ARPROT PROT 1 3 }  { m_axi_y_rowind_ARQOS QOS 1 4 }  { m_axi_y_rowind_ARREGION REGION 1 4 }  { m_axi_y_rowind_ARUSER USER 1 1 }  { m_axi_y_rowind_RVALID VALID 0 1 }  { m_axi_y_rowind_RREADY READY 1 1 }  { m_axi_y_rowind_RDATA DATA 0 32 }  { m_axi_y_rowind_RLAST LAST 0 1 }  { m_axi_y_rowind_RID ID 0 1 }  { m_axi_y_rowind_RUSER USER 0 1 }  { m_axi_y_rowind_RRESP RESP 0 2 }  { m_axi_y_rowind_BVALID VALID 0 1 }  { m_axi_y_rowind_BREADY READY 1 1 }  { m_axi_y_rowind_BRESP RESP 0 2 }  { m_axi_y_rowind_BID ID 0 1 }  { m_axi_y_rowind_BUSER USER 0 1 } } }
	y_data { m_axi {  { m_axi_y_data_AWVALID VALID 1 1 }  { m_axi_y_data_AWREADY READY 0 1 }  { m_axi_y_data_AWADDR ADDR 1 64 }  { m_axi_y_data_AWID ID 1 1 }  { m_axi_y_data_AWLEN LEN 1 8 }  { m_axi_y_data_AWSIZE SIZE 1 3 }  { m_axi_y_data_AWBURST BURST 1 2 }  { m_axi_y_data_AWLOCK LOCK 1 2 }  { m_axi_y_data_AWCACHE CACHE 1 4 }  { m_axi_y_data_AWPROT PROT 1 3 }  { m_axi_y_data_AWQOS QOS 1 4 }  { m_axi_y_data_AWREGION REGION 1 4 }  { m_axi_y_data_AWUSER USER 1 1 }  { m_axi_y_data_WVALID VALID 1 1 }  { m_axi_y_data_WREADY READY 0 1 }  { m_axi_y_data_WDATA DATA 1 32 }  { m_axi_y_data_WSTRB STRB 1 4 }  { m_axi_y_data_WLAST LAST 1 1 }  { m_axi_y_data_WID ID 1 1 }  { m_axi_y_data_WUSER USER 1 1 }  { m_axi_y_data_ARVALID VALID 1 1 }  { m_axi_y_data_ARREADY READY 0 1 }  { m_axi_y_data_ARADDR ADDR 1 64 }  { m_axi_y_data_ARID ID 1 1 }  { m_axi_y_data_ARLEN LEN 1 8 }  { m_axi_y_data_ARSIZE SIZE 1 3 }  { m_axi_y_data_ARBURST BURST 1 2 }  { m_axi_y_data_ARLOCK LOCK 1 2 }  { m_axi_y_data_ARCACHE CACHE 1 4 }  { m_axi_y_data_ARPROT PROT 1 3 }  { m_axi_y_data_ARQOS QOS 1 4 }  { m_axi_y_data_ARREGION REGION 1 4 }  { m_axi_y_data_ARUSER USER 1 1 }  { m_axi_y_data_RVALID VALID 0 1 }  { m_axi_y_data_RREADY READY 1 1 }  { m_axi_y_data_RDATA DATA 0 32 }  { m_axi_y_data_RLAST LAST 0 1 }  { m_axi_y_data_RID ID 0 1 }  { m_axi_y_data_RUSER USER 0 1 }  { m_axi_y_data_RRESP RESP 0 2 }  { m_axi_y_data_BVALID VALID 0 1 }  { m_axi_y_data_BREADY READY 1 1 }  { m_axi_y_data_BRESP RESP 0 2 }  { m_axi_y_data_BID ID 0 1 }  { m_axi_y_data_BUSER USER 0 1 } } }
	z_rowptr { m_axi {  { m_axi_z_rowptr_AWVALID VALID 1 1 }  { m_axi_z_rowptr_AWREADY READY 0 1 }  { m_axi_z_rowptr_AWADDR ADDR 1 64 }  { m_axi_z_rowptr_AWID ID 1 1 }  { m_axi_z_rowptr_AWLEN LEN 1 8 }  { m_axi_z_rowptr_AWSIZE SIZE 1 3 }  { m_axi_z_rowptr_AWBURST BURST 1 2 }  { m_axi_z_rowptr_AWLOCK LOCK 1 2 }  { m_axi_z_rowptr_AWCACHE CACHE 1 4 }  { m_axi_z_rowptr_AWPROT PROT 1 3 }  { m_axi_z_rowptr_AWQOS QOS 1 4 }  { m_axi_z_rowptr_AWREGION REGION 1 4 }  { m_axi_z_rowptr_AWUSER USER 1 1 }  { m_axi_z_rowptr_WVALID VALID 1 1 }  { m_axi_z_rowptr_WREADY READY 0 1 }  { m_axi_z_rowptr_WDATA DATA 1 32 }  { m_axi_z_rowptr_WSTRB STRB 1 4 }  { m_axi_z_rowptr_WLAST LAST 1 1 }  { m_axi_z_rowptr_WID ID 1 1 }  { m_axi_z_rowptr_WUSER USER 1 1 }  { m_axi_z_rowptr_ARVALID VALID 1 1 }  { m_axi_z_rowptr_ARREADY READY 0 1 }  { m_axi_z_rowptr_ARADDR ADDR 1 64 }  { m_axi_z_rowptr_ARID ID 1 1 }  { m_axi_z_rowptr_ARLEN LEN 1 8 }  { m_axi_z_rowptr_ARSIZE SIZE 1 3 }  { m_axi_z_rowptr_ARBURST BURST 1 2 }  { m_axi_z_rowptr_ARLOCK LOCK 1 2 }  { m_axi_z_rowptr_ARCACHE CACHE 1 4 }  { m_axi_z_rowptr_ARPROT PROT 1 3 }  { m_axi_z_rowptr_ARQOS QOS 1 4 }  { m_axi_z_rowptr_ARREGION REGION 1 4 }  { m_axi_z_rowptr_ARUSER USER 1 1 }  { m_axi_z_rowptr_RVALID VALID 0 1 }  { m_axi_z_rowptr_RREADY READY 1 1 }  { m_axi_z_rowptr_RDATA DATA 0 32 }  { m_axi_z_rowptr_RLAST LAST 0 1 }  { m_axi_z_rowptr_RID ID 0 1 }  { m_axi_z_rowptr_RUSER USER 0 1 }  { m_axi_z_rowptr_RRESP RESP 0 2 }  { m_axi_z_rowptr_BVALID VALID 0 1 }  { m_axi_z_rowptr_BREADY READY 1 1 }  { m_axi_z_rowptr_BRESP RESP 0 2 }  { m_axi_z_rowptr_BID ID 0 1 }  { m_axi_z_rowptr_BUSER USER 0 1 } } }
	z_colind { m_axi {  { m_axi_z_colind_AWVALID VALID 1 1 }  { m_axi_z_colind_AWREADY READY 0 1 }  { m_axi_z_colind_AWADDR ADDR 1 64 }  { m_axi_z_colind_AWID ID 1 1 }  { m_axi_z_colind_AWLEN LEN 1 8 }  { m_axi_z_colind_AWSIZE SIZE 1 3 }  { m_axi_z_colind_AWBURST BURST 1 2 }  { m_axi_z_colind_AWLOCK LOCK 1 2 }  { m_axi_z_colind_AWCACHE CACHE 1 4 }  { m_axi_z_colind_AWPROT PROT 1 3 }  { m_axi_z_colind_AWQOS QOS 1 4 }  { m_axi_z_colind_AWREGION REGION 1 4 }  { m_axi_z_colind_AWUSER USER 1 1 }  { m_axi_z_colind_WVALID VALID 1 1 }  { m_axi_z_colind_WREADY READY 0 1 }  { m_axi_z_colind_WDATA DATA 1 32 }  { m_axi_z_colind_WSTRB STRB 1 4 }  { m_axi_z_colind_WLAST LAST 1 1 }  { m_axi_z_colind_WID ID 1 1 }  { m_axi_z_colind_WUSER USER 1 1 }  { m_axi_z_colind_ARVALID VALID 1 1 }  { m_axi_z_colind_ARREADY READY 0 1 }  { m_axi_z_colind_ARADDR ADDR 1 64 }  { m_axi_z_colind_ARID ID 1 1 }  { m_axi_z_colind_ARLEN LEN 1 8 }  { m_axi_z_colind_ARSIZE SIZE 1 3 }  { m_axi_z_colind_ARBURST BURST 1 2 }  { m_axi_z_colind_ARLOCK LOCK 1 2 }  { m_axi_z_colind_ARCACHE CACHE 1 4 }  { m_axi_z_colind_ARPROT PROT 1 3 }  { m_axi_z_colind_ARQOS QOS 1 4 }  { m_axi_z_colind_ARREGION REGION 1 4 }  { m_axi_z_colind_ARUSER USER 1 1 }  { m_axi_z_colind_RVALID VALID 0 1 }  { m_axi_z_colind_RREADY READY 1 1 }  { m_axi_z_colind_RDATA DATA 0 32 }  { m_axi_z_colind_RLAST LAST 0 1 }  { m_axi_z_colind_RID ID 0 1 }  { m_axi_z_colind_RUSER USER 0 1 }  { m_axi_z_colind_RRESP RESP 0 2 }  { m_axi_z_colind_BVALID VALID 0 1 }  { m_axi_z_colind_BREADY READY 1 1 }  { m_axi_z_colind_BRESP RESP 0 2 }  { m_axi_z_colind_BID ID 0 1 }  { m_axi_z_colind_BUSER USER 0 1 } } }
	z_data { m_axi {  { m_axi_z_data_AWVALID VALID 1 1 }  { m_axi_z_data_AWREADY READY 0 1 }  { m_axi_z_data_AWADDR ADDR 1 64 }  { m_axi_z_data_AWID ID 1 1 }  { m_axi_z_data_AWLEN LEN 1 8 }  { m_axi_z_data_AWSIZE SIZE 1 3 }  { m_axi_z_data_AWBURST BURST 1 2 }  { m_axi_z_data_AWLOCK LOCK 1 2 }  { m_axi_z_data_AWCACHE CACHE 1 4 }  { m_axi_z_data_AWPROT PROT 1 3 }  { m_axi_z_data_AWQOS QOS 1 4 }  { m_axi_z_data_AWREGION REGION 1 4 }  { m_axi_z_data_AWUSER USER 1 1 }  { m_axi_z_data_WVALID VALID 1 1 }  { m_axi_z_data_WREADY READY 0 1 }  { m_axi_z_data_WDATA DATA 1 32 }  { m_axi_z_data_WSTRB STRB 1 4 }  { m_axi_z_data_WLAST LAST 1 1 }  { m_axi_z_data_WID ID 1 1 }  { m_axi_z_data_WUSER USER 1 1 }  { m_axi_z_data_ARVALID VALID 1 1 }  { m_axi_z_data_ARREADY READY 0 1 }  { m_axi_z_data_ARADDR ADDR 1 64 }  { m_axi_z_data_ARID ID 1 1 }  { m_axi_z_data_ARLEN LEN 1 8 }  { m_axi_z_data_ARSIZE SIZE 1 3 }  { m_axi_z_data_ARBURST BURST 1 2 }  { m_axi_z_data_ARLOCK LOCK 1 2 }  { m_axi_z_data_ARCACHE CACHE 1 4 }  { m_axi_z_data_ARPROT PROT 1 3 }  { m_axi_z_data_ARQOS QOS 1 4 }  { m_axi_z_data_ARREGION REGION 1 4 }  { m_axi_z_data_ARUSER USER 1 1 }  { m_axi_z_data_RVALID VALID 0 1 }  { m_axi_z_data_RREADY READY 1 1 }  { m_axi_z_data_RDATA DATA 0 32 }  { m_axi_z_data_RLAST LAST 0 1 }  { m_axi_z_data_RID ID 0 1 }  { m_axi_z_data_RUSER USER 0 1 }  { m_axi_z_data_RRESP RESP 0 2 }  { m_axi_z_data_BVALID VALID 0 1 }  { m_axi_z_data_BREADY READY 1 1 }  { m_axi_z_data_BRESP RESP 0 2 }  { m_axi_z_data_BID ID 0 1 }  { m_axi_z_data_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ x_rowptr { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ x_colind { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ x_data { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ y_colptr { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ y_rowind { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ y_data { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ z_rowptr { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ z_colind { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ z_data { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ x_rowptr 1 }
	{ x_colind 1 }
	{ x_data 1 }
	{ y_colptr 1 }
	{ y_rowind 1 }
	{ y_data 1 }
	{ z_rowptr 1 }
	{ z_colind 1 }
	{ z_data 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ x_rowptr 1 }
	{ x_colind 1 }
	{ x_data 1 }
	{ y_colptr 1 }
	{ y_rowind 1 }
	{ y_data 1 }
	{ z_rowptr 1 }
	{ z_colind 1 }
	{ z_data 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
