set moduleName extract_col
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
set C_modelName {extract_col}
set C_modelType { void 0 }
set C_modelArgList {
	{ inp_csc_colptr int 32 regular {array 6 { 1 1 } 1 1 }  }
	{ inp_csc_rowind int 32 regular {array 20 { 1 3 } 1 1 }  }
	{ inp_csc_data_V int 32 regular {array 20 { 1 3 } 1 1 }  }
	{ col int 3 regular  }
	{ out_col_V_0 int 32 regular {pointer 1} {global 1}  }
	{ out_col_V_1 int 32 regular {pointer 1} {global 1}  }
	{ out_col_V_2 int 32 regular {pointer 1} {global 1}  }
	{ out_col_V_3 int 32 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inp_csc_colptr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inp_csc_rowind", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inp_csc_data_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "out_col_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "out_col_V_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "out_col_V_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "out_col_V_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inp_csc_colptr_address0 sc_out sc_lv 3 signal 0 } 
	{ inp_csc_colptr_ce0 sc_out sc_logic 1 signal 0 } 
	{ inp_csc_colptr_q0 sc_in sc_lv 32 signal 0 } 
	{ inp_csc_colptr_address1 sc_out sc_lv 3 signal 0 } 
	{ inp_csc_colptr_ce1 sc_out sc_logic 1 signal 0 } 
	{ inp_csc_colptr_q1 sc_in sc_lv 32 signal 0 } 
	{ inp_csc_rowind_address0 sc_out sc_lv 5 signal 1 } 
	{ inp_csc_rowind_ce0 sc_out sc_logic 1 signal 1 } 
	{ inp_csc_rowind_q0 sc_in sc_lv 32 signal 1 } 
	{ inp_csc_data_V_address0 sc_out sc_lv 5 signal 2 } 
	{ inp_csc_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ inp_csc_data_V_q0 sc_in sc_lv 32 signal 2 } 
	{ col sc_in sc_lv 3 signal 3 } 
	{ out_col_V_0 sc_out sc_lv 32 signal 4 } 
	{ out_col_V_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ out_col_V_1 sc_out sc_lv 32 signal 5 } 
	{ out_col_V_1_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ out_col_V_2 sc_out sc_lv 32 signal 6 } 
	{ out_col_V_2_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ out_col_V_3 sc_out sc_lv 32 signal 7 } 
	{ out_col_V_3_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inp_csc_colptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "address0" }} , 
 	{ "name": "inp_csc_colptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "ce0" }} , 
 	{ "name": "inp_csc_colptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "q0" }} , 
 	{ "name": "inp_csc_colptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "address1" }} , 
 	{ "name": "inp_csc_colptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "ce1" }} , 
 	{ "name": "inp_csc_colptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_csc_colptr", "role": "q1" }} , 
 	{ "name": "inp_csc_rowind_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inp_csc_rowind", "role": "address0" }} , 
 	{ "name": "inp_csc_rowind_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_csc_rowind", "role": "ce0" }} , 
 	{ "name": "inp_csc_rowind_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_csc_rowind", "role": "q0" }} , 
 	{ "name": "inp_csc_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inp_csc_data_V", "role": "address0" }} , 
 	{ "name": "inp_csc_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inp_csc_data_V", "role": "ce0" }} , 
 	{ "name": "inp_csc_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inp_csc_data_V", "role": "q0" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "col", "role": "default" }} , 
 	{ "name": "out_col_V_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_col_V_0", "role": "default" }} , 
 	{ "name": "out_col_V_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_col_V_0", "role": "ap_vld" }} , 
 	{ "name": "out_col_V_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_col_V_1", "role": "default" }} , 
 	{ "name": "out_col_V_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_col_V_1", "role": "ap_vld" }} , 
 	{ "name": "out_col_V_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_col_V_2", "role": "default" }} , 
 	{ "name": "out_col_V_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_col_V_2", "role": "ap_vld" }} , 
 	{ "name": "out_col_V_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_col_V_3", "role": "default" }} , 
 	{ "name": "out_col_V_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_col_V_3", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inp_csc_colptr { ap_memory {  { inp_csc_colptr_address0 mem_address 1 3 }  { inp_csc_colptr_ce0 mem_ce 1 1 }  { inp_csc_colptr_q0 mem_dout 0 32 }  { inp_csc_colptr_address1 MemPortADDR2 1 3 }  { inp_csc_colptr_ce1 MemPortCE2 1 1 }  { inp_csc_colptr_q1 MemPortDOUT2 0 32 } } }
	inp_csc_rowind { ap_memory {  { inp_csc_rowind_address0 mem_address 1 5 }  { inp_csc_rowind_ce0 mem_ce 1 1 }  { inp_csc_rowind_q0 mem_dout 0 32 } } }
	inp_csc_data_V { ap_memory {  { inp_csc_data_V_address0 mem_address 1 5 }  { inp_csc_data_V_ce0 mem_ce 1 1 }  { inp_csc_data_V_q0 mem_dout 0 32 } } }
	col { ap_none {  { col in_data 0 3 } } }
	out_col_V_0 { ap_vld {  { out_col_V_0 out_data 1 32 }  { out_col_V_0_ap_vld out_vld 1 1 } } }
	out_col_V_1 { ap_vld {  { out_col_V_1 out_data 1 32 }  { out_col_V_1_ap_vld out_vld 1 1 } } }
	out_col_V_2 { ap_vld {  { out_col_V_2 out_data 1 32 }  { out_col_V_2_ap_vld out_vld 1 1 } } }
	out_col_V_3 { ap_vld {  { out_col_V_3 out_data 1 32 }  { out_col_V_3_ap_vld out_vld 1 1 } } }
}
