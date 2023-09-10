set moduleName operator_add_assign
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {operator+=}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_r int 15808 regular {pointer 2}  }
	{ rhs int 15808 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "this_r", "interface" : "wire", "bitwidth" : 15808, "direction" : "READWRITE"} , 
 	{ "Name" : "rhs", "interface" : "wire", "bitwidth" : 15808, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_r_i sc_in sc_lv 15808 signal 0 } 
	{ this_r_o sc_out sc_lv 15808 signal 0 } 
	{ this_r_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ rhs sc_in sc_lv 15808 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_r_i", "direction": "in", "datatype": "sc_lv", "bitwidth":15808, "type": "signal", "bundle":{"name": "this_r", "role": "i" }} , 
 	{ "name": "this_r_o", "direction": "out", "datatype": "sc_lv", "bitwidth":15808, "type": "signal", "bundle":{"name": "this_r", "role": "o" }} , 
 	{ "name": "this_r_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "this_r", "role": "o_ap_vld" }} , 
 	{ "name": "rhs", "direction": "in", "datatype": "sc_lv", "bitwidth":15808, "type": "signal", "bundle":{"name": "rhs", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "operator_add_assign",
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
			{"Name" : "this_r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rhs", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	operator_add_assign {
		this_r {Type IO LastRead 0 FirstWrite 0}
		rhs {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_r { ap_ovld {  { this_r_i in_data 0 15808 }  { this_r_o out_data 1 15808 }  { this_r_o_ap_vld out_vld 1 1 } } }
	rhs { ap_none {  { rhs in_data 0 15808 } } }
}
