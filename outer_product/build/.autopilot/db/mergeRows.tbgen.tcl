set moduleName mergeRows
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
set C_modelName {mergeRows}
set C_modelType { int 32 }
set C_modelArgList {
	{ colind1 int 32 regular {fifo 0 volatile }  }
	{ colind2 int 32 regular {fifo 0 volatile }  }
	{ data1 int 32 regular {fifo 0 volatile }  }
	{ data2 int 32 regular {fifo 0 volatile }  }
	{ merged_colind int 32 regular {fifo 1 volatile }  }
	{ merged_data int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "colind1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "colind2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "merged_colind", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "merged_data", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ colind1_dout sc_in sc_lv 32 signal 0 } 
	{ colind1_empty_n sc_in sc_logic 1 signal 0 } 
	{ colind1_read sc_out sc_logic 1 signal 0 } 
	{ colind2_dout sc_in sc_lv 32 signal 1 } 
	{ colind2_empty_n sc_in sc_logic 1 signal 1 } 
	{ colind2_read sc_out sc_logic 1 signal 1 } 
	{ data1_dout sc_in sc_lv 32 signal 2 } 
	{ data1_empty_n sc_in sc_logic 1 signal 2 } 
	{ data1_read sc_out sc_logic 1 signal 2 } 
	{ data2_dout sc_in sc_lv 32 signal 3 } 
	{ data2_empty_n sc_in sc_logic 1 signal 3 } 
	{ data2_read sc_out sc_logic 1 signal 3 } 
	{ merged_colind_din sc_out sc_lv 32 signal 4 } 
	{ merged_colind_full_n sc_in sc_logic 1 signal 4 } 
	{ merged_colind_write sc_out sc_logic 1 signal 4 } 
	{ merged_data_din sc_out sc_lv 32 signal 5 } 
	{ merged_data_full_n sc_in sc_logic 1 signal 5 } 
	{ merged_data_write sc_out sc_logic 1 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "colind1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "colind1", "role": "dout" }} , 
 	{ "name": "colind1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colind1", "role": "empty_n" }} , 
 	{ "name": "colind1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colind1", "role": "read" }} , 
 	{ "name": "colind2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "colind2", "role": "dout" }} , 
 	{ "name": "colind2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colind2", "role": "empty_n" }} , 
 	{ "name": "colind2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "colind2", "role": "read" }} , 
 	{ "name": "data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data1", "role": "dout" }} , 
 	{ "name": "data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "empty_n" }} , 
 	{ "name": "data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data1", "role": "read" }} , 
 	{ "name": "data2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data2", "role": "dout" }} , 
 	{ "name": "data2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "empty_n" }} , 
 	{ "name": "data2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2", "role": "read" }} , 
 	{ "name": "merged_colind_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "merged_colind", "role": "din" }} , 
 	{ "name": "merged_colind_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merged_colind", "role": "full_n" }} , 
 	{ "name": "merged_colind_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merged_colind", "role": "write" }} , 
 	{ "name": "merged_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "merged_data", "role": "din" }} , 
 	{ "name": "merged_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merged_data", "role": "full_n" }} , 
 	{ "name": "merged_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merged_data", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colind1_buff_fifo_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colind2_buff_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	colind1 { ap_fifo {  { colind1_dout fifo_data 0 32 }  { colind1_empty_n fifo_status 0 1 }  { colind1_read fifo_update 1 1 } } }
	colind2 { ap_fifo {  { colind2_dout fifo_data 0 32 }  { colind2_empty_n fifo_status 0 1 }  { colind2_read fifo_update 1 1 } } }
	data1 { ap_fifo {  { data1_dout fifo_data 0 32 }  { data1_empty_n fifo_status 0 1 }  { data1_read fifo_update 1 1 } } }
	data2 { ap_fifo {  { data2_dout fifo_data 0 32 }  { data2_empty_n fifo_status 0 1 }  { data2_read fifo_update 1 1 } } }
	merged_colind { ap_fifo {  { merged_colind_din fifo_data 1 32 }  { merged_colind_full_n fifo_status 0 1 }  { merged_colind_write fifo_update 1 1 } } }
	merged_data { ap_fifo {  { merged_data_din fifo_data 1 32 }  { merged_data_full_n fifo_status 0 1 }  { merged_data_write fifo_update 1 1 } } }
}
