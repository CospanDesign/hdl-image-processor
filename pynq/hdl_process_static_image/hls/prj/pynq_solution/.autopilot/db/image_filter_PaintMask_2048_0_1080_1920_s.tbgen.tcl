set moduleName image_filter_PaintMask_2048_0_1080_1920_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {image_filter_PaintMask<2048, 0, 1080, 1920>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 11 regular {ap_stable 0} }
	{ cols int 11 regular {ap_stable 0} }
	{ p_src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ p_src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ p_mask_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ p_dst_data_stream_1_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_mask_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rows sc_in sc_lv 11 signal 0 } 
	{ cols sc_in sc_lv 11 signal 1 } 
	{ p_src_data_stream_0_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ p_src_data_stream_1_V_dout sc_in sc_lv 8 signal 3 } 
	{ p_src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_data_stream_1_V_read sc_out sc_logic 1 signal 3 } 
	{ p_mask_data_stream_V_dout sc_in sc_lv 8 signal 4 } 
	{ p_mask_data_stream_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_mask_data_stream_V_read sc_out sc_logic 1 signal 4 } 
	{ p_dst_data_stream_0_V_din sc_out sc_lv 8 signal 5 } 
	{ p_dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst_data_stream_0_V_write sc_out sc_logic 1 signal 5 } 
	{ p_dst_data_stream_1_V_din sc_out sc_lv 8 signal 6 } 
	{ p_dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 6 } 
	{ p_dst_data_stream_1_V_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "p_src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "p_src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "p_mask_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_mask_data_stream_V", "role": "dout" }} , 
 	{ "name": "p_mask_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mask_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "p_mask_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mask_data_stream_V", "role": "read" }} , 
 	{ "name": "p_dst_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "din" }} , 
 	{ "name": "p_dst_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "write" }} , 
 	{ "name": "p_dst_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "din" }} , 
 	{ "name": "p_dst_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "image_filter_PaintMask_2048_0_1080_1920_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "rows", "Type" : "Stable", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cols", "Type" : "Stable", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "p_mask_data_stream_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "p_mask_data_stream_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "2077921"}
]}

set Spec2ImplPortList { 
	rows { ap_stable {  { rows in_data 0 11 } } }
	cols { ap_stable {  { cols in_data 0 11 } } }
	p_src_data_stream_0_V { ap_fifo {  { p_src_data_stream_0_V_dout fifo_data 0 8 }  { p_src_data_stream_0_V_empty_n fifo_status 0 1 }  { p_src_data_stream_0_V_read fifo_update 1 1 } } }
	p_src_data_stream_1_V { ap_fifo {  { p_src_data_stream_1_V_dout fifo_data 0 8 }  { p_src_data_stream_1_V_empty_n fifo_status 0 1 }  { p_src_data_stream_1_V_read fifo_update 1 1 } } }
	p_mask_data_stream_V { ap_fifo {  { p_mask_data_stream_V_dout fifo_data 0 8 }  { p_mask_data_stream_V_empty_n fifo_status 0 1 }  { p_mask_data_stream_V_read fifo_update 1 1 } } }
	p_dst_data_stream_0_V { ap_fifo {  { p_dst_data_stream_0_V_din fifo_data 1 8 }  { p_dst_data_stream_0_V_full_n fifo_status 0 1 }  { p_dst_data_stream_0_V_write fifo_update 1 1 } } }
	p_dst_data_stream_1_V { ap_fifo {  { p_dst_data_stream_1_V_din fifo_data 1 8 }  { p_dst_data_stream_1_V_full_n fifo_status 0 1 }  { p_dst_data_stream_1_V_write fifo_update 1 1 } } }
}
