set moduleName multiply_row_col
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
set C_modelName {multiply_row_col}
set C_modelType { void 0 }
set C_modelArgList {
	{ row int 32 regular {array 5 { 1 3 } 1 1 }  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 32 regular  }
	{ out_rowptr int 32 regular {array 5 { 0 3 } 0 1 }  }
	{ out_colind int 3 regular {array 20 { 0 3 } 0 1 }  }
	{ out_data int 32 regular {array 20 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_rowptr", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_colind", "interface" : "memory", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_address0 sc_out sc_lv 3 signal 0 } 
	{ row_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_q0 sc_in sc_lv 32 signal 0 } 
	{ p_read sc_in sc_lv 32 signal 1 } 
	{ p_read1 sc_in sc_lv 32 signal 2 } 
	{ p_read2 sc_in sc_lv 32 signal 3 } 
	{ p_read3 sc_in sc_lv 32 signal 4 } 
	{ out_rowptr_address0 sc_out sc_lv 3 signal 5 } 
	{ out_rowptr_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_rowptr_we0 sc_out sc_logic 1 signal 5 } 
	{ out_rowptr_d0 sc_out sc_lv 32 signal 5 } 
	{ out_colind_address0 sc_out sc_lv 5 signal 6 } 
	{ out_colind_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_colind_we0 sc_out sc_logic 1 signal 6 } 
	{ out_colind_d0 sc_out sc_lv 3 signal 6 } 
	{ out_data_address0 sc_out sc_lv 5 signal 7 } 
	{ out_data_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_data_we0 sc_out sc_logic 1 signal 7 } 
	{ out_data_d0 sc_out sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row", "role": "address0" }} , 
 	{ "name": "row_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "ce0" }} , 
 	{ "name": "row_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "out_rowptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_rowptr", "role": "address0" }} , 
 	{ "name": "out_rowptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_rowptr", "role": "ce0" }} , 
 	{ "name": "out_rowptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_rowptr", "role": "we0" }} , 
 	{ "name": "out_rowptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_rowptr", "role": "d0" }} , 
 	{ "name": "out_colind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_colind", "role": "address0" }} , 
 	{ "name": "out_colind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_colind", "role": "ce0" }} , 
 	{ "name": "out_colind_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_colind", "role": "we0" }} , 
 	{ "name": "out_colind_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_colind", "role": "d0" }} , 
 	{ "name": "out_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_data", "role": "address0" }} , 
 	{ "name": "out_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "ce0" }} , 
 	{ "name": "out_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "we0" }} , 
 	{ "name": "out_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mult_fu_302", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mult_fu_302.mul_32s_32s_48_1_1_U1", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "84"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "84"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	row { ap_memory {  { row_address0 mem_address 1 3 }  { row_ce0 mem_ce 1 1 }  { row_q0 mem_dout 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	out_rowptr { ap_memory {  { out_rowptr_address0 mem_address 1 3 }  { out_rowptr_ce0 mem_ce 1 1 }  { out_rowptr_we0 mem_we 1 1 }  { out_rowptr_d0 mem_din 1 32 } } }
	out_colind { ap_memory {  { out_colind_address0 mem_address 1 5 }  { out_colind_ce0 mem_ce 1 1 }  { out_colind_we0 mem_we 1 1 }  { out_colind_d0 mem_din 1 3 } } }
	out_data { ap_memory {  { out_data_address0 mem_address 1 5 }  { out_data_ce0 mem_ce 1 1 }  { out_data_we0 mem_we 1 1 }  { out_data_d0 mem_din 1 32 } } }
}
