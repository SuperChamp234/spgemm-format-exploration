set moduleName outer_product
set isTaskLevelControl 1
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
	{ agg_result_rowptr int 32 regular {array 5 { 2 2 } 1 1 }  }
	{ agg_result_colind int 32 regular {array 20 { 2 2 } 1 1 }  }
	{ agg_result_data_V int 32 regular {array 20 { 2 2 } 1 1 }  }
	{ x_csc_colptr int 32 regular {array 6 { 1 1 } 1 1 }  }
	{ x_csc_rowind int 32 regular {array 20 { 1 1 } 1 1 }  }
	{ x_csc_data_V int 32 regular {array 20 { 1 1 } 1 1 }  }
	{ y_csr_rowptr int 32 regular {array 6 { 1 1 } 1 1 }  }
	{ y_csr_colind int 32 regular {array 20 { 1 1 } 1 1 }  }
	{ y_csr_data_V int 32 regular {array 20 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.rowptr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_colind", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.colind","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "agg_result_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "agg.result.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "x_csc_colptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x_csc.colptr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "x_csc_rowind", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x_csc.rowind","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "x_csc_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x_csc.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "y_csr_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_csr.rowptr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "y_csr_colind", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_csr.colind","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} , 
 	{ "Name" : "y_csr_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_csr.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 19,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_rowptr_address0 sc_out sc_lv 3 signal 0 } 
	{ agg_result_rowptr_ce0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_we0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_d0 sc_out sc_lv 32 signal 0 } 
	{ agg_result_rowptr_q0 sc_in sc_lv 32 signal 0 } 
	{ agg_result_rowptr_address1 sc_out sc_lv 3 signal 0 } 
	{ agg_result_rowptr_ce1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_we1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_d1 sc_out sc_lv 32 signal 0 } 
	{ agg_result_rowptr_q1 sc_in sc_lv 32 signal 0 } 
	{ agg_result_colind_address0 sc_out sc_lv 5 signal 1 } 
	{ agg_result_colind_ce0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_we0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_d0 sc_out sc_lv 32 signal 1 } 
	{ agg_result_colind_q0 sc_in sc_lv 32 signal 1 } 
	{ agg_result_colind_address1 sc_out sc_lv 5 signal 1 } 
	{ agg_result_colind_ce1 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_we1 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_d1 sc_out sc_lv 32 signal 1 } 
	{ agg_result_colind_q1 sc_in sc_lv 32 signal 1 } 
	{ agg_result_data_V_address0 sc_out sc_lv 5 signal 2 } 
	{ agg_result_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_d0 sc_out sc_lv 32 signal 2 } 
	{ agg_result_data_V_q0 sc_in sc_lv 32 signal 2 } 
	{ agg_result_data_V_address1 sc_out sc_lv 5 signal 2 } 
	{ agg_result_data_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_we1 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_d1 sc_out sc_lv 32 signal 2 } 
	{ agg_result_data_V_q1 sc_in sc_lv 32 signal 2 } 
	{ x_csc_colptr_address0 sc_out sc_lv 3 signal 3 } 
	{ x_csc_colptr_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_csc_colptr_q0 sc_in sc_lv 32 signal 3 } 
	{ x_csc_colptr_address1 sc_out sc_lv 3 signal 3 } 
	{ x_csc_colptr_ce1 sc_out sc_logic 1 signal 3 } 
	{ x_csc_colptr_q1 sc_in sc_lv 32 signal 3 } 
	{ x_csc_rowind_address0 sc_out sc_lv 5 signal 4 } 
	{ x_csc_rowind_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_csc_rowind_q0 sc_in sc_lv 32 signal 4 } 
	{ x_csc_rowind_address1 sc_out sc_lv 5 signal 4 } 
	{ x_csc_rowind_ce1 sc_out sc_logic 1 signal 4 } 
	{ x_csc_rowind_q1 sc_in sc_lv 32 signal 4 } 
	{ x_csc_data_V_address0 sc_out sc_lv 5 signal 5 } 
	{ x_csc_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_csc_data_V_q0 sc_in sc_lv 32 signal 5 } 
	{ x_csc_data_V_address1 sc_out sc_lv 5 signal 5 } 
	{ x_csc_data_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ x_csc_data_V_q1 sc_in sc_lv 32 signal 5 } 
	{ y_csr_rowptr_address0 sc_out sc_lv 3 signal 6 } 
	{ y_csr_rowptr_ce0 sc_out sc_logic 1 signal 6 } 
	{ y_csr_rowptr_q0 sc_in sc_lv 32 signal 6 } 
	{ y_csr_rowptr_address1 sc_out sc_lv 3 signal 6 } 
	{ y_csr_rowptr_ce1 sc_out sc_logic 1 signal 6 } 
	{ y_csr_rowptr_q1 sc_in sc_lv 32 signal 6 } 
	{ y_csr_colind_address0 sc_out sc_lv 5 signal 7 } 
	{ y_csr_colind_ce0 sc_out sc_logic 1 signal 7 } 
	{ y_csr_colind_q0 sc_in sc_lv 32 signal 7 } 
	{ y_csr_colind_address1 sc_out sc_lv 5 signal 7 } 
	{ y_csr_colind_ce1 sc_out sc_logic 1 signal 7 } 
	{ y_csr_colind_q1 sc_in sc_lv 32 signal 7 } 
	{ y_csr_data_V_address0 sc_out sc_lv 5 signal 8 } 
	{ y_csr_data_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ y_csr_data_V_q0 sc_in sc_lv 32 signal 8 } 
	{ y_csr_data_V_address1 sc_out sc_lv 5 signal 8 } 
	{ y_csr_data_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ y_csr_data_V_q1 sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "address0" }} , 
 	{ "name": "agg_result_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "ce0" }} , 
 	{ "name": "agg_result_rowptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "we0" }} , 
 	{ "name": "agg_result_rowptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "d0" }} , 
 	{ "name": "agg_result_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "q0" }} , 
 	{ "name": "agg_result_rowptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "address1" }} , 
 	{ "name": "agg_result_rowptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "ce1" }} , 
 	{ "name": "agg_result_rowptr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "we1" }} , 
 	{ "name": "agg_result_rowptr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "d1" }} , 
 	{ "name": "agg_result_rowptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "q1" }} , 
 	{ "name": "agg_result_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "address0" }} , 
 	{ "name": "agg_result_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "ce0" }} , 
 	{ "name": "agg_result_colind_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "we0" }} , 
 	{ "name": "agg_result_colind_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "d0" }} , 
 	{ "name": "agg_result_colind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "q0" }} , 
 	{ "name": "agg_result_colind_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "address1" }} , 
 	{ "name": "agg_result_colind_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "ce1" }} , 
 	{ "name": "agg_result_colind_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "we1" }} , 
 	{ "name": "agg_result_colind_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "d1" }} , 
 	{ "name": "agg_result_colind_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "q1" }} , 
 	{ "name": "agg_result_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "address0" }} , 
 	{ "name": "agg_result_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "ce0" }} , 
 	{ "name": "agg_result_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "we0" }} , 
 	{ "name": "agg_result_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "d0" }} , 
 	{ "name": "agg_result_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "q0" }} , 
 	{ "name": "agg_result_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "address1" }} , 
 	{ "name": "agg_result_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "ce1" }} , 
 	{ "name": "agg_result_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "we1" }} , 
 	{ "name": "agg_result_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "d1" }} , 
 	{ "name": "agg_result_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "q1" }} , 
 	{ "name": "x_csc_colptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "address0" }} , 
 	{ "name": "x_csc_colptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "ce0" }} , 
 	{ "name": "x_csc_colptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "q0" }} , 
 	{ "name": "x_csc_colptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "address1" }} , 
 	{ "name": "x_csc_colptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "ce1" }} , 
 	{ "name": "x_csc_colptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_colptr", "role": "q1" }} , 
 	{ "name": "x_csc_rowind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "address0" }} , 
 	{ "name": "x_csc_rowind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "ce0" }} , 
 	{ "name": "x_csc_rowind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "q0" }} , 
 	{ "name": "x_csc_rowind_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "address1" }} , 
 	{ "name": "x_csc_rowind_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "ce1" }} , 
 	{ "name": "x_csc_rowind_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_rowind", "role": "q1" }} , 
 	{ "name": "x_csc_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "address0" }} , 
 	{ "name": "x_csc_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "ce0" }} , 
 	{ "name": "x_csc_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "q0" }} , 
 	{ "name": "x_csc_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "address1" }} , 
 	{ "name": "x_csc_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "ce1" }} , 
 	{ "name": "x_csc_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_csc_data_V", "role": "q1" }} , 
 	{ "name": "y_csr_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "address0" }} , 
 	{ "name": "y_csr_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "ce0" }} , 
 	{ "name": "y_csr_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "q0" }} , 
 	{ "name": "y_csr_rowptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "address1" }} , 
 	{ "name": "y_csr_rowptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "ce1" }} , 
 	{ "name": "y_csr_rowptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_rowptr", "role": "q1" }} , 
 	{ "name": "y_csr_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "address0" }} , 
 	{ "name": "y_csr_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "ce0" }} , 
 	{ "name": "y_csr_colind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "q0" }} , 
 	{ "name": "y_csr_colind_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "address1" }} , 
 	{ "name": "y_csr_colind_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "ce1" }} , 
 	{ "name": "y_csr_colind_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_colind", "role": "q1" }} , 
 	{ "name": "y_csr_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "address0" }} , 
 	{ "name": "y_csr_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "ce0" }} , 
 	{ "name": "y_csr_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "q0" }} , 
 	{ "name": "y_csr_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "address1" }} , 
 	{ "name": "y_csr_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "ce1" }} , 
 	{ "name": "y_csr_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_csr_data_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "21", "22"],
		"CDFG" : "outer_product",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_accumulate_fu_3661"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_extract_col_fu_3674"}],
		"Port" : [
			{"Name" : "agg_result_rowptr", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "agg_result_colind", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "agg_result_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_csc_colptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_csc_rowind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_csc_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_csr_rowptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_csr_colind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_csr_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_col_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_extract_col_fu_3674", "Port" : "out_col_V_0"}]},
			{"Name" : "out_col_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_extract_col_fu_3674", "Port" : "out_col_V_1"}]},
			{"Name" : "out_col_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_extract_col_fu_3674", "Port" : "out_col_V_2"}]},
			{"Name" : "out_col_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_extract_col_fu_3674", "Port" : "out_col_V_3"}]},
			{"Name" : "out_row_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_multiply_row_col_fu_3649", "Port" : "row_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_row_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inp_csr_data_V_assig_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inp_csr_colind_assig_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inp_csr_rowptr_assig_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partial_z_colind_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partial_z_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_04_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_15_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_26_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_07_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_18_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_29_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_010_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_111_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_212_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_row_col_fu_3649", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "multiply_row_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "20",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "agg_result_colind", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_3_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_row_col_fu_3649.grp_mult_fu_692", "Parent" : "19",
		"CDFG" : "mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
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
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accumulate_fu_3661", "Parent" : "0",
		"CDFG" : "accumulate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
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
			{"Name" : "agg_result_rowptr", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "agg_result_colind", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "csr1_rowptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr1_colind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr1_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr2_rowptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr2_colind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "csr2_data_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_extract_col_fu_3674", "Parent" : "0",
		"CDFG" : "extract_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inp_csc_colptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inp_csc_rowind", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inp_csc_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_col_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_col_V_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_col_V_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_col_V_3", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	outer_product {
		agg_result_rowptr {Type IO LastRead 45 FirstWrite 42}
		agg_result_colind {Type IO LastRead 52 FirstWrite 44}
		agg_result_data_V {Type IO LastRead 52 FirstWrite 55}
		x_csc_colptr {Type I LastRead 4 FirstWrite -1}
		x_csc_rowind {Type I LastRead 11 FirstWrite -1}
		x_csc_data_V {Type I LastRead 11 FirstWrite -1}
		y_csr_rowptr {Type I LastRead 4 FirstWrite -1}
		y_csr_colind {Type I LastRead 11 FirstWrite -1}
		y_csr_data_V {Type I LastRead 11 FirstWrite -1}
		out_col_V_0 {Type IO LastRead -1 FirstWrite -1}
		out_col_V_1 {Type IO LastRead -1 FirstWrite -1}
		out_col_V_2 {Type IO LastRead -1 FirstWrite -1}
		out_col_V_3 {Type IO LastRead -1 FirstWrite -1}
		out_row_V {Type IO LastRead -1 FirstWrite -1}}
	multiply_row_col {
		agg_result_colind {Type O LastRead -1 FirstWrite 1}
		agg_result_data_V {Type O LastRead -1 FirstWrite 3}
		row_V {Type I LastRead 3 FirstWrite -1}
		col_0_V_read {Type I LastRead 1 FirstWrite -1}
		col_1_V_read {Type I LastRead 6 FirstWrite -1}
		col_2_V_read {Type I LastRead 11 FirstWrite -1}
		col_3_V_read {Type I LastRead 16 FirstWrite -1}}
	mult {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	accumulate {
		agg_result_rowptr {Type IO LastRead 1 FirstWrite 0}
		agg_result_colind {Type O LastRead -1 FirstWrite 4}
		agg_result_data_V {Type O LastRead -1 FirstWrite 5}
		csr1_rowptr {Type I LastRead 2 FirstWrite -1}
		csr1_colind {Type I LastRead 4 FirstWrite -1}
		csr1_data_V {Type I LastRead 5 FirstWrite -1}
		csr2_rowptr {Type I LastRead 2 FirstWrite -1}
		csr2_colind {Type I LastRead 5 FirstWrite -1}
		csr2_data_V {Type I LastRead 6 FirstWrite -1}}
	extract_col {
		inp_csc_colptr {Type I LastRead 1 FirstWrite -1}
		inp_csc_rowind {Type I LastRead 2 FirstWrite -1}
		inp_csc_data_V {Type I LastRead 3 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}
		out_col_V_0 {Type O LastRead -1 FirstWrite 3}
		out_col_V_1 {Type O LastRead -1 FirstWrite 3}
		out_col_V_2 {Type O LastRead -1 FirstWrite 3}
		out_col_V_3 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_rowptr { ap_memory {  { agg_result_rowptr_address0 mem_address 1 3 }  { agg_result_rowptr_ce0 mem_ce 1 1 }  { agg_result_rowptr_we0 mem_we 1 1 }  { agg_result_rowptr_d0 mem_din 1 32 }  { agg_result_rowptr_q0 mem_dout 0 32 }  { agg_result_rowptr_address1 MemPortADDR2 1 3 }  { agg_result_rowptr_ce1 MemPortCE2 1 1 }  { agg_result_rowptr_we1 MemPortWE2 1 1 }  { agg_result_rowptr_d1 MemPortDIN2 1 32 }  { agg_result_rowptr_q1 MemPortDOUT2 0 32 } } }
	agg_result_colind { ap_memory {  { agg_result_colind_address0 mem_address 1 5 }  { agg_result_colind_ce0 mem_ce 1 1 }  { agg_result_colind_we0 mem_we 1 1 }  { agg_result_colind_d0 mem_din 1 32 }  { agg_result_colind_q0 mem_dout 0 32 }  { agg_result_colind_address1 MemPortADDR2 1 5 }  { agg_result_colind_ce1 MemPortCE2 1 1 }  { agg_result_colind_we1 MemPortWE2 1 1 }  { agg_result_colind_d1 MemPortDIN2 1 32 }  { agg_result_colind_q1 MemPortDOUT2 0 32 } } }
	agg_result_data_V { ap_memory {  { agg_result_data_V_address0 mem_address 1 5 }  { agg_result_data_V_ce0 mem_ce 1 1 }  { agg_result_data_V_we0 mem_we 1 1 }  { agg_result_data_V_d0 mem_din 1 32 }  { agg_result_data_V_q0 mem_dout 0 32 }  { agg_result_data_V_address1 MemPortADDR2 1 5 }  { agg_result_data_V_ce1 MemPortCE2 1 1 }  { agg_result_data_V_we1 MemPortWE2 1 1 }  { agg_result_data_V_d1 MemPortDIN2 1 32 }  { agg_result_data_V_q1 MemPortDOUT2 0 32 } } }
	x_csc_colptr { ap_memory {  { x_csc_colptr_address0 mem_address 1 3 }  { x_csc_colptr_ce0 mem_ce 1 1 }  { x_csc_colptr_q0 mem_dout 0 32 }  { x_csc_colptr_address1 MemPortADDR2 1 3 }  { x_csc_colptr_ce1 MemPortCE2 1 1 }  { x_csc_colptr_q1 MemPortDOUT2 0 32 } } }
	x_csc_rowind { ap_memory {  { x_csc_rowind_address0 mem_address 1 5 }  { x_csc_rowind_ce0 mem_ce 1 1 }  { x_csc_rowind_q0 mem_dout 0 32 }  { x_csc_rowind_address1 MemPortADDR2 1 5 }  { x_csc_rowind_ce1 MemPortCE2 1 1 }  { x_csc_rowind_q1 MemPortDOUT2 0 32 } } }
	x_csc_data_V { ap_memory {  { x_csc_data_V_address0 mem_address 1 5 }  { x_csc_data_V_ce0 mem_ce 1 1 }  { x_csc_data_V_q0 mem_dout 0 32 }  { x_csc_data_V_address1 MemPortADDR2 1 5 }  { x_csc_data_V_ce1 MemPortCE2 1 1 }  { x_csc_data_V_q1 MemPortDOUT2 0 32 } } }
	y_csr_rowptr { ap_memory {  { y_csr_rowptr_address0 mem_address 1 3 }  { y_csr_rowptr_ce0 mem_ce 1 1 }  { y_csr_rowptr_q0 mem_dout 0 32 }  { y_csr_rowptr_address1 MemPortADDR2 1 3 }  { y_csr_rowptr_ce1 MemPortCE2 1 1 }  { y_csr_rowptr_q1 MemPortDOUT2 0 32 } } }
	y_csr_colind { ap_memory {  { y_csr_colind_address0 mem_address 1 5 }  { y_csr_colind_ce0 mem_ce 1 1 }  { y_csr_colind_q0 mem_dout 0 32 }  { y_csr_colind_address1 MemPortADDR2 1 5 }  { y_csr_colind_ce1 MemPortCE2 1 1 }  { y_csr_colind_q1 MemPortDOUT2 0 32 } } }
	y_csr_data_V { ap_memory {  { y_csr_data_V_address0 mem_address 1 5 }  { y_csr_data_V_ce0 mem_ce 1 1 }  { y_csr_data_V_q0 mem_dout 0 32 }  { y_csr_data_V_address1 MemPortADDR2 1 5 }  { y_csr_data_V_ce1 MemPortCE2 1 1 }  { y_csr_data_V_q1 MemPortDOUT2 0 32 } } }
}

set busDeadlockParameterList { 
}

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
