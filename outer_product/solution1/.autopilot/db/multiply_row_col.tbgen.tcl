set moduleName multiply_row_col
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
set C_modelName {multiply_row_col}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_rowptr int 32 regular {array 5 { 0 3 } 0 1 }  }
	{ agg_result_colind int 3 regular {array 20 { 0 3 } 0 1 }  }
	{ agg_result_data_V int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ row_V int 32 regular {array 5 { 1 3 } 1 1 }  }
	{ col_V int 32 regular {array 4 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_colind", "interface" : "memory", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
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
	{ agg_result_colind_address0 sc_out sc_lv 5 signal 1 } 
	{ agg_result_colind_ce0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_we0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_d0 sc_out sc_lv 3 signal 1 } 
	{ agg_result_data_V_address0 sc_out sc_lv 5 signal 2 } 
	{ agg_result_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_d0 sc_out sc_lv 32 signal 2 } 
	{ row_V_address0 sc_out sc_lv 3 signal 3 } 
	{ row_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ row_V_q0 sc_in sc_lv 32 signal 3 } 
	{ col_V_address0 sc_out sc_lv 2 signal 4 } 
	{ col_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ col_V_q0 sc_in sc_lv 32 signal 4 } 
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
 	{ "name": "agg_result_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "address0" }} , 
 	{ "name": "agg_result_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "ce0" }} , 
 	{ "name": "agg_result_colind_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "we0" }} , 
 	{ "name": "agg_result_colind_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "d0" }} , 
 	{ "name": "agg_result_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "address0" }} , 
 	{ "name": "agg_result_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "ce0" }} , 
 	{ "name": "agg_result_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "we0" }} , 
 	{ "name": "agg_result_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "d0" }} , 
 	{ "name": "row_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_V", "role": "address0" }} , 
 	{ "name": "row_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_V", "role": "ce0" }} , 
 	{ "name": "row_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_V", "role": "q0" }} , 
 	{ "name": "col_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "col_V", "role": "address0" }} , 
 	{ "name": "col_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_V", "role": "ce0" }} , 
 	{ "name": "col_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "multiply_row_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "93", "EstimateLatencyMax" : "93",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "agg_result_rowptr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_colind", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	multiply_row_col {
		agg_result_rowptr {Type O LastRead -1 FirstWrite 0}
		agg_result_colind {Type O LastRead -1 FirstWrite 6}
		agg_result_data_V {Type O LastRead -1 FirstWrite 6}
		row_V {Type I LastRead 3 FirstWrite -1}
		col_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "93", "Max" : "93"}
	, {"Name" : "Interval", "Min" : "93", "Max" : "93"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_rowptr { ap_memory {  { agg_result_rowptr_address0 mem_address 1 3 }  { agg_result_rowptr_ce0 mem_ce 1 1 }  { agg_result_rowptr_we0 mem_we 1 1 }  { agg_result_rowptr_d0 mem_din 1 32 } } }
	agg_result_colind { ap_memory {  { agg_result_colind_address0 mem_address 1 5 }  { agg_result_colind_ce0 mem_ce 1 1 }  { agg_result_colind_we0 mem_we 1 1 }  { agg_result_colind_d0 mem_din 1 3 } } }
	agg_result_data_V { ap_memory {  { agg_result_data_V_address0 mem_address 1 5 }  { agg_result_data_V_ce0 mem_ce 1 1 }  { agg_result_data_V_we0 mem_we 1 1 }  { agg_result_data_V_d0 mem_din 1 32 } } }
	row_V { ap_memory {  { row_V_address0 mem_address 1 3 }  { row_V_ce0 mem_ce 1 1 }  { row_V_q0 mem_dout 0 32 } } }
	col_V { ap_memory {  { col_V_address0 mem_address 1 2 }  { col_V_ce0 mem_ce 1 1 }  { col_V_q0 mem_dout 0 32 } } }
}
