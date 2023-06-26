set moduleName accumulate
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
set C_modelName {accumulate}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result_rowptr int 32 regular {array 495 { 2 3 } 1 1 }  }
	{ agg_result_colind int 32 regular {array 244036 { 0 3 } 0 1 }  }
	{ agg_result_data_V int 32 regular {array 244036 { 0 3 } 0 1 }  }
	{ csr1_rowptr int 32 regular {array 495 { 1 1 } 1 1 }  }
	{ csr1_colind int 32 regular {array 244036 { 1 3 } 1 1 }  }
	{ csr1_data_V int 32 regular {array 244036 { 1 3 } 1 1 }  }
	{ csr2_rowptr int 32 regular {array 495 { 1 1 } 1 1 }  }
	{ csr2_colind int 9 regular {array 244036 { 1 3 } 1 1 }  }
	{ csr2_data_V int 32 regular {array 244036 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "agg_result_colind", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "csr1_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr1_colind", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr1_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_colind", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "csr2_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_rowptr_address0 sc_out sc_lv 9 signal 0 } 
	{ agg_result_rowptr_ce0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_we0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_rowptr_d0 sc_out sc_lv 32 signal 0 } 
	{ agg_result_rowptr_q0 sc_in sc_lv 32 signal 0 } 
	{ agg_result_colind_address0 sc_out sc_lv 18 signal 1 } 
	{ agg_result_colind_ce0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_we0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_colind_d0 sc_out sc_lv 32 signal 1 } 
	{ agg_result_data_V_address0 sc_out sc_lv 18 signal 2 } 
	{ agg_result_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_data_V_d0 sc_out sc_lv 32 signal 2 } 
	{ csr1_rowptr_address0 sc_out sc_lv 9 signal 3 } 
	{ csr1_rowptr_ce0 sc_out sc_logic 1 signal 3 } 
	{ csr1_rowptr_q0 sc_in sc_lv 32 signal 3 } 
	{ csr1_rowptr_address1 sc_out sc_lv 9 signal 3 } 
	{ csr1_rowptr_ce1 sc_out sc_logic 1 signal 3 } 
	{ csr1_rowptr_q1 sc_in sc_lv 32 signal 3 } 
	{ csr1_colind_address0 sc_out sc_lv 18 signal 4 } 
	{ csr1_colind_ce0 sc_out sc_logic 1 signal 4 } 
	{ csr1_colind_q0 sc_in sc_lv 32 signal 4 } 
	{ csr1_data_V_address0 sc_out sc_lv 18 signal 5 } 
	{ csr1_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ csr1_data_V_q0 sc_in sc_lv 32 signal 5 } 
	{ csr2_rowptr_address0 sc_out sc_lv 9 signal 6 } 
	{ csr2_rowptr_ce0 sc_out sc_logic 1 signal 6 } 
	{ csr2_rowptr_q0 sc_in sc_lv 32 signal 6 } 
	{ csr2_rowptr_address1 sc_out sc_lv 9 signal 6 } 
	{ csr2_rowptr_ce1 sc_out sc_logic 1 signal 6 } 
	{ csr2_rowptr_q1 sc_in sc_lv 32 signal 6 } 
	{ csr2_colind_address0 sc_out sc_lv 18 signal 7 } 
	{ csr2_colind_ce0 sc_out sc_logic 1 signal 7 } 
	{ csr2_colind_q0 sc_in sc_lv 9 signal 7 } 
	{ csr2_data_V_address0 sc_out sc_lv 18 signal 8 } 
	{ csr2_data_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ csr2_data_V_q0 sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "address0" }} , 
 	{ "name": "agg_result_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "ce0" }} , 
 	{ "name": "agg_result_rowptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "we0" }} , 
 	{ "name": "agg_result_rowptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "d0" }} , 
 	{ "name": "agg_result_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_rowptr", "role": "q0" }} , 
 	{ "name": "agg_result_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "address0" }} , 
 	{ "name": "agg_result_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "ce0" }} , 
 	{ "name": "agg_result_colind_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "we0" }} , 
 	{ "name": "agg_result_colind_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_colind", "role": "d0" }} , 
 	{ "name": "agg_result_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "address0" }} , 
 	{ "name": "agg_result_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "ce0" }} , 
 	{ "name": "agg_result_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "we0" }} , 
 	{ "name": "agg_result_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "agg_result_data_V", "role": "d0" }} , 
 	{ "name": "csr1_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "address0" }} , 
 	{ "name": "csr1_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "ce0" }} , 
 	{ "name": "csr1_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "q0" }} , 
 	{ "name": "csr1_rowptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "address1" }} , 
 	{ "name": "csr1_rowptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "ce1" }} , 
 	{ "name": "csr1_rowptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr1_rowptr", "role": "q1" }} , 
 	{ "name": "csr1_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "csr1_colind", "role": "address0" }} , 
 	{ "name": "csr1_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr1_colind", "role": "ce0" }} , 
 	{ "name": "csr1_colind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr1_colind", "role": "q0" }} , 
 	{ "name": "csr1_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "csr1_data_V", "role": "address0" }} , 
 	{ "name": "csr1_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr1_data_V", "role": "ce0" }} , 
 	{ "name": "csr1_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr1_data_V", "role": "q0" }} , 
 	{ "name": "csr2_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "address0" }} , 
 	{ "name": "csr2_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "ce0" }} , 
 	{ "name": "csr2_rowptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "q0" }} , 
 	{ "name": "csr2_rowptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "address1" }} , 
 	{ "name": "csr2_rowptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "ce1" }} , 
 	{ "name": "csr2_rowptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_rowptr", "role": "q1" }} , 
 	{ "name": "csr2_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "csr2_colind", "role": "address0" }} , 
 	{ "name": "csr2_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_colind", "role": "ce0" }} , 
 	{ "name": "csr2_colind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "csr2_colind", "role": "q0" }} , 
 	{ "name": "csr2_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "csr2_data_V", "role": "address0" }} , 
 	{ "name": "csr2_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "csr2_data_V", "role": "ce0" }} , 
 	{ "name": "csr2_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "csr2_data_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "csr2_data_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	accumulate {
		agg_result_rowptr {Type IO LastRead 1 FirstWrite 0}
		agg_result_colind {Type O LastRead -1 FirstWrite 4}
		agg_result_data_V {Type O LastRead -1 FirstWrite 5}
		csr1_rowptr {Type I LastRead 2 FirstWrite -1}
		csr1_colind {Type I LastRead 4 FirstWrite -1}
		csr1_data_V {Type I LastRead 5 FirstWrite -1}
		csr2_rowptr {Type I LastRead 2 FirstWrite -1}
		csr2_colind {Type I LastRead 5 FirstWrite -1}
		csr2_data_V {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_rowptr { ap_memory {  { agg_result_rowptr_address0 mem_address 1 9 }  { agg_result_rowptr_ce0 mem_ce 1 1 }  { agg_result_rowptr_we0 mem_we 1 1 }  { agg_result_rowptr_d0 mem_din 1 32 }  { agg_result_rowptr_q0 mem_dout 0 32 } } }
	agg_result_colind { ap_memory {  { agg_result_colind_address0 mem_address 1 18 }  { agg_result_colind_ce0 mem_ce 1 1 }  { agg_result_colind_we0 mem_we 1 1 }  { agg_result_colind_d0 mem_din 1 32 } } }
	agg_result_data_V { ap_memory {  { agg_result_data_V_address0 mem_address 1 18 }  { agg_result_data_V_ce0 mem_ce 1 1 }  { agg_result_data_V_we0 mem_we 1 1 }  { agg_result_data_V_d0 mem_din 1 32 } } }
	csr1_rowptr { ap_memory {  { csr1_rowptr_address0 mem_address 1 9 }  { csr1_rowptr_ce0 mem_ce 1 1 }  { csr1_rowptr_q0 mem_dout 0 32 }  { csr1_rowptr_address1 MemPortADDR2 1 9 }  { csr1_rowptr_ce1 MemPortCE2 1 1 }  { csr1_rowptr_q1 MemPortDOUT2 0 32 } } }
	csr1_colind { ap_memory {  { csr1_colind_address0 mem_address 1 18 }  { csr1_colind_ce0 mem_ce 1 1 }  { csr1_colind_q0 mem_dout 0 32 } } }
	csr1_data_V { ap_memory {  { csr1_data_V_address0 mem_address 1 18 }  { csr1_data_V_ce0 mem_ce 1 1 }  { csr1_data_V_q0 mem_dout 0 32 } } }
	csr2_rowptr { ap_memory {  { csr2_rowptr_address0 mem_address 1 9 }  { csr2_rowptr_ce0 mem_ce 1 1 }  { csr2_rowptr_q0 mem_dout 0 32 }  { csr2_rowptr_address1 MemPortADDR2 1 9 }  { csr2_rowptr_ce1 MemPortCE2 1 1 }  { csr2_rowptr_q1 MemPortDOUT2 0 32 } } }
	csr2_colind { ap_memory {  { csr2_colind_address0 mem_address 1 18 }  { csr2_colind_ce0 mem_ce 1 1 }  { csr2_colind_q0 mem_dout 0 9 } } }
	csr2_data_V { ap_memory {  { csr2_data_V_address0 mem_address 1 18 }  { csr2_data_V_ce0 mem_ce 1 1 }  { csr2_data_V_q0 mem_dout 0 32 } } }
}
