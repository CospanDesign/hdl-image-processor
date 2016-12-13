; ModuleID = '/home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mask_OC_data_stream_LF_0_NF_O = internal unnamed_addr constant [22 x i8] c"mask.data_stream[0].V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@img_2_OC_data_stream_LF_1_NF_s = internal unnamed_addr constant [23 x i8] c"img_2.data_stream[1].V\00"
@img_2_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_2.data_stream[0].V\00"
@img_1_OC_data_stream_LF_1_NF_s = internal unnamed_addr constant [24 x i8] c"img_1_.data_stream[1].V\00"
@img_1_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [24 x i8] c"img_1_.data_stream[0].V\00"
@img_1_Y_OC_data_stream_LF_0_NF = internal unnamed_addr constant [25 x i8] c"img_1_Y.data_stream[0].V\00"
@img_1_UV_OC_data_stream_LF_0_N = internal unnamed_addr constant [26 x i8] c"img_1_UV.data_stream[0].V\00"
@img_1_OC_data_stream_LF_1_NF_s_0 = internal unnamed_addr constant [23 x i8] c"img_1.data_stream[1].V\00"
@img_1_OC_data_stream_LF_0_NF_s_1 = internal unnamed_addr constant [23 x i8] c"img_1.data_stream[0].V\00"
@img_0_OC_data_stream_LF_1_NF_s = internal unnamed_addr constant [23 x i8] c"img_0.data_stream[1].V\00"
@img_0_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_0.data_stream[0].V\00"
@image_filter_str = internal unnamed_addr constant [13 x i8] c"image_filter\00"
@hls_KD_KD_LineBuffer_MD_6_MC_1 = internal unnamed_addr constant [61 x i8] c"hls::LineBuffer<6, 1920, ap_uint<8>, 0>::LineBuffer.1.region\00"
@hls_KD_KD_LineBuffer_MD_6_MC_s = internal unnamed_addr constant [64 x i8] c"hls::LineBuffer<6, 1920, unsigned char, 0>::LineBuffer.1.region\00"
@hls_KD_KD_LineBuffer_MD_2_MC_s = internal unnamed_addr constant [61 x i8] c"hls::LineBuffer<2, 1927, ap_int<16>, 0>::LineBuffer.1.region\00"
@dmask_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"dmask.data_stream[0].V\00"
@ap_stable_str = internal unnamed_addr constant [10 x i8] c"ap_stable\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str1868 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@p_str1867 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1863 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1861 = private unnamed_addr constant [13 x i8] c"hls_label_21\00", align 1
@p_str1847 = private unnamed_addr constant [12 x i8] c"channelloop\00", align 1
@p_str1834 = private unnamed_addr constant [13 x i8] c"hls_label_23\00", align 1
@p_str1832 = private unnamed_addr constant [13 x i8] c"hls_label_18\00", align 1
@p_str1824 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@p_str1820 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1819 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1813 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1812 = private unnamed_addr constant [5 x i8] c"0x1C\00", align 1
@p_str1811 = private unnamed_addr constant [5 x i8] c"0x14\00", align 1
@p_str1810 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1808 = private unnamed_addr constant [14 x i8] c"OUTPUT_STREAM\00", align 1
@p_str1807 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1806 = private unnamed_addr constant [13 x i8] c"INPUT_STREAM\00", align 1
@p_str1805 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc i32 @"image_filter_reg<int>"(i32 %in) nounwind uwtable readnone {
  %in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [8 x i8]* @p_str1863, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  ret i32 %in_read
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @image_filter(i16* %INPUT_STREAM_V_data_V, i2* %INPUT_STREAM_V_keep_V, i2* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i16* %OUTPUT_STREAM_V_data_V, i2* %OUTPUT_STREAM_V_keep_V, i2* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, i32 %rows, i32 %cols) {
Mat.exit12:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %INPUT_STREAM_V_data_V), !map !289
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %INPUT_STREAM_V_keep_V), !map !293
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %INPUT_STREAM_V_strb_V), !map !297
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_user_V), !map !301
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_last_V), !map !305
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_id_V), !map !309
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_dest_V), !map !313
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %OUTPUT_STREAM_V_data_V), !map !317
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %OUTPUT_STREAM_V_keep_V), !map !321
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %OUTPUT_STREAM_V_strb_V), !map !325
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_user_V), !map !329
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_last_V), !map !333
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_id_V), !map !337
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_dest_V), !map !341
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rows), !map !345
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %cols), !map !351
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @image_filter_str) nounwind
  %cols_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %rows)
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_0_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_0_data_stream_1_V = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_0_OC_data_stream_LF_1_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_1_OC_data_stream_LF_0_NF_s_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_data_stream_1_V = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_1_OC_data_stream_LF_1_NF_s_0, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_data_stream_0_V_13 = alloca i8, align 1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @img_1_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 20000, i32 20000, i8* %img_1_data_stream_0_V_13, i8* %img_1_data_stream_0_V_13)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V_13, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_data_stream_1_V_15 = alloca i8, align 1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @img_1_OC_data_stream_LF_1_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 20000, i32 20000, i8* %img_1_data_stream_1_V_15, i8* %img_1_data_stream_1_V_15)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V_15, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_Y_data_stream_0_V = alloca i8, align 1
  %empty_17 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @img_1_Y_OC_data_stream_LF_0_NF, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_1_Y_data_stream_0_V, i8* %img_1_Y_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_Y_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_1_UV_data_stream_0_V = alloca i8, align 1
  %empty_18 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @img_1_UV_OC_data_stream_LF_0_N, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_1_UV_data_stream_0_V, i8* %img_1_UV_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_UV_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_2_data_stream_0_V = alloca i8, align 1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_2_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_2_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %img_2_data_stream_1_V = alloca i8, align 1
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_2_OC_data_stream_LF_1_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_2_data_stream_1_V, i8* %img_2_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_2_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %mask_data_stream_0_V = alloca i8, align 1
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @mask_OC_data_stream_LF_0_NF_O, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %mask_data_stream_0_V, i8* %mask_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mask_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %dmask_data_stream_0_V = alloca i8, align 1
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @dmask_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %dmask_data_stream_0_V, i8* %dmask_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dmask_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %INPUT_STREAM_V_data_V, i2* %INPUT_STREAM_V_keep_V, i2* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [13 x i8]* @p_str1806, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16* %OUTPUT_STREAM_V_data_V, i2* %OUTPUT_STREAM_V_keep_V, i2* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [14 x i8]* @p_str1808, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [12 x i8]* @p_str1810, [5 x i8]* @p_str1811, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [12 x i8]* @p_str1810, [5 x i8]* @p_str1812, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [12 x i8]* @p_str1810, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1813, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1813, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp = trunc i32 %rows_read to i11
  %tmp_1 = trunc i32 %cols_read to i11
  call fastcc void @image_filter_AXIvideo2Mat(i16* %INPUT_STREAM_V_data_V, i2* %INPUT_STREAM_V_keep_V, i2* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i11 %tmp, i11 %tmp_1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V)
  call fastcc void @image_filter_Duplicate(i11 %tmp, i11 %tmp_1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_0_V_13, i8* %img_1_data_stream_1_V_15)
  call fastcc void @"image_filter_Split<1080, 1920, 2048, 0>"(i11 %tmp, i11 %tmp_1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_Y_data_stream_0_V, i8* %img_1_UV_data_stream_0_V)
  call fastcc void @"image_filter_Consume<1080, 1920, 0>"(i11 %tmp, i11 %tmp_1, i8* %img_1_UV_data_stream_0_V)
  call fastcc void @image_filter_FAST_t_opr(i11 %tmp, i11 %tmp_1, i8* %img_1_Y_data_stream_0_V, i8* %mask_data_stream_0_V)
  call fastcc void @"image_filter_Dilate<0, 0, 1080, 1920>"(i11 %tmp, i11 %tmp_1, i8* %mask_data_stream_0_V, i8* %dmask_data_stream_0_V)
  call fastcc void @"image_filter_PaintMask<2048, 0, 1080, 1920>"(i11 %tmp, i11 %tmp_1, i8* %img_1_data_stream_0_V_13, i8* %img_1_data_stream_1_V_15, i8* %dmask_data_stream_0_V, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_1_V)
  call fastcc void @image_filter_Mat2AXIvideo(i11 %tmp, i11 %tmp_1, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_1_V, i16* %OUTPUT_STREAM_V_data_V, i2* %OUTPUT_STREAM_V_keep_V, i2* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16*, i2*, i2*, i1*, i1*, i1*, i1*, i16, i2, i2, i1, i1, i1, i1) {
entry:
  store i16 %7, i16* %0
  store i2 %8, i2* %1
  store i2 %9, i2* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i16, i2, i2, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16*, i2*, i2*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i16* %0
  %empty_23 = load i2* %1
  %empty_24 = load i2* %2
  %empty_25 = load i1* %3
  %empty_26 = load i1* %4
  %empty_27 = load i1* %5
  %empty_28 = load i1* %6
  %mrv_0 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } undef, i16 %empty, 0
  %mrv1 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv_0, i2 %empty_23, 1
  %mrv2 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv1, i2 %empty_24, 2
  %mrv3 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv2, i1 %empty_25, 3
  %mrv4 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv3, i1 %empty_26, 4
  %mrv5 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv4, i1 %empty_27, 5
  %mrv6 = insertvalue { i16, i2, i2, i1, i1, i1, i1 } %mrv5, i1 %empty_28, 6
  ret { i16, i2, i2, i1, i1, i1, i1 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_stable.i32(i32) {
entry:
  ret i32 %0
}

define weak i11 @_ssdm_op_Read.ap_stable.i11(i11) {
entry:
  ret i11 %0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_29 = trunc i11 %empty to i9
  ret i9 %empty_29
}

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_30 = trunc i16 %empty to i8
  ret i8 %empty_30
}

declare i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_31 = trunc i11 %empty to i10
  ret i10 %empty_31
}

define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_32 = shl i12 1, %empty
  %empty_33 = and i12 %0, %empty_32
  %empty_34 = icmp ne i12 %empty_33, 0
  ret i1 %empty_34
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_35 = zext i8 %1 to i16
  %empty_36 = shl i16 %empty, 8
  %empty_37 = or i16 %empty_36, %empty_35
  ret i16 %empty_37
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @"image_filter_Split<1080, 1920, 2048, 0>"(i11 %rows, i11 %cols, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %dst0_data_stream_V, i8* %dst1_data_stream_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst0_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %.preheader.i

.preheader.i:                                     ; preds = %2, %entry
  %p_i = phi i11 [ %i_V, %2 ], [ 0, %entry ]
  %exitcond1_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond1_i, label %"Split<1080, 1920, 2048, 0>.exit", label %0

; <label>:0                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %1

; <label>:1                                       ; preds = %"operator>>.exit.i", %0
  %p_1_i = phi i11 [ 0, %0 ], [ %j_V, %"operator>>.exit.i" ]
  %exitcond_i = icmp eq i11 %p_1_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_1_i, 1
  br i1 %exitcond_i, label %2, label %"operator>>.exit.i"

"operator>>.exit.i":                              ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1824)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_0_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_1_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1824, i32 %tmp_4_i)
  %tmp_8_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1861)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst0_data_stream_V, i8 %tmp_2)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1861, i32 %tmp_8_i)
  %tmp_11_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1861)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_V, i8 %tmp)
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1861, i32 %tmp_11_i)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_2_i)
  br label %1

; <label>:2                                       ; preds = %1
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %.preheader.i

"Split<1080, 1920, 2048, 0>.exit":                ; preds = %.preheader.i
  ret void
}

define internal fastcc void @"image_filter_PaintMask<2048, 0, 1080, 1920>"(i11 %rows, i11 %cols, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_mask_data_stream_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_mask_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %3, %entry
  %p_i = phi i11 [ 0, %entry ], [ %i_V, %3 ]
  %exitcond2_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond2_i, label %"PaintMask<2048, 0, 1080, 1920>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit.i", %1
  %p_2_i = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit.i" ]
  %exitcond_i = icmp eq i11 %p_2_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_2_i, 1
  br i1 %exitcond_i, label %3, label %"operator>>.exit.i"

"operator>>.exit.i":                              ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_14_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_16_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1824)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_0_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_1_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1824, i32 %tmp_16_i)
  %tmp_19_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1834)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_mask_data_stream_V)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1834, i32 %tmp_19_i)
  %tmp_i_43 = icmp eq i8 %tmp_3, 0
  %tmp_4 = select i1 %tmp_i_43, i8 %tmp_6, i8 -1
  %tmp_5 = select i1 %tmp_i_43, i8 %tmp, i8 0
  %tmp_21_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1832)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %tmp_5)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1832, i32 %tmp_21_i)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_14_i)
  br label %2

; <label>:3                                       ; preds = %2
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %0

"PaintMask<2048, 0, 1080, 1920>.exit":            ; preds = %0
  ret void
}

define internal fastcc void @image_filter_Mat2AXIvideo(i11 %rows, i11 %cols, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
entry:
  %tmp_user_V = alloca i1
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [14 x i8]* @p_str1808, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  %r_V = add i11 %cols_read, -1
  store i1 true, i1* %tmp_user_V
  br label %.preheader.i

.preheader.i:                                     ; preds = %2, %entry
  %p_i = phi i11 [ %i_V, %2 ], [ 0, %entry ]
  %exitcond3_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond3_i, label %"Mat2AXIvideo<16, 1080, 1920, 2048>.exit", label %0

; <label>:0                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %1

; <label>:1                                       ; preds = %"operator>>.exit.i", %0
  %p_3_i = phi i11 [ 0, %0 ], [ %j_V, %"operator>>.exit.i" ]
  %exitcond4_i = icmp eq i11 %p_3_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_3_i, 1
  br i1 %exitcond4_i, label %2, label %"operator>>.exit.i"

"operator>>.exit.i":                              ; preds = %1
  %tmp_user_V_load = load i1* %tmp_user_V
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_26_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %axi_last_V = icmp eq i11 %p_3_i, %r_V
  %tmp_27_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1824)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_7 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1824, i32 %tmp_27_i)
  %tmp_data_V = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp, i8 %tmp_7)
  call void @_ssdm_op_Write.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i16 %tmp_data_V, i2 -1, i2 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_26_i)
  store i1 false, i1* %tmp_user_V
  br label %1

; <label>:2                                       ; preds = %1
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %.preheader.i

"Mat2AXIvideo<16, 1080, 1920, 2048>.exit":        ; preds = %.preheader.i
  ret void
}

define internal fastcc void @image_filter_FAST_t_opr(i11 %rows, i11 %cols, i8* %p_src_data_stream_V, i8* %p_mask_data_stream_V) {
entry:
  %core_win_val_2_V_1 = alloca i16
  %core_win_val_2_V_0 = alloca i16
  %core_win_val_1_V_1 = alloca i16
  %core_win_val_1_V_0 = alloca i16
  %core_win_val_0_V_1 = alloca i16
  %core_win_val_0_V_0 = alloca i16
  %win_val_0_V_2 = alloca i8
  %win_val_0_V_2_1 = alloca i8
  %win_val_0_V_3 = alloca i8
  %win_val_0_V_4 = alloca i8
  %win_val_0_V_5 = alloca i8
  %win_val_1_V_1 = alloca i8
  %win_val_1_V_1_1 = alloca i8
  %win_val_1_V_2 = alloca i8
  %win_val_1_V_3 = alloca i8
  %win_val_1_V_4 = alloca i8
  %win_val_1_V_5 = alloca i8
  %win_val_2_V_0 = alloca i8
  %win_val_2_V_0_1 = alloca i8
  %win_val_2_V_1 = alloca i8
  %win_val_2_V_2 = alloca i8
  %win_val_2_V_3 = alloca i8
  %win_val_2_V_4 = alloca i8
  %win_val_2_V_5 = alloca i8
  %win_val_3_V_0 = alloca i8
  %win_val_3_V_0_1 = alloca i8
  %win_val_3_V_1 = alloca i8
  %win_val_3_V_2 = alloca i8
  %win_val_3_V_3 = alloca i8
  %win_val_3_V_4 = alloca i8
  %win_val_3_V_5 = alloca i8
  %win_val_4_V_0 = alloca i8
  %win_val_4_V_0_1 = alloca i8
  %win_val_4_V_1 = alloca i8
  %win_val_4_V_2 = alloca i8
  %win_val_4_V_3 = alloca i8
  %win_val_4_V_4 = alloca i8
  %win_val_4_V_5 = alloca i8
  %win_val_5_V_1 = alloca i8
  %win_val_5_V_1_1 = alloca i8
  %win_val_5_V_2 = alloca i8
  %win_val_5_V_3 = alloca i8
  %win_val_5_V_4 = alloca i8
  %win_val_5_V_5 = alloca i8
  %win_val_6_V_2 = alloca i8
  %win_val_6_V_2_1 = alloca i8
  %win_val_6_V_3 = alloca i8
  %win_val_6_V_4 = alloca i8
  %win_val_6_V_5 = alloca i8
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_mask_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  %k_buf_val_0_V = alloca [1920 x i8], align 1
  %k_buf_val_1_V = alloca [1920 x i8], align 1
  %k_buf_val_2_V = alloca [1920 x i8], align 1
  %k_buf_val_3_V = alloca [1920 x i8], align 1
  %k_buf_val_4_V = alloca [1920 x i8], align 1
  %k_buf_val_5_V = alloca [1920 x i8], align 1
  %core_buf_val_0_V = alloca [1927 x i8], align 1
  %core_buf_val_1_V = alloca [1927 x i8], align 1
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %rbegin_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([61 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_1) nounwind
  %rend_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([61 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_1, i32 %rbegin_i_i) nounwind
  %rbegin_i1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([61 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_s) nounwind
  %rend_i339_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([61 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_s, i32 %rbegin_i1_i) nounwind
  %tmp_s = add i11 %cols_read, 4
  %tmp_1 = add i11 %rows_read, 4
  br label %0

; <label>:0                                       ; preds = %5, %entry
  %p_i = phi i11 [ 0, %entry ], [ %i_V, %5 ]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 1084, i64 0)
  %exitcond1 = icmp eq i11 %p_i, %tmp_1
  %i_V = add i11 %p_i, 1
  br i1 %exitcond1, label %"FAST_t_opr<16, 7, 0, 1080, 1920>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  %tmp_2_i = icmp ult i11 %p_i, %rows_read
  %tmp_3_i = icmp ugt i11 %p_i, 5
  %tmp_4_i = icmp ugt i11 %p_i, 6
  %tmp_9 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %p_i, i32 2, i32 10)
  %icmp = icmp eq i9 %tmp_9, 0
  br label %2

; <label>:2                                       ; preds = %._crit_edge327.i, %1
  %p_1_i = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge327.i ]
  %win_val_0_V_2_2 = load i8* %win_val_0_V_2_1
  %win_val_0_V_3_1 = load i8* %win_val_0_V_3
  %win_val_0_V_4_1 = load i8* %win_val_0_V_4
  %win_val_0_V_5_1 = load i8* %win_val_0_V_5
  %win_val_1_V_1_2 = load i8* %win_val_1_V_1_1
  %win_val_1_V_2_1 = load i8* %win_val_1_V_2
  %win_val_1_V_3_1 = load i8* %win_val_1_V_3
  %win_val_1_V_4_1 = load i8* %win_val_1_V_4
  %win_val_1_V_5_1 = load i8* %win_val_1_V_5
  %win_val_2_V_0_2 = load i8* %win_val_2_V_0_1
  %win_val_2_V_1_1 = load i8* %win_val_2_V_1
  %win_val_2_V_2_1 = load i8* %win_val_2_V_2
  %win_val_2_V_3_1 = load i8* %win_val_2_V_3
  %win_val_2_V_4_1 = load i8* %win_val_2_V_4
  %win_val_2_V_5_1 = load i8* %win_val_2_V_5
  %win_val_3_V_0_2 = load i8* %win_val_3_V_0_1
  %win_val_3_V_1_1 = load i8* %win_val_3_V_1
  %win_val_3_V_2_1 = load i8* %win_val_3_V_2
  %win_val_3_V_3_1 = load i8* %win_val_3_V_3
  %win_val_3_V_4_1 = load i8* %win_val_3_V_4
  %win_val_3_V_5_1 = load i8* %win_val_3_V_5
  %win_val_4_V_0_2 = load i8* %win_val_4_V_0_1
  %win_val_4_V_1_1 = load i8* %win_val_4_V_1
  %win_val_4_V_2_1 = load i8* %win_val_4_V_2
  %win_val_4_V_3_1 = load i8* %win_val_4_V_3
  %win_val_4_V_4_1 = load i8* %win_val_4_V_4
  %win_val_4_V_5_1 = load i8* %win_val_4_V_5
  %win_val_5_V_1_2 = load i8* %win_val_5_V_1_1
  %win_val_5_V_2_1 = load i8* %win_val_5_V_2
  %win_val_5_V_3_1 = load i8* %win_val_5_V_3
  %win_val_5_V_4_1 = load i8* %win_val_5_V_4
  %win_val_5_V_5_1 = load i8* %win_val_5_V_5
  %win_val_6_V_2_2 = load i8* %win_val_6_V_2_1
  %win_val_6_V_3_1 = load i8* %win_val_6_V_3
  %win_val_6_V_4_1 = load i8* %win_val_6_V_4
  %win_val_6_V_5_1 = load i8* %win_val_6_V_5
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 1924, i64 0)
  %exitcond = icmp eq i11 %p_1_i, %tmp_s
  %j_V = add i11 %p_1_i, 1
  br i1 %exitcond, label %5, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_32_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_8_i = icmp ult i11 %p_1_i, %cols_read
  %or_cond_i = and i1 %tmp_2_i, %tmp_8_i
  br i1 %or_cond_i, label %.preheader319.preheader.0.i, label %.preheader.preheader.0.i

.preheader319.preheader.0.i:                      ; preds = %3
  %tmp_9_i = zext i11 %p_1_i to i64
  %k_buf_val_0_V_addr = getelementptr [1920 x i8]* %k_buf_val_0_V, i64 0, i64 %tmp_9_i
  %win_val_0_V_6 = load i8* %k_buf_val_0_V_addr, align 1
  %k_buf_val_1_V_addr = getelementptr [1920 x i8]* %k_buf_val_1_V, i64 0, i64 %tmp_9_i
  %win_val_1_V_6 = load i8* %k_buf_val_1_V_addr, align 1
  store i8 %win_val_1_V_6, i8* %k_buf_val_0_V_addr, align 1
  %k_buf_val_2_V_addr = getelementptr [1920 x i8]* %k_buf_val_2_V, i64 0, i64 %tmp_9_i
  %win_val_2_V_6 = load i8* %k_buf_val_2_V_addr, align 1
  store i8 %win_val_2_V_6, i8* %k_buf_val_1_V_addr, align 1
  %k_buf_val_3_V_addr = getelementptr [1920 x i8]* %k_buf_val_3_V, i64 0, i64 %tmp_9_i
  %win_val_3_V_6 = load i8* %k_buf_val_3_V_addr, align 1
  store i8 %win_val_3_V_6, i8* %k_buf_val_2_V_addr, align 1
  %k_buf_val_4_V_addr = getelementptr [1920 x i8]* %k_buf_val_4_V, i64 0, i64 %tmp_9_i
  %win_val_4_V_6 = load i8* %k_buf_val_4_V_addr, align 1
  store i8 %win_val_4_V_6, i8* %k_buf_val_3_V_addr, align 1
  %k_buf_val_5_V_addr = getelementptr [1920 x i8]* %k_buf_val_5_V, i64 0, i64 %tmp_9_i
  %win_val_5_V_6 = load i8* %k_buf_val_5_V_addr, align 1
  store i8 %win_val_5_V_6, i8* %k_buf_val_4_V_addr, align 1
  %tmp_33_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1834)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_55 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1834, i32 %tmp_33_i)
  store i8 %tmp_55, i8* %k_buf_val_5_V_addr, align 1
  store i8 %tmp_55, i8* %win_val_6_V_5
  store i8 %win_val_6_V_5_1, i8* %win_val_6_V_4
  store i8 %win_val_6_V_4_1, i8* %win_val_6_V_3
  store i8 %win_val_6_V_3_1, i8* %win_val_6_V_2_1
  store i8 %win_val_6_V_2_2, i8* %win_val_6_V_2
  store i8 %win_val_5_V_6, i8* %win_val_5_V_5
  store i8 %win_val_5_V_5_1, i8* %win_val_5_V_4
  store i8 %win_val_5_V_4_1, i8* %win_val_5_V_3
  store i8 %win_val_5_V_3_1, i8* %win_val_5_V_2
  store i8 %win_val_5_V_2_1, i8* %win_val_5_V_1_1
  store i8 %win_val_5_V_1_2, i8* %win_val_5_V_1
  store i8 %win_val_4_V_6, i8* %win_val_4_V_5
  store i8 %win_val_4_V_5_1, i8* %win_val_4_V_4
  store i8 %win_val_4_V_4_1, i8* %win_val_4_V_3
  store i8 %win_val_4_V_3_1, i8* %win_val_4_V_2
  store i8 %win_val_4_V_2_1, i8* %win_val_4_V_1
  store i8 %win_val_4_V_1_1, i8* %win_val_4_V_0_1
  store i8 %win_val_4_V_0_2, i8* %win_val_4_V_0
  store i8 %win_val_3_V_6, i8* %win_val_3_V_5
  store i8 %win_val_3_V_5_1, i8* %win_val_3_V_4
  store i8 %win_val_3_V_4_1, i8* %win_val_3_V_3
  store i8 %win_val_3_V_3_1, i8* %win_val_3_V_2
  store i8 %win_val_3_V_2_1, i8* %win_val_3_V_1
  store i8 %win_val_3_V_1_1, i8* %win_val_3_V_0_1
  store i8 %win_val_3_V_0_2, i8* %win_val_3_V_0
  store i8 %win_val_2_V_6, i8* %win_val_2_V_5
  store i8 %win_val_2_V_5_1, i8* %win_val_2_V_4
  store i8 %win_val_2_V_4_1, i8* %win_val_2_V_3
  store i8 %win_val_2_V_3_1, i8* %win_val_2_V_2
  store i8 %win_val_2_V_2_1, i8* %win_val_2_V_1
  store i8 %win_val_2_V_1_1, i8* %win_val_2_V_0_1
  store i8 %win_val_2_V_0_2, i8* %win_val_2_V_0
  store i8 %win_val_1_V_6, i8* %win_val_1_V_5
  store i8 %win_val_1_V_5_1, i8* %win_val_1_V_4
  store i8 %win_val_1_V_4_1, i8* %win_val_1_V_3
  store i8 %win_val_1_V_3_1, i8* %win_val_1_V_2
  store i8 %win_val_1_V_2_1, i8* %win_val_1_V_1_1
  store i8 %win_val_1_V_1_2, i8* %win_val_1_V_1
  store i8 %win_val_0_V_6, i8* %win_val_0_V_5
  store i8 %win_val_0_V_5_1, i8* %win_val_0_V_4
  store i8 %win_val_0_V_4_1, i8* %win_val_0_V_3
  store i8 %win_val_0_V_3_1, i8* %win_val_0_V_2_1
  store i8 %win_val_0_V_2_2, i8* %win_val_0_V_2
  br label %.preheader.preheader.0.i

.preheader.preheader.0.i:                         ; preds = %.preheader319.preheader.0.i, %3
  %tmp_10_i = zext i11 %p_1_i to i64
  %core_buf_val_0_V_addr = getelementptr [1927 x i8]* %core_buf_val_0_V, i64 0, i64 %tmp_10_i
  %core_buf_val_0_V_load = load i8* %core_buf_val_0_V_addr, align 1
  %core_win_val_0_V_2 = zext i8 %core_buf_val_0_V_load to i16
  %core_buf_val_1_V_addr = getelementptr [1927 x i8]* %core_buf_val_1_V, i64 0, i64 %tmp_10_i
  %core_buf_val_1_V_load = load i8* %core_buf_val_1_V_addr, align 1
  %core_win_val_1_V_2 = zext i8 %core_buf_val_1_V_load to i16
  store i8 %core_buf_val_1_V_load, i8* %core_buf_val_0_V_addr, align 1
  %tmp_11_i = icmp ugt i11 %p_1_i, 5
  %or_cond1_i = and i1 %tmp_3_i, %tmp_11_i
  br i1 %or_cond1_i, label %_ifconv, label %._crit_edge321.i_ifconv

_ifconv:                                          ; preds = %.preheader.preheader.0.i
  %win_val_0_V_2_load = load i8* %win_val_0_V_2
  %win_val_0_V_2_1_load = load i8* %win_val_0_V_2_1
  %win_val_0_V_3_load = load i8* %win_val_0_V_3
  %win_val_1_V_1_load = load i8* %win_val_1_V_1
  %win_val_1_V_4_load = load i8* %win_val_1_V_4
  %win_val_2_V_0_load = load i8* %win_val_2_V_0
  %win_val_2_V_5_load = load i8* %win_val_2_V_5
  %win_val_3_V_0_load = load i8* %win_val_3_V_0
  %win_val_3_V_2_load = load i8* %win_val_3_V_2
  %win_val_3_V_5_load = load i8* %win_val_3_V_5
  %win_val_4_V_0_load = load i8* %win_val_4_V_0
  %win_val_4_V_5_load = load i8* %win_val_4_V_5
  %win_val_5_V_1_load = load i8* %win_val_5_V_1
  %win_val_5_V_4_load = load i8* %win_val_5_V_4
  %win_val_6_V_2_load = load i8* %win_val_6_V_2
  %win_val_6_V_2_1_load = load i8* %win_val_6_V_2_1
  %win_val_6_V_3_load = load i8* %win_val_6_V_3
  %lhs_V_i = zext i8 %win_val_3_V_2_load to i9
  %rhs_V_i = zext i8 %win_val_0_V_2_1_load to i9
  %r_V_i = sub i9 %lhs_V_i, %rhs_V_i
  %flag_d_assign_16_i = sext i9 %r_V_i to i32
  %rhs_V_1_i = zext i8 %win_val_6_V_2_1_load to i9
  %r_V_1_i = sub i9 %lhs_V_i, %rhs_V_1_i
  %flag_d_assign_8_i = sext i9 %r_V_1_i to i32
  %tmp_55_i = icmp sgt i9 %r_V_i, 20
  %tmp_56_i = icmp slt i9 %r_V_i, -20
  %phitmp1_i = select i1 %tmp_55_i, i2 1, i2 -2
  %tmp_4 = or i1 %tmp_55_i, %tmp_56_i
  %flag_val_V_assign_load_1_i = select i1 %tmp_4, i2 %phitmp1_i, i2 0
  %tmp_61_i = icmp sgt i9 %r_V_1_i, 20
  %tmp_63_i = icmp slt i9 %r_V_1_i, -20
  %phitmp11_i = select i1 %tmp_61_i, i2 1, i2 -2
  %tmp_5 = or i1 %tmp_61_i, %tmp_63_i
  %flag_val_V_assign_load_2_i = select i1 %tmp_5, i2 %phitmp11_i, i2 0
  %rhs_V_i_49 = zext i8 %win_val_0_V_3_load to i9
  %r_V_i_50 = sub i9 %lhs_V_i, %rhs_V_i_49
  %flag_d_assign_1_i = sext i9 %r_V_i_50 to i32
  %rhs_V_1_1_i = zext i8 %win_val_6_V_2_load to i9
  %r_V_1_1_i = sub i9 %lhs_V_i, %rhs_V_1_1_i
  %flag_d_assign_9_i = sext i9 %r_V_1_1_i to i32
  %tmp_55_1_i = icmp sgt i9 %r_V_i_50, 20
  %tmp_56_1_i = icmp slt i9 %r_V_i_50, -20
  %phitmp_1_i = select i1 %tmp_55_1_i, i2 1, i2 -2
  %tmp_6 = or i1 %tmp_55_1_i, %tmp_56_1_i
  %flag_val_V_assign_load_1_1_i = select i1 %tmp_6, i2 %phitmp_1_i, i2 0
  %tmp_61_1_i = icmp sgt i9 %r_V_1_1_i, 20
  %tmp_63_1_i = icmp slt i9 %r_V_1_1_i, -20
  %phitmp1_1_i = select i1 %tmp_61_1_i, i2 1, i2 -2
  %tmp_7 = or i1 %tmp_61_1_i, %tmp_63_1_i
  %flag_val_V_assign_load_1_9_i = select i1 %tmp_7, i2 %phitmp1_1_i, i2 0
  %rhs_V_2_i = zext i8 %win_val_1_V_4_load to i9
  %r_V_2_i = sub i9 %lhs_V_i, %rhs_V_2_i
  %flag_d_assign_2_i = sext i9 %r_V_2_i to i32
  %rhs_V_1_2_i = zext i8 %win_val_5_V_1_load to i9
  %r_V_1_2_i = sub i9 %lhs_V_i, %rhs_V_1_2_i
  %flag_d_assign_10_i = sext i9 %r_V_1_2_i to i32
  %tmp_55_2_i = icmp sgt i9 %r_V_2_i, 20
  %tmp_56_2_i = icmp slt i9 %r_V_2_i, -20
  %phitmp_2_i = select i1 %tmp_55_2_i, i2 1, i2 -2
  %tmp_8 = or i1 %tmp_55_2_i, %tmp_56_2_i
  %flag_val_V_assign_load_1_2_i = select i1 %tmp_8, i2 %phitmp_2_i, i2 0
  %tmp_61_2_i = icmp sgt i9 %r_V_1_2_i, 20
  %tmp_63_2_i = icmp slt i9 %r_V_1_2_i, -20
  %phitmp1_2_i = select i1 %tmp_61_2_i, i2 1, i2 -2
  %tmp_3 = or i1 %tmp_61_2_i, %tmp_63_2_i
  %flag_val_V_assign_load_1_3_i = select i1 %tmp_3, i2 %phitmp1_2_i, i2 0
  %rhs_V_3_i = zext i8 %win_val_2_V_5_load to i9
  %r_V_3_i = sub i9 %lhs_V_i, %rhs_V_3_i
  %flag_d_assign_3_i = sext i9 %r_V_3_i to i32
  %rhs_V_1_3_i = zext i8 %win_val_4_V_0_load to i9
  %r_V_1_3_i = sub i9 %lhs_V_i, %rhs_V_1_3_i
  %flag_d_assign_11_i = sext i9 %r_V_1_3_i to i32
  %tmp_55_3_i = icmp sgt i9 %r_V_3_i, 20
  %tmp_56_3_i = icmp slt i9 %r_V_3_i, -20
  %phitmp_3_i = select i1 %tmp_55_3_i, i2 1, i2 -2
  %tmp_10 = or i1 %tmp_55_3_i, %tmp_56_3_i
  %flag_val_V_assign_load_1_4_i = select i1 %tmp_10, i2 %phitmp_3_i, i2 0
  %tmp_61_3_i = icmp sgt i9 %r_V_1_3_i, 20
  %tmp_63_3_i = icmp slt i9 %r_V_1_3_i, -20
  %phitmp1_3_i = select i1 %tmp_61_3_i, i2 1, i2 -2
  %tmp_11 = or i1 %tmp_61_3_i, %tmp_63_3_i
  %flag_val_V_assign_load_1_5_i = select i1 %tmp_11, i2 %phitmp1_3_i, i2 0
  %rhs_V_4_i = zext i8 %win_val_3_V_5_load to i9
  %r_V_4_i = sub i9 %lhs_V_i, %rhs_V_4_i
  %flag_d_assign_4_i = sext i9 %r_V_4_i to i32
  %rhs_V_1_4_i = zext i8 %win_val_3_V_0_load to i9
  %r_V_1_4_i = sub i9 %lhs_V_i, %rhs_V_1_4_i
  %flag_d_assign_12_i = sext i9 %r_V_1_4_i to i32
  %tmp_55_4_i = icmp sgt i9 %r_V_4_i, 20
  %tmp_56_4_i = icmp slt i9 %r_V_4_i, -20
  %phitmp_4_i = select i1 %tmp_55_4_i, i2 1, i2 -2
  %tmp_12 = or i1 %tmp_55_4_i, %tmp_56_4_i
  %flag_val_V_assign_load_1_6_i = select i1 %tmp_12, i2 %phitmp_4_i, i2 0
  %tmp_61_4_i = icmp sgt i9 %r_V_1_4_i, 20
  %tmp_63_4_i = icmp slt i9 %r_V_1_4_i, -20
  %phitmp1_4_i = select i1 %tmp_61_4_i, i2 1, i2 -2
  %tmp_13 = or i1 %tmp_61_4_i, %tmp_63_4_i
  %flag_val_V_assign_load_1_7_i = select i1 %tmp_13, i2 %phitmp1_4_i, i2 0
  %rhs_V_5_i = zext i8 %win_val_4_V_5_load to i9
  %r_V_5_i = sub i9 %lhs_V_i, %rhs_V_5_i
  %flag_d_assign_5_i = sext i9 %r_V_5_i to i32
  %rhs_V_1_5_i = zext i8 %win_val_2_V_0_load to i9
  %r_V_1_5_i = sub i9 %lhs_V_i, %rhs_V_1_5_i
  %flag_d_assign_13_i = sext i9 %r_V_1_5_i to i32
  %tmp_55_5_i = icmp sgt i9 %r_V_5_i, 20
  %tmp_56_5_i = icmp slt i9 %r_V_5_i, -20
  %phitmp_5_i = select i1 %tmp_55_5_i, i2 1, i2 -2
  %tmp_14 = or i1 %tmp_55_5_i, %tmp_56_5_i
  %flag_val_V_assign_load_1_8_i = select i1 %tmp_14, i2 %phitmp_5_i, i2 0
  %tmp_61_5_i = icmp sgt i9 %r_V_1_5_i, 20
  %tmp_63_5_i = icmp slt i9 %r_V_1_5_i, -20
  %phitmp1_5_i = select i1 %tmp_61_5_i, i2 1, i2 -2
  %tmp_15 = or i1 %tmp_61_5_i, %tmp_63_5_i
  %flag_val_V_assign_load_1_10_i = select i1 %tmp_15, i2 %phitmp1_5_i, i2 0
  %rhs_V_6_i = zext i8 %win_val_5_V_4_load to i9
  %r_V_6_i = sub i9 %lhs_V_i, %rhs_V_6_i
  %flag_d_assign_6_i = sext i9 %r_V_6_i to i32
  %rhs_V_1_6_i = zext i8 %win_val_1_V_1_load to i9
  %r_V_1_6_i = sub i9 %lhs_V_i, %rhs_V_1_6_i
  %flag_d_assign_14_i = sext i9 %r_V_1_6_i to i32
  %tmp_55_6_i = icmp sgt i9 %r_V_6_i, 20
  %tmp_56_6_i = icmp slt i9 %r_V_6_i, -20
  %phitmp_6_i = select i1 %tmp_55_6_i, i2 1, i2 -2
  %tmp_16 = or i1 %tmp_55_6_i, %tmp_56_6_i
  %flag_val_V_assign_load_1_11_i = select i1 %tmp_16, i2 %phitmp_6_i, i2 0
  %tmp_61_6_i = icmp sgt i9 %r_V_1_6_i, 20
  %tmp_63_6_i = icmp slt i9 %r_V_1_6_i, -20
  %phitmp1_6_i = select i1 %tmp_61_6_i, i2 1, i2 -2
  %tmp_17 = or i1 %tmp_61_6_i, %tmp_63_6_i
  %flag_val_V_assign_load_1_12_i = select i1 %tmp_17, i2 %phitmp1_6_i, i2 0
  %rhs_V_7_i = zext i8 %win_val_6_V_3_load to i9
  %r_V_7_i = sub i9 %lhs_V_i, %rhs_V_7_i
  %flag_d_assign_7_i = sext i9 %r_V_7_i to i32
  %rhs_V_1_7_i = zext i8 %win_val_0_V_2_load to i9
  %r_V_1_7_i = sub i9 %lhs_V_i, %rhs_V_1_7_i
  %flag_d_assign_15_i = sext i9 %r_V_1_7_i to i32
  %tmp_55_7_i = icmp sgt i9 %r_V_7_i, 20
  %tmp_56_7_i = icmp slt i9 %r_V_7_i, -20
  %phitmp_7_i = select i1 %tmp_55_7_i, i2 1, i2 -2
  %tmp_18 = or i1 %tmp_55_7_i, %tmp_56_7_i
  %flag_val_V_assign_load_1_13_i = select i1 %tmp_18, i2 %phitmp_7_i, i2 0
  %tmp_61_7_i = icmp sgt i9 %r_V_1_7_i, 20
  %tmp_63_7_i = icmp slt i9 %r_V_1_7_i, -20
  %phitmp1_7_i = select i1 %tmp_61_7_i, i2 1, i2 -2
  %tmp_19 = or i1 %tmp_61_7_i, %tmp_63_7_i
  %flag_val_V_assign_load_1_14_i = select i1 %tmp_19, i2 %phitmp1_7_i, i2 0
  %tmp_60_0_not_i = icmp ne i2 %flag_val_V_assign_load_1_i, %flag_val_V_assign_load_1_1_i
  %tmp_62_i = icmp eq i2 %flag_val_V_assign_load_1_i, 0
  %or_cond5_i = or i1 %tmp_62_i, %tmp_60_0_not_i
  %tmp_60_1_not_i = icmp ne i2 %flag_val_V_assign_load_1_1_i, %flag_val_V_assign_load_1_2_i
  %tmp_62_1_i = icmp eq i2 %flag_val_V_assign_load_1_1_i, 0
  %or_cond6_i = or i1 %tmp_62_1_i, %tmp_60_1_not_i
  %tmp_60_2_not_i = icmp ne i2 %flag_val_V_assign_load_1_2_i, %flag_val_V_assign_load_1_4_i
  %tmp_62_2_i = icmp eq i2 %flag_val_V_assign_load_1_2_i, 0
  %or_cond7_i = or i1 %tmp_62_2_i, %tmp_60_2_not_i
  %tmp_60_3_not_i = icmp ne i2 %flag_val_V_assign_load_1_4_i, %flag_val_V_assign_load_1_6_i
  %tmp_62_3_i = icmp eq i2 %flag_val_V_assign_load_1_4_i, 0
  %or_cond8_i = or i1 %tmp_62_3_i, %tmp_60_3_not_i
  %tmp_60_4_not_i = icmp ne i2 %flag_val_V_assign_load_1_6_i, %flag_val_V_assign_load_1_8_i
  %tmp_62_4_i = icmp eq i2 %flag_val_V_assign_load_1_6_i, 0
  %or_cond9_i = or i1 %tmp_62_4_i, %tmp_60_4_not_i
  %tmp_60_5_not_i = icmp ne i2 %flag_val_V_assign_load_1_8_i, %flag_val_V_assign_load_1_11_i
  %tmp_62_5_i = icmp eq i2 %flag_val_V_assign_load_1_8_i, 0
  %or_cond10_i = or i1 %tmp_62_5_i, %tmp_60_5_not_i
  %tmp_60_6_not_i = icmp ne i2 %flag_val_V_assign_load_1_11_i, %flag_val_V_assign_load_1_13_i
  %tmp_62_6_i = icmp eq i2 %flag_val_V_assign_load_1_11_i, 0
  %or_cond11_i = or i1 %tmp_62_6_i, %tmp_60_6_not_i
  %count_1_i_0_op_op113_op_i = select i1 %or_cond5_i, i4 -8, i4 -7
  %phitmp44_op_op_cast_i_cast_cas = select i1 %or_cond7_i, i4 6, i4 7
  %tmp_35_i = or i1 %or_cond7_i, %or_cond6_i
  %count_1_i_2_op_op_i = select i1 %tmp_35_i, i4 %phitmp44_op_op_cast_i_cast_cas, i4 %count_1_i_0_op_op113_op_i
  %phitmp43_op_cast_i_cast_cast = select i1 %or_cond9_i, i4 4, i4 5
  %tmp_36_i = or i1 %or_cond9_i, %or_cond8_i
  %count_1_i_4_op_i = select i1 %tmp_36_i, i4 %phitmp43_op_cast_i_cast_cast, i4 %count_1_i_2_op_op_i
  %phitmp3_cast_i_cast_cast = select i1 %or_cond11_i, i4 2, i4 3
  %tmp_37_i = or i1 %or_cond11_i, %or_cond10_i
  %count_1_i_6_i = select i1 %tmp_37_i, i4 %phitmp3_cast_i_cast_cast, i4 %count_1_i_4_op_i
  %tmp_60_7_not_i = icmp ne i2 %flag_val_V_assign_load_1_13_i, %flag_val_V_assign_load_2_i
  %tmp_62_7_i = icmp eq i2 %flag_val_V_assign_load_2_i, 0
  %or_cond12_i = or i1 %tmp_62_7_i, %tmp_60_7_not_i
  %tmp_64_7_i = icmp ugt i4 %count_1_i_6_i, -8
  %not_or_cond12_i = xor i1 %or_cond12_i, true
  %iscorner_2_i_7_i = and i1 %tmp_64_7_i, %not_or_cond12_i
  %count_1_i_7_i = select i1 %or_cond12_i, i4 1, i4 %count_1_i_6_i
  %tmp_60_8_i = icmp ne i2 %flag_val_V_assign_load_2_i, %flag_val_V_assign_load_1_9_i
  %or_cond13_i = or i1 %tmp_60_8_i, %tmp_62_7_i
  %count_8_i = add i4 %count_1_i_7_i, 1
  %tmp_64_8_i = icmp ugt i4 %count_8_i, -8
  %phitmp4_i = add i4 %count_1_i_7_i, 2
  %not_or_cond13_i = xor i1 %or_cond13_i, true
  %p_iscorner_0_i_8_i = and i1 %tmp_64_8_i, %not_or_cond13_i
  %count_1_i_8_i = select i1 %or_cond13_i, i4 2, i4 %phitmp4_i
  %tmp_60_9_i = icmp ne i2 %flag_val_V_assign_load_1_9_i, %flag_val_V_assign_load_1_3_i
  %tmp_62_9_i = icmp eq i2 %flag_val_V_assign_load_1_9_i, 0
  %or_cond14_i = or i1 %tmp_60_9_i, %tmp_62_9_i
  %tmp_64_9_i = icmp ugt i4 %count_1_i_8_i, -8
  %not_or_cond14_i_demorgan = or i1 %tmp_60_9_i, %tmp_62_9_i
  %not_or_cond14_i = xor i1 %not_or_cond14_i_demorgan, true
  %p_iscorner_0_i_9_i = and i1 %tmp_64_9_i, %not_or_cond14_i
  %count_1_i_9_i = select i1 %or_cond14_i, i4 1, i4 %count_1_i_8_i
  %tmp_60_i = icmp ne i2 %flag_val_V_assign_load_1_3_i, %flag_val_V_assign_load_1_5_i
  %tmp_62_i_51 = icmp eq i2 %flag_val_V_assign_load_1_3_i, 0
  %or_cond15_i = or i1 %tmp_60_i, %tmp_62_i_51
  %count_i = add i4 %count_1_i_9_i, 1
  %tmp_64_i = icmp ugt i4 %count_i, -8
  %phitmp5_i = add i4 %count_1_i_9_i, 2
  %not_or_cond15_i_demorgan = or i1 %tmp_60_i, %tmp_62_i_51
  %not_or_cond15_i = xor i1 %not_or_cond15_i_demorgan, true
  %p_iscorner_0_i_i = and i1 %tmp_64_i, %not_or_cond15_i
  %count_1_i_i = select i1 %or_cond15_i, i4 2, i4 %phitmp5_i
  %tmp_60_10_i = icmp ne i2 %flag_val_V_assign_load_1_5_i, %flag_val_V_assign_load_1_7_i
  %tmp_62_8_i = icmp eq i2 %flag_val_V_assign_load_1_5_i, 0
  %or_cond16_i = or i1 %tmp_60_10_i, %tmp_62_8_i
  %tmp_64_1_i = icmp ugt i4 %count_1_i_i, -8
  %not_or_cond16_i_demorgan = or i1 %tmp_60_10_i, %tmp_62_8_i
  %not_or_cond16_i = xor i1 %not_or_cond16_i_demorgan, true
  %p_iscorner_0_i_1_i = and i1 %tmp_64_1_i, %not_or_cond16_i
  %count_1_i_1_i = select i1 %or_cond16_i, i4 1, i4 %count_1_i_i
  %tmp_60_11_i = icmp ne i2 %flag_val_V_assign_load_1_7_i, %flag_val_V_assign_load_1_10_i
  %tmp_62_10_i = icmp eq i2 %flag_val_V_assign_load_1_7_i, 0
  %or_cond17_i = or i1 %tmp_60_11_i, %tmp_62_10_i
  %count_1_i = add i4 %count_1_i_1_i, 1
  %tmp_64_2_i = icmp ugt i4 %count_1_i, -8
  %phitmp6_i = add i4 %count_1_i_1_i, 2
  %not_or_cond17_i_demorgan = or i1 %tmp_60_11_i, %tmp_62_10_i
  %not_or_cond17_i = xor i1 %not_or_cond17_i_demorgan, true
  %p_iscorner_0_i_2_i = and i1 %tmp_64_2_i, %not_or_cond17_i
  %count_1_i_2_i = select i1 %or_cond17_i, i4 2, i4 %phitmp6_i
  %tmp_60_12_i = icmp ne i2 %flag_val_V_assign_load_1_10_i, %flag_val_V_assign_load_1_12_i
  %tmp_62_11_i = icmp eq i2 %flag_val_V_assign_load_1_10_i, 0
  %or_cond18_i = or i1 %tmp_60_12_i, %tmp_62_11_i
  %tmp_64_3_i = icmp ugt i4 %count_1_i_2_i, -8
  %not_or_cond18_i_demorgan = or i1 %tmp_60_12_i, %tmp_62_11_i
  %not_or_cond18_i = xor i1 %not_or_cond18_i_demorgan, true
  %p_iscorner_0_i_3_i = and i1 %tmp_64_3_i, %not_or_cond18_i
  %count_1_i_3_i = select i1 %or_cond18_i, i4 1, i4 %count_1_i_2_i
  %count_1_i_3_cast_i = zext i4 %count_1_i_3_i to i5
  %tmp_60_13_i = icmp ne i2 %flag_val_V_assign_load_1_12_i, %flag_val_V_assign_load_1_14_i
  %tmp_62_12_i = icmp eq i2 %flag_val_V_assign_load_1_12_i, 0
  %or_cond19_i = or i1 %tmp_60_13_i, %tmp_62_12_i
  %count_2_i = add i5 %count_1_i_3_cast_i, 1
  %tmp_64_4_i = icmp ugt i5 %count_2_i, 8
  %phitmp7_i = add i5 %count_1_i_3_cast_i, 2
  %not_or_cond19_i_demorgan = or i1 %tmp_60_13_i, %tmp_62_12_i
  %not_or_cond19_i = xor i1 %not_or_cond19_i_demorgan, true
  %p_iscorner_0_i_4_i = and i1 %tmp_64_4_i, %not_or_cond19_i
  %count_1_i_4_i = select i1 %or_cond19_i, i5 2, i5 %phitmp7_i
  %tmp_60_14_i = icmp ne i2 %flag_val_V_assign_load_1_14_i, %flag_val_V_assign_load_1_i
  %or_cond20_i = or i1 %tmp_60_14_i, %tmp_62_i
  %tmp_64_5_i = icmp ugt i5 %count_1_i_4_i, 8
  %not_or_cond20_i = xor i1 %or_cond20_i, true
  %p_iscorner_0_i_5_i = and i1 %tmp_64_5_i, %not_or_cond20_i
  %count_1_i_5_i = select i1 %or_cond20_i, i5 1, i5 %count_1_i_4_i
  %count_3_i = add i5 %count_1_i_5_i, 1
  %tmp_64_6_i = icmp ugt i5 %count_3_i, 8
  %phitmp8_i = add i5 %count_1_i_5_i, 2
  %not_or_cond5_i = xor i1 %or_cond5_i, true
  %p_iscorner_0_i_6_i = and i1 %tmp_64_6_i, %not_or_cond5_i
  %count_1_i_10_i = select i1 %or_cond5_i, i5 2, i5 %phitmp8_i
  %tmp_64_10_i = icmp ugt i5 %count_1_i_10_i, 8
  %not_or_cond6_i_demorgan = or i1 %tmp_62_1_i, %tmp_60_1_not_i
  %not_or_cond6_i = xor i1 %not_or_cond6_i_demorgan, true
  %p_iscorner_0_i_7_i = and i1 %tmp_64_10_i, %not_or_cond6_i
  %count_1_i_11_i = select i1 %or_cond6_i, i5 1, i5 %count_1_i_10_i
  %count_4_i = add i5 %count_1_i_11_i, 1
  %tmp_64_11_i = icmp ugt i5 %count_4_i, 8
  %phitmp9_i = add i5 %count_1_i_11_i, 2
  %not_or_cond7_i_demorgan = or i1 %tmp_62_2_i, %tmp_60_2_not_i
  %not_or_cond7_i = xor i1 %not_or_cond7_i_demorgan, true
  %p_iscorner_0_i_10_i = and i1 %tmp_64_11_i, %not_or_cond7_i
  %count_1_i_12_i = select i1 %or_cond7_i, i5 2, i5 %phitmp9_i
  %tmp_64_12_i = icmp ugt i5 %count_1_i_12_i, 8
  %not_or_cond8_i_demorgan = or i1 %tmp_62_3_i, %tmp_60_3_not_i
  %not_or_cond8_i = xor i1 %not_or_cond8_i_demorgan, true
  %p_iscorner_0_i_11_i = and i1 %tmp_64_12_i, %not_or_cond8_i
  %count_1_i_13_i = select i1 %or_cond8_i, i5 1, i5 %count_1_i_12_i
  %count_5_i = add i5 %count_1_i_13_i, 1
  %tmp_64_13_i = icmp ugt i5 %count_5_i, 8
  %phitmp10_i = add i5 %count_1_i_13_i, 2
  %not_or_cond9_i_demorgan = or i1 %tmp_62_4_i, %tmp_60_4_not_i
  %not_or_cond9_i = xor i1 %not_or_cond9_i_demorgan, true
  %p_iscorner_0_i_12_i = and i1 %tmp_64_13_i, %not_or_cond9_i
  %count_1_i_14_i = select i1 %or_cond9_i, i5 2, i5 %phitmp10_i
  %tmp_64_14_i = icmp ugt i5 %count_1_i_14_i, 8
  %not_or_cond10_i_demorgan = or i1 %tmp_62_5_i, %tmp_60_5_not_i
  %not_or_cond10_i = xor i1 %not_or_cond10_i_demorgan, true
  %p_iscorner_0_i_13_i = and i1 %tmp_64_14_i, %not_or_cond10_i
  %count_1_i_15_i = select i1 %or_cond10_i, i5 1, i5 %count_1_i_14_i
  %count_6_i = add i5 %count_1_i_15_i, 1
  %tmp_64_15_i = icmp ugt i5 %count_6_i, 8
  %phitmp_i = add i5 %count_1_i_15_i, 2
  %not_or_cond11_i_demorgan = or i1 %tmp_62_6_i, %tmp_60_6_not_i
  %not_or_cond11_i = xor i1 %not_or_cond11_i_demorgan, true
  %p_iscorner_0_i_14_i = and i1 %tmp_64_15_i, %not_or_cond11_i
  %tmp_64_16_i1 = icmp ugt i5 %phitmp_i, 8
  %tmp = and i1 %not_or_cond11_i, %not_or_cond12_i
  %p_iscorner_0_i_15_i = and i1 %tmp, %tmp_64_16_i1
  %tmp6 = or i1 %iscorner_2_i_7_i, %p_iscorner_0_i_8_i
  %tmp7 = or i1 %p_iscorner_0_i_9_i, %p_iscorner_0_i_i
  %tmp5 = or i1 %tmp7, %tmp6
  %tmp9 = or i1 %p_iscorner_0_i_1_i, %p_iscorner_0_i_2_i
  %tmp10 = or i1 %p_iscorner_0_i_3_i, %p_iscorner_0_i_4_i
  %tmp8 = or i1 %tmp10, %tmp9
  %tmp4 = or i1 %tmp8, %tmp5
  %tmp13 = or i1 %p_iscorner_0_i_5_i, %p_iscorner_0_i_6_i
  %tmp14 = or i1 %p_iscorner_0_i_7_i, %p_iscorner_0_i_10_i
  %tmp12 = or i1 %tmp14, %tmp13
  %tmp16 = or i1 %p_iscorner_0_i_11_i, %p_iscorner_0_i_12_i
  %tmp18 = or i1 %p_iscorner_0_i_14_i, %p_iscorner_0_i_15_i
  %tmp17 = or i1 %tmp18, %p_iscorner_0_i_13_i
  %tmp15 = or i1 %tmp17, %tmp16
  %tmp11 = or i1 %tmp15, %tmp12
  %iscorner_2_i_16_i = or i1 %tmp11, %tmp4
  br i1 %iscorner_2_i_16_i, label %.preheader26.i.i.preheader.i, label %._crit_edge321.i_ifconv

.preheader26.i.i.preheader.i:                     ; preds = %_ifconv
  %tmp_67_1_i = icmp slt i9 %r_V_i_50, %r_V_2_i
  %tmp_72_1_i = select i1 %tmp_67_1_i, i9 %r_V_i_50, i9 %r_V_2_i
  %tmp_72_1_cast_i = sext i9 %tmp_72_1_i to i32
  %flag_d_min2_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_1_cast_i) nounwind
  %tmp_74_1_i = icmp sgt i9 %r_V_i_50, %r_V_2_i
  %tmp_82_1_i = select i1 %tmp_74_1_i, i9 %r_V_i_50, i9 %r_V_2_i
  %tmp_82_1_cast_i = sext i9 %tmp_82_1_i to i32
  %flag_d_max2_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_1_cast_i) nounwind
  %tmp_67_3_i = icmp slt i9 %r_V_3_i, %r_V_4_i
  %tmp_72_3_i = select i1 %tmp_67_3_i, i9 %r_V_3_i, i9 %r_V_4_i
  %tmp_72_3_cast_i = sext i9 %tmp_72_3_i to i32
  %flag_d_min2_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_3_cast_i) nounwind
  %tmp_74_3_i = icmp sgt i9 %r_V_3_i, %r_V_4_i
  %tmp_82_3_i = select i1 %tmp_74_3_i, i9 %r_V_3_i, i9 %r_V_4_i
  %tmp_82_3_cast_i = sext i9 %tmp_82_3_i to i32
  %flag_d_max2_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_3_cast_i) nounwind
  %tmp_67_5_i = icmp slt i9 %r_V_5_i, %r_V_6_i
  %tmp_72_5_i = select i1 %tmp_67_5_i, i9 %r_V_5_i, i9 %r_V_6_i
  %tmp_72_5_cast_i = sext i9 %tmp_72_5_i to i32
  %flag_d_min2_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_5_cast_i) nounwind
  %tmp_74_5_i = icmp sgt i9 %r_V_5_i, %r_V_6_i
  %tmp_82_5_i = select i1 %tmp_74_5_i, i9 %r_V_5_i, i9 %r_V_6_i
  %tmp_82_5_cast_i = sext i9 %tmp_82_5_i to i32
  %flag_d_max2_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_5_cast_i) nounwind
  %tmp_67_7_i = icmp slt i9 %r_V_7_i, %r_V_1_i
  %tmp_72_7_i = select i1 %tmp_67_7_i, i9 %r_V_7_i, i9 %r_V_1_i
  %tmp_72_7_cast_i = sext i9 %tmp_72_7_i to i32
  %flag_d_min2_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_7_cast_i) nounwind
  %tmp_74_7_i = icmp sgt i9 %r_V_7_i, %r_V_1_i
  %tmp_82_7_i = select i1 %tmp_74_7_i, i9 %r_V_7_i, i9 %r_V_1_i
  %tmp_82_7_cast_i = sext i9 %tmp_82_7_i to i32
  %flag_d_max2_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_7_cast_i) nounwind
  %tmp_67_9_i = icmp slt i9 %r_V_1_1_i, %r_V_1_2_i
  %tmp_72_9_i = select i1 %tmp_67_9_i, i9 %r_V_1_1_i, i9 %r_V_1_2_i
  %tmp_72_9_cast_i = sext i9 %tmp_72_9_i to i32
  %flag_d_min2_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_9_cast_i) nounwind
  %tmp_74_9_i = icmp sgt i9 %r_V_1_1_i, %r_V_1_2_i
  %tmp_82_9_i = select i1 %tmp_74_9_i, i9 %r_V_1_1_i, i9 %r_V_1_2_i
  %tmp_82_9_cast_i = sext i9 %tmp_82_9_i to i32
  %flag_d_max2_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_9_cast_i) nounwind
  %tmp_67_i = icmp slt i9 %r_V_1_3_i, %r_V_1_4_i
  %tmp_72_i = select i1 %tmp_67_i, i9 %r_V_1_3_i, i9 %r_V_1_4_i
  %tmp_72_cast_i = sext i9 %tmp_72_i to i32
  %flag_d_min2_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_cast_i) nounwind
  %tmp_74_i = icmp sgt i9 %r_V_1_3_i, %r_V_1_4_i
  %tmp_82_i = select i1 %tmp_74_i, i9 %r_V_1_3_i, i9 %r_V_1_4_i
  %tmp_82_cast_i = sext i9 %tmp_82_i to i32
  %flag_d_max2_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_cast_i) nounwind
  %tmp_67_2_i = icmp slt i9 %r_V_1_5_i, %r_V_1_6_i
  %tmp_72_2_i = select i1 %tmp_67_2_i, i9 %r_V_1_5_i, i9 %r_V_1_6_i
  %tmp_72_2_cast_i = sext i9 %tmp_72_2_i to i32
  %flag_d_min2_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_2_cast_i) nounwind
  %tmp_74_2_i = icmp sgt i9 %r_V_1_5_i, %r_V_1_6_i
  %tmp_82_2_i = select i1 %tmp_74_2_i, i9 %r_V_1_5_i, i9 %r_V_1_6_i
  %tmp_82_2_cast_i = sext i9 %tmp_82_2_i to i32
  %flag_d_max2_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_2_cast_i) nounwind
  %tmp_67_4_i = icmp slt i9 %r_V_1_7_i, %r_V_i
  %tmp_72_4_i = select i1 %tmp_67_4_i, i9 %r_V_1_7_i, i9 %r_V_i
  %tmp_72_4_cast_i = sext i9 %tmp_72_4_i to i32
  %flag_d_min2_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_72_4_cast_i) nounwind
  %tmp_74_4_i = icmp sgt i9 %r_V_1_7_i, %r_V_i
  %tmp_82_4_i = select i1 %tmp_74_4_i, i9 %r_V_1_7_i, i9 %r_V_i
  %tmp_82_4_cast_i = sext i9 %tmp_82_4_i to i32
  %flag_d_max2_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_82_4_cast_i) nounwind
  %tmp_71_1_i = icmp slt i32 %flag_d_min2_1, %flag_d_min2_3
  %tmp_79_1_i = select i1 %tmp_71_1_i, i32 %flag_d_min2_1, i32 %flag_d_min2_3
  %flag_d_min4_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_1_i) nounwind
  %tmp_81_1_i = icmp sgt i32 %flag_d_max2_1, %flag_d_max2_3
  %tmp_92_1_i = select i1 %tmp_81_1_i, i32 %flag_d_max2_1, i32 %flag_d_max2_3
  %flag_d_max4_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_1_i) nounwind
  %tmp_71_3_i = icmp slt i32 %flag_d_min2_3, %flag_d_min2_5
  %tmp_79_3_i = select i1 %tmp_71_3_i, i32 %flag_d_min2_3, i32 %flag_d_min2_5
  %flag_d_min4_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_3_i) nounwind
  %tmp_81_3_i = icmp sgt i32 %flag_d_max2_3, %flag_d_max2_5
  %tmp_92_3_i = select i1 %tmp_81_3_i, i32 %flag_d_max2_3, i32 %flag_d_max2_5
  %flag_d_max4_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_3_i) nounwind
  %tmp_71_5_i = icmp slt i32 %flag_d_min2_5, %flag_d_min2_7
  %tmp_79_5_i = select i1 %tmp_71_5_i, i32 %flag_d_min2_5, i32 %flag_d_min2_7
  %flag_d_min4_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_5_i) nounwind
  %tmp_81_5_i = icmp sgt i32 %flag_d_max2_5, %flag_d_max2_7
  %tmp_92_5_i = select i1 %tmp_81_5_i, i32 %flag_d_max2_5, i32 %flag_d_max2_7
  %flag_d_max4_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_5_i) nounwind
  %tmp_71_7_i = icmp slt i32 %flag_d_min2_7, %flag_d_min2_9
  %tmp_79_7_i = select i1 %tmp_71_7_i, i32 %flag_d_min2_7, i32 %flag_d_min2_9
  %flag_d_min4_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_7_i) nounwind
  %tmp_81_7_i = icmp sgt i32 %flag_d_max2_7, %flag_d_max2_9
  %tmp_92_7_i = select i1 %tmp_81_7_i, i32 %flag_d_max2_7, i32 %flag_d_max2_9
  %flag_d_max4_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_7_i) nounwind
  %tmp_71_9_i = icmp slt i32 %flag_d_min2_9, %flag_d_min2_11
  %tmp_79_9_i = select i1 %tmp_71_9_i, i32 %flag_d_min2_9, i32 %flag_d_min2_11
  %flag_d_min4_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_9_i) nounwind
  %tmp_81_9_i = icmp sgt i32 %flag_d_max2_9, %flag_d_max2_11
  %tmp_92_9_i = select i1 %tmp_81_9_i, i32 %flag_d_max2_9, i32 %flag_d_max2_11
  %flag_d_max4_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_9_i) nounwind
  %tmp_71_i = icmp slt i32 %flag_d_min2_11, %flag_d_min2_13
  %tmp_79_i = select i1 %tmp_71_i, i32 %flag_d_min2_11, i32 %flag_d_min2_13
  %flag_d_min4_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_i) nounwind
  %tmp_81_i = icmp sgt i32 %flag_d_max2_11, %flag_d_max2_13
  %tmp_92_i = select i1 %tmp_81_i, i32 %flag_d_max2_11, i32 %flag_d_max2_13
  %flag_d_max4_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_i) nounwind
  %tmp_71_2_i = icmp slt i32 %flag_d_min2_13, %flag_d_min2_15
  %tmp_79_2_i = select i1 %tmp_71_2_i, i32 %flag_d_min2_13, i32 %flag_d_min2_15
  %flag_d_min4_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_2_i) nounwind
  %tmp_81_2_i = icmp sgt i32 %flag_d_max2_13, %flag_d_max2_15
  %tmp_92_2_i = select i1 %tmp_81_2_i, i32 %flag_d_max2_13, i32 %flag_d_max2_15
  %flag_d_max4_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_2_i) nounwind
  %tmp_71_4_i = icmp slt i32 %flag_d_min2_15, %flag_d_min2_1
  %tmp_79_4_i = select i1 %tmp_71_4_i, i32 %flag_d_min2_15, i32 %flag_d_min2_1
  %flag_d_min4_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_79_4_i) nounwind
  %tmp_81_4_i = icmp sgt i32 %flag_d_max2_15, %flag_d_max2_1
  %tmp_92_4_i = select i1 %tmp_81_4_i, i32 %flag_d_max2_15, i32 %flag_d_max2_1
  %flag_d_max4_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_92_4_i) nounwind
  %tmp_78_1_i = icmp slt i32 %flag_d_min4_1, %flag_d_min4_5
  %tmp_89_1_i = select i1 %tmp_78_1_i, i32 %flag_d_min4_1, i32 %flag_d_min4_5
  %flag_d_min8_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_1_i) nounwind
  %tmp_91_1_i = icmp sgt i32 %flag_d_max4_1, %flag_d_max4_5
  %tmp_104_1_i = select i1 %tmp_91_1_i, i32 %flag_d_max4_1, i32 %flag_d_max4_5
  %flag_d_max8_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_1_i) nounwind
  %tmp_78_3_i = icmp slt i32 %flag_d_min4_3, %flag_d_min4_7
  %tmp_89_3_i = select i1 %tmp_78_3_i, i32 %flag_d_min4_3, i32 %flag_d_min4_7
  %flag_d_min8_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_3_i) nounwind
  %tmp_91_3_i = icmp sgt i32 %flag_d_max4_3, %flag_d_max4_7
  %tmp_104_3_i = select i1 %tmp_91_3_i, i32 %flag_d_max4_3, i32 %flag_d_max4_7
  %flag_d_max8_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_3_i) nounwind
  %tmp_78_5_i = icmp slt i32 %flag_d_min4_5, %flag_d_min4_9
  %tmp_89_5_i = select i1 %tmp_78_5_i, i32 %flag_d_min4_5, i32 %flag_d_min4_9
  %flag_d_min8_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_5_i) nounwind
  %tmp_91_5_i = icmp sgt i32 %flag_d_max4_5, %flag_d_max4_9
  %tmp_104_5_i = select i1 %tmp_91_5_i, i32 %flag_d_max4_5, i32 %flag_d_max4_9
  %flag_d_max8_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_5_i) nounwind
  %tmp_78_7_i = icmp slt i32 %flag_d_min4_7, %flag_d_min4_11
  %tmp_89_7_i = select i1 %tmp_78_7_i, i32 %flag_d_min4_7, i32 %flag_d_min4_11
  %flag_d_min8_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_7_i) nounwind
  %tmp_91_7_i = icmp sgt i32 %flag_d_max4_7, %flag_d_max4_11
  %tmp_104_7_i = select i1 %tmp_91_7_i, i32 %flag_d_max4_7, i32 %flag_d_max4_11
  %flag_d_max8_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_7_i) nounwind
  %tmp_78_9_i = icmp slt i32 %flag_d_min4_9, %flag_d_min4_13
  %tmp_89_9_i = select i1 %tmp_78_9_i, i32 %flag_d_min4_9, i32 %flag_d_min4_13
  %flag_d_min8_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_9_i) nounwind
  %tmp_91_9_i = icmp sgt i32 %flag_d_max4_9, %flag_d_max4_13
  %tmp_104_9_i = select i1 %tmp_91_9_i, i32 %flag_d_max4_9, i32 %flag_d_max4_13
  %flag_d_max8_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_9_i) nounwind
  %tmp_78_i = icmp slt i32 %flag_d_min4_11, %flag_d_min4_15
  %tmp_89_i = select i1 %tmp_78_i, i32 %flag_d_min4_11, i32 %flag_d_min4_15
  %tmp_90_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_i) nounwind
  %tmp_91_i = icmp sgt i32 %flag_d_max4_11, %flag_d_max4_15
  %tmp_104_i = select i1 %tmp_91_i, i32 %flag_d_max4_11, i32 %flag_d_max4_15
  %tmp_105_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_i) nounwind
  %tmp_78_2_i = icmp slt i32 %flag_d_min4_13, %flag_d_min4_1
  %tmp_89_2_i = select i1 %tmp_78_2_i, i32 %flag_d_min4_13, i32 %flag_d_min4_1
  %tmp_90_1_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_2_i) nounwind
  %tmp_91_2_i = icmp sgt i32 %flag_d_max4_13, %flag_d_max4_1
  %tmp_104_2_i = select i1 %tmp_91_2_i, i32 %flag_d_max4_13, i32 %flag_d_max4_1
  %tmp_105_1_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_2_i) nounwind
  %tmp_78_4_i = icmp slt i32 %flag_d_min4_15, %flag_d_min4_3
  %tmp_89_4_i = select i1 %tmp_78_4_i, i32 %flag_d_min4_15, i32 %flag_d_min4_3
  %tmp_90_2_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_89_4_i) nounwind
  %tmp_91_4_i = icmp sgt i32 %flag_d_max4_15, %flag_d_max4_3
  %tmp_104_4_i = select i1 %tmp_91_4_i, i32 %flag_d_max4_15, i32 %flag_d_max4_3
  %tmp_105_2_i = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_104_4_i) nounwind
  %tmp_88_i = icmp slt i32 %flag_d_min8_1, %flag_d_assign_16_i
  %flag_d_min8_1_0_flag_d_assign_s = select i1 %tmp_88_i, i32 %flag_d_min8_1, i32 %flag_d_assign_16_i
  %tmp_20 = trunc i32 %flag_d_min8_1_0_flag_d_assign_s to i8
  %tmp_96_i = icmp slt i32 %flag_d_min8_1_0_flag_d_assign_s, 20
  %p_flag_d_min8_1_0_flag_d_assign = select i1 %tmp_96_i, i8 20, i8 %tmp_20
  %p_flag_d_min8_1_0_flag_d_assign_1 = zext i8 %p_flag_d_min8_1_0_flag_d_assign to i32
  %tmp_110_i = icmp slt i32 %flag_d_min8_1, %flag_d_assign_9_i
  %flag_d_min8_1_1 = select i1 %tmp_110_i, i32 %flag_d_min8_1, i32 %flag_d_assign_9_i
  %tmp_21 = trunc i32 %flag_d_min8_1_1 to i8
  %tmp_112_i = icmp sgt i32 %p_flag_d_min8_1_0_flag_d_assign_1, %flag_d_min8_1_1
  %sel_SEBB_i = select i1 %tmp_112_i, i8 %p_flag_d_min8_1_0_flag_d_assign, i8 %tmp_21
  %sel_SEBB_cast_i = zext i8 %sel_SEBB_i to i32
  %tmp_88_1_i = icmp slt i32 %flag_d_min8_3, %flag_d_assign_2_i
  %flag_d_min8_3_1 = select i1 %tmp_88_1_i, i32 %flag_d_min8_3, i32 %flag_d_assign_2_i
  %tmp_22 = trunc i32 %flag_d_min8_3_1 to i8
  %tmp_96_1_i = icmp sgt i32 %sel_SEBB_cast_i, %flag_d_min8_3_1
  %flag_d_min8_3_2 = select i1 %tmp_96_1_i, i8 %sel_SEBB_i, i8 %tmp_22
  %a0_cast_i = zext i8 %flag_d_min8_3_2 to i32
  %tmp_110_1_i = icmp slt i32 %flag_d_min8_3, %flag_d_assign_11_i
  %flag_d_min8_3_3 = select i1 %tmp_110_1_i, i32 %flag_d_min8_3, i32 %flag_d_assign_11_i
  %tmp_23 = trunc i32 %flag_d_min8_3_3 to i8
  %tmp_112_1_i = icmp sgt i32 %a0_cast_i, %flag_d_min8_3_3
  %a0_flag_d_min8_3_2_i = select i1 %tmp_112_1_i, i8 %flag_d_min8_3_2, i8 %tmp_23
  %a0_flag_d_min8_3_2_cast_i = zext i8 %a0_flag_d_min8_3_2_i to i32
  %tmp_88_2_i = icmp slt i32 %flag_d_min8_5, %flag_d_assign_4_i
  %flag_d_min8_5_1 = select i1 %tmp_88_2_i, i32 %flag_d_min8_5, i32 %flag_d_assign_4_i
  %tmp_24 = trunc i32 %flag_d_min8_5_1 to i8
  %tmp_96_2_i = icmp sgt i32 %a0_flag_d_min8_3_2_cast_i, %flag_d_min8_5_1
  %flag_d_min8_5_2 = select i1 %tmp_96_2_i, i8 %a0_flag_d_min8_3_2_i, i8 %tmp_24
  %a0_2_cast_i = zext i8 %flag_d_min8_5_2 to i32
  %tmp_110_2_i = icmp slt i32 %flag_d_min8_5, %flag_d_assign_13_i
  %flag_d_min8_5_3 = select i1 %tmp_110_2_i, i32 %flag_d_min8_5, i32 %flag_d_assign_13_i
  %tmp_25 = trunc i32 %flag_d_min8_5_3 to i8
  %tmp_112_2_i = icmp sgt i32 %a0_2_cast_i, %flag_d_min8_5_3
  %a0_2_flag_d_min8_5_2_i = select i1 %tmp_112_2_i, i8 %flag_d_min8_5_2, i8 %tmp_25
  %a0_2_flag_d_min8_5_2_cast_i = zext i8 %a0_2_flag_d_min8_5_2_i to i32
  %tmp_88_3_i = icmp slt i32 %flag_d_min8_7, %flag_d_assign_6_i
  %flag_d_min8_7_1 = select i1 %tmp_88_3_i, i32 %flag_d_min8_7, i32 %flag_d_assign_6_i
  %tmp_26 = trunc i32 %flag_d_min8_7_1 to i8
  %tmp_96_3_i = icmp sgt i32 %a0_2_flag_d_min8_5_2_cast_i, %flag_d_min8_7_1
  %flag_d_min8_7_2 = select i1 %tmp_96_3_i, i8 %a0_2_flag_d_min8_5_2_i, i8 %tmp_26
  %a0_3_cast_i = zext i8 %flag_d_min8_7_2 to i32
  %tmp_110_3_i = icmp slt i32 %flag_d_min8_7, %flag_d_assign_15_i
  %flag_d_min8_7_3 = select i1 %tmp_110_3_i, i32 %flag_d_min8_7, i32 %flag_d_assign_15_i
  %tmp_27 = trunc i32 %flag_d_min8_7_3 to i8
  %tmp_112_3_i = icmp sgt i32 %a0_3_cast_i, %flag_d_min8_7_3
  %a0_3_flag_d_min8_7_2_i = select i1 %tmp_112_3_i, i8 %flag_d_min8_7_2, i8 %tmp_27
  %a0_3_flag_d_min8_7_2_cast_i = zext i8 %a0_3_flag_d_min8_7_2_i to i32
  %tmp_88_4_i = icmp slt i32 %flag_d_min8_9, %flag_d_assign_8_i
  %flag_d_min8_9_1 = select i1 %tmp_88_4_i, i32 %flag_d_min8_9, i32 %flag_d_assign_8_i
  %tmp_28 = trunc i32 %flag_d_min8_9_1 to i8
  %tmp_96_4_i = icmp sgt i32 %a0_3_flag_d_min8_7_2_cast_i, %flag_d_min8_9_1
  %flag_d_min8_9_2 = select i1 %tmp_96_4_i, i8 %a0_3_flag_d_min8_7_2_i, i8 %tmp_28
  %a0_4_cast_i = zext i8 %flag_d_min8_9_2 to i32
  %tmp_110_4_i = icmp slt i32 %flag_d_min8_9, %flag_d_assign_1_i
  %flag_d_min8_9_3 = select i1 %tmp_110_4_i, i32 %flag_d_min8_9, i32 %flag_d_assign_1_i
  %tmp_29 = trunc i32 %flag_d_min8_9_3 to i8
  %tmp_112_4_i = icmp sgt i32 %a0_4_cast_i, %flag_d_min8_9_3
  %a0_4_flag_d_min8_9_2_i = select i1 %tmp_112_4_i, i8 %flag_d_min8_9_2, i8 %tmp_29
  %a0_4_flag_d_min8_9_2_cast_i = zext i8 %a0_4_flag_d_min8_9_2_i to i32
  %tmp_88_5_i = icmp slt i32 %tmp_90_i, %flag_d_assign_10_i
  %tmp_95_5_i = select i1 %tmp_88_5_i, i32 %tmp_90_i, i32 %flag_d_assign_10_i
  %tmp_30 = trunc i32 %tmp_95_5_i to i8
  %tmp_96_5_i = icmp sgt i32 %a0_4_flag_d_min8_9_2_cast_i, %tmp_95_5_i
  %a0_5_i = select i1 %tmp_96_5_i, i8 %a0_4_flag_d_min8_9_2_i, i8 %tmp_30
  %a0_5_cast_i = zext i8 %a0_5_i to i32
  %tmp_110_5_i = icmp slt i32 %tmp_90_i, %flag_d_assign_3_i
  %tmp_111_5_i = select i1 %tmp_110_5_i, i32 %tmp_90_i, i32 %flag_d_assign_3_i
  %tmp_31 = trunc i32 %tmp_111_5_i to i8
  %tmp_112_5_i = icmp sgt i32 %a0_5_cast_i, %tmp_111_5_i
  %a0_5_tmp_111_5_i = select i1 %tmp_112_5_i, i8 %a0_5_i, i8 %tmp_31
  %a0_5_tmp_111_5_cast_i = zext i8 %a0_5_tmp_111_5_i to i32
  %tmp_88_6_i = icmp slt i32 %tmp_90_1_i, %flag_d_assign_12_i
  %tmp_95_6_i = select i1 %tmp_88_6_i, i32 %tmp_90_1_i, i32 %flag_d_assign_12_i
  %tmp_32 = trunc i32 %tmp_95_6_i to i8
  %tmp_96_6_i = icmp sgt i32 %a0_5_tmp_111_5_cast_i, %tmp_95_6_i
  %a0_6_i = select i1 %tmp_96_6_i, i8 %a0_5_tmp_111_5_i, i8 %tmp_32
  %a0_6_cast_i = zext i8 %a0_6_i to i32
  %tmp_110_6_i = icmp slt i32 %tmp_90_1_i, %flag_d_assign_5_i
  %tmp_111_6_i = select i1 %tmp_110_6_i, i32 %tmp_90_1_i, i32 %flag_d_assign_5_i
  %tmp_33 = trunc i32 %tmp_111_6_i to i8
  %tmp_112_6_i = icmp sgt i32 %a0_6_cast_i, %tmp_111_6_i
  %a0_6_tmp_111_6_i = select i1 %tmp_112_6_i, i8 %a0_6_i, i8 %tmp_33
  %a0_6_tmp_111_6_cast_i = zext i8 %a0_6_tmp_111_6_i to i32
  %tmp_88_7_i = icmp slt i32 %tmp_90_2_i, %flag_d_assign_14_i
  %tmp_95_7_i = select i1 %tmp_88_7_i, i32 %tmp_90_2_i, i32 %flag_d_assign_14_i
  %tmp_34 = trunc i32 %tmp_95_7_i to i8
  %tmp_96_7_i = icmp sgt i32 %a0_6_tmp_111_6_cast_i, %tmp_95_7_i
  %a0_7_i = select i1 %tmp_96_7_i, i8 %a0_6_tmp_111_6_i, i8 %tmp_34
  %a0_7_cast_i = zext i8 %a0_7_i to i32
  %tmp_110_7_i = icmp slt i32 %tmp_90_2_i, %flag_d_assign_7_i
  %tmp_111_7_i = select i1 %tmp_110_7_i, i32 %tmp_90_2_i, i32 %flag_d_assign_7_i
  %tmp_35 = trunc i32 %tmp_111_7_i to i8
  %tmp_112_7_i = icmp sgt i32 %a0_7_cast_i, %tmp_111_7_i
  %a0_7_tmp_111_7_i = select i1 %tmp_112_7_i, i8 %a0_7_i, i8 %tmp_35
  %a0_7_tmp_111_7_cast_i = zext i8 %a0_7_tmp_111_7_i to i9
  %tmp_100_i = icmp sgt i32 %flag_d_max8_1, %flag_d_assign_16_i
  %flag_d_max8_1_1 = select i1 %tmp_100_i, i32 %flag_d_max8_1, i32 %flag_d_assign_16_i
  %tmp_36 = trunc i32 %flag_d_max8_1_1 to i9
  %tmp_107_i = icmp sgt i32 %flag_d_max8_1_1, -20
  %flag_d_max8_1_2 = select i1 %tmp_107_i, i9 -20, i9 %tmp_36
  %b0_cast_i = sext i9 %flag_d_max8_1_2 to i32
  %tmp_115_i = icmp sgt i32 %flag_d_max8_1, %flag_d_assign_9_i
  %flag_d_max8_1_3 = select i1 %tmp_115_i, i32 %flag_d_max8_1, i32 %flag_d_assign_9_i
  %tmp_37 = trunc i32 %flag_d_max8_1_3 to i9
  %tmp_119_i = icmp slt i32 %b0_cast_i, %flag_d_max8_1_3
  %b0_flag_d_max8_1_2_i = select i1 %tmp_119_i, i9 %flag_d_max8_1_2, i9 %tmp_37
  %b0_flag_d_max8_1_2_cast_i = sext i9 %b0_flag_d_max8_1_2_i to i32
  %tmp_100_1_i = icmp sgt i32 %flag_d_max8_3, %flag_d_assign_2_i
  %flag_d_max8_3_1 = select i1 %tmp_100_1_i, i32 %flag_d_max8_3, i32 %flag_d_assign_2_i
  %tmp_38 = trunc i32 %flag_d_max8_3_1 to i9
  %tmp_107_1_i = icmp slt i32 %b0_flag_d_max8_1_2_cast_i, %flag_d_max8_3_1
  %flag_d_max8_3_2 = select i1 %tmp_107_1_i, i9 %b0_flag_d_max8_1_2_i, i9 %tmp_38
  %b0_cast_i_52 = sext i9 %flag_d_max8_3_2 to i32
  %tmp_115_1_i = icmp sgt i32 %flag_d_max8_3, %flag_d_assign_11_i
  %flag_d_max8_3_3 = select i1 %tmp_115_1_i, i32 %flag_d_max8_3, i32 %flag_d_assign_11_i
  %tmp_39 = trunc i32 %flag_d_max8_3_3 to i9
  %tmp_119_1_i = icmp slt i32 %b0_cast_i_52, %flag_d_max8_3_3
  %b0_flag_d_max8_3_2_i = select i1 %tmp_119_1_i, i9 %flag_d_max8_3_2, i9 %tmp_39
  %b0_flag_d_max8_3_2_cast_i = sext i9 %b0_flag_d_max8_3_2_i to i32
  %tmp_100_2_i = icmp sgt i32 %flag_d_max8_5, %flag_d_assign_4_i
  %flag_d_max8_5_1 = select i1 %tmp_100_2_i, i32 %flag_d_max8_5, i32 %flag_d_assign_4_i
  %tmp_40 = trunc i32 %flag_d_max8_5_1 to i9
  %tmp_107_2_i = icmp slt i32 %b0_flag_d_max8_3_2_cast_i, %flag_d_max8_5_1
  %flag_d_max8_5_2 = select i1 %tmp_107_2_i, i9 %b0_flag_d_max8_3_2_i, i9 %tmp_40
  %b0_2_cast_i = sext i9 %flag_d_max8_5_2 to i32
  %tmp_115_2_i = icmp sgt i32 %flag_d_max8_5, %flag_d_assign_13_i
  %flag_d_max8_5_3 = select i1 %tmp_115_2_i, i32 %flag_d_max8_5, i32 %flag_d_assign_13_i
  %tmp_41 = trunc i32 %flag_d_max8_5_3 to i9
  %tmp_119_2_i = icmp slt i32 %b0_2_cast_i, %flag_d_max8_5_3
  %b0_2_flag_d_max8_5_2_i = select i1 %tmp_119_2_i, i9 %flag_d_max8_5_2, i9 %tmp_41
  %b0_2_flag_d_max8_5_2_cast_i = sext i9 %b0_2_flag_d_max8_5_2_i to i32
  %tmp_100_3_i = icmp sgt i32 %flag_d_max8_7, %flag_d_assign_6_i
  %flag_d_max8_7_1 = select i1 %tmp_100_3_i, i32 %flag_d_max8_7, i32 %flag_d_assign_6_i
  %tmp_42 = trunc i32 %flag_d_max8_7_1 to i9
  %tmp_107_3_i = icmp slt i32 %b0_2_flag_d_max8_5_2_cast_i, %flag_d_max8_7_1
  %flag_d_max8_7_2 = select i1 %tmp_107_3_i, i9 %b0_2_flag_d_max8_5_2_i, i9 %tmp_42
  %b0_3_cast_i = sext i9 %flag_d_max8_7_2 to i32
  %tmp_115_3_i = icmp sgt i32 %flag_d_max8_7, %flag_d_assign_15_i
  %flag_d_max8_7_3 = select i1 %tmp_115_3_i, i32 %flag_d_max8_7, i32 %flag_d_assign_15_i
  %tmp_43 = trunc i32 %flag_d_max8_7_3 to i9
  %tmp_119_3_i = icmp slt i32 %b0_3_cast_i, %flag_d_max8_7_3
  %b0_3_flag_d_max8_7_2_i = select i1 %tmp_119_3_i, i9 %flag_d_max8_7_2, i9 %tmp_43
  %b0_3_flag_d_max8_7_2_cast_i = sext i9 %b0_3_flag_d_max8_7_2_i to i32
  %tmp_100_4_i = icmp sgt i32 %flag_d_max8_9, %flag_d_assign_8_i
  %flag_d_max8_9_1 = select i1 %tmp_100_4_i, i32 %flag_d_max8_9, i32 %flag_d_assign_8_i
  %tmp_44 = trunc i32 %flag_d_max8_9_1 to i9
  %tmp_107_4_i = icmp slt i32 %b0_3_flag_d_max8_7_2_cast_i, %flag_d_max8_9_1
  %flag_d_max8_9_2 = select i1 %tmp_107_4_i, i9 %b0_3_flag_d_max8_7_2_i, i9 %tmp_44
  %b0_4_cast_i = sext i9 %flag_d_max8_9_2 to i32
  %tmp_115_4_i = icmp sgt i32 %flag_d_max8_9, %flag_d_assign_1_i
  %flag_d_max8_9_3 = select i1 %tmp_115_4_i, i32 %flag_d_max8_9, i32 %flag_d_assign_1_i
  %tmp_45 = trunc i32 %flag_d_max8_9_3 to i9
  %tmp_119_4_i = icmp slt i32 %b0_4_cast_i, %flag_d_max8_9_3
  %b0_4_flag_d_max8_9_2_i = select i1 %tmp_119_4_i, i9 %flag_d_max8_9_2, i9 %tmp_45
  %b0_4_flag_d_max8_9_2_cast_i = sext i9 %b0_4_flag_d_max8_9_2_i to i32
  %tmp_100_5_i = icmp sgt i32 %tmp_105_i, %flag_d_assign_10_i
  %tmp_106_5_i = select i1 %tmp_100_5_i, i32 %tmp_105_i, i32 %flag_d_assign_10_i
  %tmp_46 = trunc i32 %tmp_106_5_i to i9
  %tmp_107_5_i = icmp slt i32 %b0_4_flag_d_max8_9_2_cast_i, %tmp_106_5_i
  %b0_5_i = select i1 %tmp_107_5_i, i9 %b0_4_flag_d_max8_9_2_i, i9 %tmp_46
  %b0_5_cast_i = sext i9 %b0_5_i to i32
  %tmp_115_5_i = icmp sgt i32 %tmp_105_i, %flag_d_assign_3_i
  %tmp_118_5_i = select i1 %tmp_115_5_i, i32 %tmp_105_i, i32 %flag_d_assign_3_i
  %tmp_47 = trunc i32 %tmp_118_5_i to i9
  %tmp_119_5_i = icmp slt i32 %b0_5_cast_i, %tmp_118_5_i
  %b0_5_tmp_118_5_i = select i1 %tmp_119_5_i, i9 %b0_5_i, i9 %tmp_47
  %b0_5_tmp_118_5_cast_i = sext i9 %b0_5_tmp_118_5_i to i32
  %tmp_100_6_i = icmp sgt i32 %tmp_105_1_i, %flag_d_assign_12_i
  %tmp_106_6_i = select i1 %tmp_100_6_i, i32 %tmp_105_1_i, i32 %flag_d_assign_12_i
  %tmp_48 = trunc i32 %tmp_106_6_i to i9
  %tmp_107_6_i = icmp slt i32 %b0_5_tmp_118_5_cast_i, %tmp_106_6_i
  %b0_6_i = select i1 %tmp_107_6_i, i9 %b0_5_tmp_118_5_i, i9 %tmp_48
  %b0_6_cast_i = sext i9 %b0_6_i to i32
  %tmp_115_6_i = icmp sgt i32 %tmp_105_1_i, %flag_d_assign_5_i
  %tmp_118_6_i = select i1 %tmp_115_6_i, i32 %tmp_105_1_i, i32 %flag_d_assign_5_i
  %tmp_49 = trunc i32 %tmp_118_6_i to i9
  %tmp_119_6_i = icmp slt i32 %b0_6_cast_i, %tmp_118_6_i
  %b0_6_tmp_118_6_i = select i1 %tmp_119_6_i, i9 %b0_6_i, i9 %tmp_49
  %b0_6_tmp_118_6_cast_i = sext i9 %b0_6_tmp_118_6_i to i32
  %tmp_100_7_i = icmp sgt i32 %tmp_105_2_i, %flag_d_assign_14_i
  %tmp_106_7_i = select i1 %tmp_100_7_i, i32 %tmp_105_2_i, i32 %flag_d_assign_14_i
  %tmp_50 = trunc i32 %tmp_106_7_i to i9
  %tmp_107_7_i = icmp slt i32 %b0_6_tmp_118_6_cast_i, %tmp_106_7_i
  %b0_7_i = select i1 %tmp_107_7_i, i9 %b0_6_tmp_118_6_i, i9 %tmp_50
  %b0_7_cast_i = sext i9 %b0_7_i to i32
  %tmp_115_7_i = icmp sgt i32 %tmp_105_2_i, %flag_d_assign_7_i
  %tmp_118_7_i = select i1 %tmp_115_7_i, i32 %tmp_105_2_i, i32 %flag_d_assign_7_i
  %tmp_51 = trunc i32 %tmp_118_7_i to i9
  %tmp_119_7_i = icmp slt i32 %b0_7_cast_i, %tmp_118_7_i
  %b0_7_tmp_118_7_i = select i1 %tmp_119_7_i, i9 %b0_7_i, i9 %tmp_51
  %tmp_12_i = sub i9 0, %b0_7_tmp_118_7_i
  %tmp_52 = trunc i9 %tmp_12_i to i8
  %tmp_13_i = icmp sgt i9 %a0_7_tmp_111_7_cast_i, %tmp_12_i
  %tmp_40_v_i = select i1 %tmp_13_i, i8 %a0_7_tmp_111_7_i, i8 %tmp_52
  %phitmp2_i = add i8 -1, %tmp_40_v_i
  br label %._crit_edge321.i_ifconv

._crit_edge321.i_ifconv:                          ; preds = %.preheader26.i.i.preheader.i, %_ifconv, %.preheader.preheader.0.i
  %core_1_i = phi i8 [ 0, %.preheader.preheader.0.i ], [ %phitmp2_i, %.preheader26.i.i.preheader.i ], [ 0, %_ifconv ]
  %core_win_val_2_V_1_load = load i16* %core_win_val_2_V_1
  %core_win_val_2_V_0_load = load i16* %core_win_val_2_V_0
  %core_win_val_1_V_1_load = load i16* %core_win_val_1_V_1
  %core_win_val_1_V_0_load = load i16* %core_win_val_1_V_0
  %core_win_val_0_V_1_load = load i16* %core_win_val_0_V_1
  %core_win_val_0_V_0_load = load i16* %core_win_val_0_V_0
  %core_win_val_2_V_2 = select i1 %or_cond_i, i8 %core_1_i, i8 0
  %core_win_val_2_V_2_cast_i = zext i8 %core_win_val_2_V_2 to i16
  store i8 %core_win_val_2_V_2, i8* %core_buf_val_1_V_addr, align 1
  %tmp_14_i = icmp ne i16 %core_win_val_1_V_1_load, 0
  %tmp_15_i = icmp ugt i11 %p_1_i, 6
  %tmp_121_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_0_V_0_load
  %tmp_121_1_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_0_V_1_load
  %tmp_121_2_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_0_V_2
  %tmp_124_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_2_V_0_load
  %tmp_124_1_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_2_V_1_load
  %tmp_124_2_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_2_V_2_cast_i
  %tmp_16_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_1_V_0_load
  %tmp_17_i = icmp sgt i16 %core_win_val_1_V_1_load, %core_win_val_1_V_2
  %tmp20 = and i1 %tmp_14_i, %tmp_4_i
  %tmp22 = and i1 %tmp_121_i, %tmp_121_1_i
  %tmp21 = and i1 %tmp22, %tmp_15_i
  %tmp19 = and i1 %tmp21, %tmp20
  %tmp25 = and i1 %tmp_124_i, %tmp_124_1_i
  %tmp24 = and i1 %tmp25, %tmp_121_2_i
  %tmp27 = and i1 %tmp_17_i, %tmp_16_i
  %tmp26 = and i1 %tmp27, %tmp_124_2_i
  %tmp23 = and i1 %tmp26, %tmp24
  %tmp_2 = and i1 %tmp23, %tmp19
  %tmp_54 = select i1 %tmp_2, i8 -1, i8 0
  %tmp_53 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %p_1_i, i32 2, i32 10)
  %icmp1 = icmp eq i9 %tmp_53, 0
  %or_cond4_i = or i1 %icmp, %icmp1
  br i1 %or_cond4_i, label %._crit_edge327.i, label %4

; <label>:4                                       ; preds = %._crit_edge321.i_ifconv
  %tmp_41_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1861)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_mask_data_stream_V, i8 %tmp_54)
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1861, i32 %tmp_41_i)
  br label %._crit_edge327.i

._crit_edge327.i:                                 ; preds = %4, %._crit_edge321.i_ifconv
  %core_win_val_2_V_1_load_1 = load i16* %core_win_val_2_V_1
  %core_win_val_1_V_1_load_1 = load i16* %core_win_val_1_V_1
  %core_win_val_0_V_1_load_1 = load i16* %core_win_val_0_V_1
  %empty_54 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_32_i)
  store i16 %core_win_val_0_V_1_load_1, i16* %core_win_val_0_V_0
  store i16 %core_win_val_0_V_2, i16* %core_win_val_0_V_1
  store i16 %core_win_val_1_V_1_load_1, i16* %core_win_val_1_V_0
  store i16 %core_win_val_1_V_2, i16* %core_win_val_1_V_1
  store i16 %core_win_val_2_V_1_load_1, i16* %core_win_val_2_V_0
  store i16 %core_win_val_2_V_2_cast_i, i16* %core_win_val_2_V_1
  br label %2

; <label>:5                                       ; preds = %2
  %empty_55 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %0

"FAST_t_opr<16, 7, 0, 1080, 1920>.exit":          ; preds = %0
  ret void
}

define internal fastcc void @image_filter_Duplicate(i11 %rows, i11 %cols, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %dst1_data_stream_0_V, i8* %dst1_data_stream_1_V, i8* %dst2_data_stream_0_V, i8* %dst2_data_stream_1_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %3, %entry
  %p_i = phi i11 [ 0, %entry ], [ %i_V, %3 ]
  %exitcond1_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond1_i, label %"Duplicate<1080, 1920, 2048, 2048>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit.i", %1
  %p_6_i = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit.i" ]
  %exitcond_i = icmp eq i11 %p_6_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_6_i, 1
  br i1 %exitcond_i, label %3, label %"operator>>.exit.i"

"operator>>.exit.i":                              ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_44_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_45_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1824)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_56 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_0_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_1_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1824, i32 %tmp_45_i)
  %tmp_48_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1832)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_0_V, i8 %tmp_56)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_1_V, i8 %tmp)
  %empty_56 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1832, i32 %tmp_48_i)
  %tmp_53_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1832)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_0_V, i8 %tmp_56)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_1_V, i8 %tmp)
  %empty_57 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1832, i32 %tmp_53_i)
  %empty_58 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_44_i)
  br label %2

; <label>:3                                       ; preds = %2
  %empty_59 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %0

"Duplicate<1080, 1920, 2048, 2048>.exit":         ; preds = %0
  ret void
}

define internal fastcc void @"image_filter_Dilate<0, 0, 1080, 1920>"(i11 %rows, i11 %cols, i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  %k_buf_0_val_3 = alloca [1920 x i8], align 1
  %k_buf_0_val_4 = alloca [1920 x i8], align 1
  %k_buf_0_val_5 = alloca [1920 x i8], align 1
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %rows_assign_cast_i_cast = zext i11 %rows_read to i12
  %cols_assign_cast_i_cast = zext i11 %cols_read to i12
  br label %arrayctor.loop1.i.i.i

arrayctor.loop1.i.i.i:                            ; preds = %arrayctor.loop1.i.i.i, %entry
  %tmp_23_i = phi i1 [ %tmp_24_i, %arrayctor.loop1.i.i.i ], [ false, %entry ]
  %tmp_24_i = xor i1 %tmp_23_i, true
  %rbegin_i_i_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s) nounwind
  %rend_i_i_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s, i32 %rbegin_i_i_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %tmp_23_i, label %arrayctor.loop1.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %arrayctor.loop1.i.i.i
  %src_kernel_win_0_val_0_1 = alloca i8
  %src_kernel_win_0_val_0_1_1 = alloca i8
  %src_kernel_win_0_val_1_1 = alloca i8
  %src_kernel_win_0_val_1_1_1 = alloca i8
  %src_kernel_win_0_val_2_1 = alloca i8
  %src_kernel_win_0_val_2_1_1 = alloca i8
  %right_border_buf_0_val_0_0 = alloca i8
  %right_border_buf_0_val_2_0 = alloca i8
  %right_border_buf_0_val_1_0 = alloca i8
  %widthloop = add i11 2, %cols_read
  %tmp_35_i = add i11 -1, %cols_read
  %tmp = trunc i11 %tmp_35_i to i2
  %p_assign_2 = add i11 -1, %rows_read
  %tmp_57 = trunc i11 %p_assign_2 to i2
  %tmp_s = add i11 2, %rows_read
  br label %0

; <label>:0                                       ; preds = %5, %._crit_edge.i.i.i.i
  %p_014_0_i_i_i = phi i11 [ 0, %._crit_edge.i.i.i.i ], [ %i_V, %5 ]
  %tmp_36_cast_i_cast7 = zext i11 %p_014_0_i_i_i to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 1082, i64 0)
  %exitcond1 = icmp eq i11 %p_014_0_i_i_i, %tmp_s
  %i_V = add i11 %p_014_0_i_i_i, 1
  br i1 %exitcond1, label %"Dilate<0, 0, 1080, 1920>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_57_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  %tmp_38_i = icmp ult i11 %p_014_0_i_i_i, %rows_read
  %tmp_159_not_i = xor i1 %tmp_38_i, true
  %tmp_58 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_014_0_i_i_i, i32 1, i32 10)
  %icmp = icmp ne i10 %tmp_58, 0
  %tmp_194_i = icmp eq i11 %p_014_0_i_i_i, 0
  %tmp_194_2_i = icmp eq i11 %p_014_0_i_i_i, 1
  %tmp_216_i = icmp ugt i11 %p_014_0_i_i_i, %rows_read
  %tmp_219_i = add i12 %tmp_36_cast_i_cast7, -1
  %tmp_221_i = icmp slt i12 %tmp_219_i, %rows_assign_cast_i_cast
  %tmp_59 = trunc i11 %p_assign_2 to i2
  %tmp_60 = trunc i12 %tmp_219_i to i2
  %tmp_61 = trunc i11 %p_assign_2 to i2
  %tmp_62 = select i1 %tmp_221_i, i2 %tmp_60, i2 %tmp_61
  %tmp_63 = sub i2 %tmp_59, %tmp_62
  %p_assign_4_1_i = add i12 %tmp_36_cast_i_cast7, -2
  %tmp_221_1_i = icmp slt i12 %p_assign_4_1_i, %rows_assign_cast_i_cast
  %tmp_64 = trunc i12 %p_assign_4_1_i to i2
  %tmp_20 = select i1 %tmp_221_1_i, i2 %tmp_64, i2 %tmp_57
  %row_assign_7_1_t_i = sub i2 %tmp_57, %tmp_20
  %p_assign_4_2_i = add i12 %tmp_36_cast_i_cast7, -3
  %tmp_221_2_i = icmp slt i12 %p_assign_4_2_i, %rows_assign_cast_i_cast
  %tmp_65 = trunc i12 %p_assign_4_2_i to i2
  %tmp_21 = select i1 %tmp_221_2_i, i2 %tmp_65, i2 %tmp_57
  %row_assign_7_2_t_i = sub i2 %tmp_57, %tmp_21
  br label %2

; <label>:2                                       ; preds = %._crit_edge401.i.i.i, %1
  %p_027_0_i_i_i = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge401.i.i.i ]
  %tmp_39_cast_i_cast6 = zext i11 %p_027_0_i_i_i to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 1922, i64 0)
  %exitcond = icmp eq i11 %p_027_0_i_i_i, %widthloop
  %j_V = add i11 %p_027_0_i_i_i, 1
  br i1 %exitcond, label %5, label %.critedge.i.i.i_ifconv

.critedge.i.i.i_ifconv:                           ; preds = %2
  %right_border_buf_0_val_0_0_s = load i8* %right_border_buf_0_val_0_0
  %right_border_buf_0_val_2_0_s = load i8* %right_border_buf_0_val_2_0
  %right_border_buf_0_val_1_0_s = load i8* %right_border_buf_0_val_1_0
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_58_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_66 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_027_0_i_i_i, i32 1, i32 10)
  %icmp2 = icmp ne i10 %tmp_66, 0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1847) nounwind
  %ImagLoc_x = add i12 -1, %tmp_39_cast_i_cast6
  %tmp_67 = trunc i12 %ImagLoc_x to i11
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %rev = xor i1 %tmp_68, true
  %tmp_43_i = icmp slt i12 %ImagLoc_x, %cols_assign_cast_i_cast
  %or_cond_i_i_i_i = and i1 %tmp_43_i, %rev
  %tmp_69 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %p_assign_1 = select i1 %tmp_69, i11 0, i11 %tmp_35_i
  %x = select i1 %or_cond_i_i_i_i, i11 %tmp_67, i11 %p_assign_1
  %tmp_70 = trunc i11 %x to i2
  %col_assign_1 = sub i2 %tmp, %tmp_70
  %brmerge_i = or i1 %tmp_43_i, %tmp_159_not_i
  %tmp_179_i = zext i11 %x to i64
  %k_buf_0_val_3_addr = getelementptr [1920 x i8]* %k_buf_0_val_3, i64 0, i64 %tmp_179_i
  %k_buf_0_val_3_load = load i8* %k_buf_0_val_3_addr, align 1
  %tmp_22 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_0_0_s, i8 undef, i8 undef, i2 %col_assign_1)
  %col_buf_0_val_0_0 = select i1 %brmerge_i, i8 %k_buf_0_val_3_load, i8 %tmp_22
  %k_buf_0_val_4_addr = getelementptr [1920 x i8]* %k_buf_0_val_4, i64 0, i64 %tmp_179_i
  %k_buf_0_val_4_load = load i8* %k_buf_0_val_4_addr, align 1
  %tmp_23 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_1_0_s, i8 undef, i8 undef, i2 %col_assign_1)
  %col_buf_0_val_1_0 = select i1 %brmerge_i, i8 %k_buf_0_val_4_load, i8 %tmp_23
  %k_buf_0_val_5_addr = getelementptr [1920 x i8]* %k_buf_0_val_5, i64 0, i64 %tmp_179_i
  %k_buf_0_val_5_load = load i8* %k_buf_0_val_5_addr, align 1
  %tmp_24 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_2_0_s, i8 undef, i8 undef, i2 %col_assign_1)
  %col_buf_0_val_2_0 = select i1 %brmerge_i, i8 %k_buf_0_val_5_load, i8 %tmp_24
  br i1 %or_cond_i_i_i_i, label %3, label %._crit_edge394.i.i.i_ifconv

; <label>:3                                       ; preds = %.critedge.i.i.i_ifconv
  br i1 %icmp, label %4, label %borderInterpolate.exit410.i.i.0.i

borderInterpolate.exit410.i.i.0.i:                ; preds = %3
  %tmp_73 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  br i1 %tmp_194_i, label %"operator().exit452.i.i.0.i", label %._crit_edge396.i.i.1.i

; <label>:4                                       ; preds = %3
  br i1 %tmp_38_i, label %.preheader388.i.i.preheader.0.i, label %._crit_edge394.i.i.i_ifconv

.preheader388.i.i.preheader.0.i:                  ; preds = %4
  store i8 %k_buf_0_val_4_load, i8* %k_buf_0_val_5_addr, align 1
  store i8 %k_buf_0_val_3_load, i8* %k_buf_0_val_4_addr, align 1
  %tmp_72 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  store i8 %tmp_72, i8* %k_buf_0_val_3_addr, align 1
  store i8 %col_buf_0_val_1_0, i8* %right_border_buf_0_val_1_0
  store i8 %col_buf_0_val_2_0, i8* %right_border_buf_0_val_2_0
  store i8 %col_buf_0_val_0_0, i8* %right_border_buf_0_val_0_0
  br label %._crit_edge394.i.i.i_ifconv

"operator().exit452.i.i.0.i":                     ; preds = %borderInterpolate.exit410.i.i.0.i
  store i8 %tmp_73, i8* %k_buf_0_val_5_addr, align 1
  store i8 %tmp_73, i8* %k_buf_0_val_4_addr, align 1
  br label %._crit_edge396.i.i.1.i

._crit_edge396.i.i.1.i:                           ; preds = %"operator().exit452.i.i.0.i", %borderInterpolate.exit410.i.i.0.i
  br i1 %tmp_194_2_i, label %"operator().exit452.i.i.2.i", label %._crit_edge396.i.i.2.i

"operator().exit452.i.i.2.i":                     ; preds = %._crit_edge396.i.i.1.i
  store i8 %tmp_73, i8* %k_buf_0_val_3_addr, align 1
  br label %._crit_edge396.i.i.2.i

._crit_edge396.i.i.2.i:                           ; preds = %"operator().exit452.i.i.2.i", %._crit_edge396.i.i.1.i
  br label %._crit_edge394.i.i.i_ifconv

._crit_edge394.i.i.i_ifconv:                      ; preds = %._crit_edge396.i.i.2.i, %.preheader388.i.i.preheader.0.i, %4, %.critedge.i.i.i_ifconv
  %tmp_25 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %tmp_63)
  %src_kernel_win_0_val_0_0 = select i1 %tmp_216_i, i8 %tmp_25, i8 %col_buf_0_val_0_0
  %tmp_26 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_7_1_t_i)
  %src_kernel_win_0_val_1_0 = select i1 %tmp_216_i, i8 %tmp_26, i8 %col_buf_0_val_1_0
  %tmp_27 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_7_2_t_i)
  %src_kernel_win_0_val_2_0 = select i1 %tmp_216_i, i8 %tmp_27, i8 %col_buf_0_val_2_0
  %or_cond_i_i_i = and i1 %icmp, %icmp2
  br i1 %or_cond_i_i_i, label %._crit_edge.i458.i.i.0.0.i, label %._crit_edge401.i.i.i

._crit_edge.i458.i.i.0.0.i:                       ; preds = %._crit_edge394.i.i.i_ifconv
  %src_kernel_win_0_val_0_1_lo = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_0_1_1_s = load i8* %src_kernel_win_0_val_0_1_1
  %src_kernel_win_0_val_1_1_lo = load i8* %src_kernel_win_0_val_1_1
  %src_kernel_win_0_val_1_1_1_s = load i8* %src_kernel_win_0_val_1_1_1
  %src_kernel_win_0_val_2_1_lo = load i8* %src_kernel_win_0_val_2_1
  %src_kernel_win_0_val_2_1_1_s = load i8* %src_kernel_win_0_val_2_1_1
  %tmp_240_0_1_i = icmp ugt i8 %src_kernel_win_0_val_2_1_lo, %src_kernel_win_0_val_2_1_1_s
  %temp_0_i_i_i_059_i_i_1_0_1_i = select i1 %tmp_240_0_1_i, i8 %src_kernel_win_0_val_2_1_lo, i8 %src_kernel_win_0_val_2_1_1_s
  %tmp_240_0_2_i = icmp ugt i8 %src_kernel_win_0_val_2_0, %temp_0_i_i_i_059_i_i_1_0_1_i
  %temp_0_i_i_i_059_i_i_1_0_2_i = select i1 %tmp_240_0_2_i, i8 %src_kernel_win_0_val_2_0, i8 %temp_0_i_i_i_059_i_i_1_0_1_i
  %tmp_240_1_i = icmp ugt i8 %src_kernel_win_0_val_1_1_1_s, %temp_0_i_i_i_059_i_i_1_0_2_i
  %temp_0_i_i_i_059_i_i_1_1_i = select i1 %tmp_240_1_i, i8 %src_kernel_win_0_val_1_1_1_s, i8 %temp_0_i_i_i_059_i_i_1_0_2_i
  %tmp_240_1_1_i = icmp ugt i8 %src_kernel_win_0_val_1_1_lo, %temp_0_i_i_i_059_i_i_1_1_i
  %temp_0_i_i_i_059_i_i_1_1_1_i = select i1 %tmp_240_1_1_i, i8 %src_kernel_win_0_val_1_1_lo, i8 %temp_0_i_i_i_059_i_i_1_1_i
  %tmp_240_1_2_i = icmp ugt i8 %src_kernel_win_0_val_1_0, %temp_0_i_i_i_059_i_i_1_1_1_i
  %temp_0_i_i_i_059_i_i_1_1_2_i = select i1 %tmp_240_1_2_i, i8 %src_kernel_win_0_val_1_0, i8 %temp_0_i_i_i_059_i_i_1_1_1_i
  %tmp_240_2_i = icmp ugt i8 %src_kernel_win_0_val_0_1_1_s, %temp_0_i_i_i_059_i_i_1_1_2_i
  %temp_0_i_i_i_059_i_i_1_2_i = select i1 %tmp_240_2_i, i8 %src_kernel_win_0_val_0_1_1_s, i8 %temp_0_i_i_i_059_i_i_1_1_2_i
  %tmp_240_2_1_i = icmp ugt i8 %src_kernel_win_0_val_0_1_lo, %temp_0_i_i_i_059_i_i_1_2_i
  %temp_0_i_i_i_059_i_i_1_2_1_i = select i1 %tmp_240_2_1_i, i8 %src_kernel_win_0_val_0_1_lo, i8 %temp_0_i_i_i_059_i_i_1_2_i
  %tmp_240_2_2_i = icmp ugt i8 %src_kernel_win_0_val_0_0, %temp_0_i_i_i_059_i_i_1_2_1_i
  %tmp_28 = select i1 %tmp_240_2_2_i, i8 %src_kernel_win_0_val_0_0, i8 %temp_0_i_i_i_059_i_i_1_2_1_i
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_V, i8 %tmp_28)
  br label %._crit_edge401.i.i.i

._crit_edge401.i.i.i:                             ; preds = %._crit_edge.i458.i.i.0.0.i, %._crit_edge394.i.i.i_ifconv
  %src_kernel_win_0_val_0_1_lo_1 = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_1_1_lo_1 = load i8* %src_kernel_win_0_val_1_1
  %src_kernel_win_0_val_2_1_lo_1 = load i8* %src_kernel_win_0_val_2_1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_58_i)
  store i8 %src_kernel_win_0_val_2_1_lo_1, i8* %src_kernel_win_0_val_2_1_1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1
  store i8 %src_kernel_win_0_val_1_1_lo_1, i8* %src_kernel_win_0_val_1_1_1
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1
  store i8 %src_kernel_win_0_val_0_1_lo_1, i8* %src_kernel_win_0_val_0_1_1
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1
  br label %2

; <label>:5                                       ; preds = %2
  %empty_60 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_57_i)
  br label %0

"Dilate<0, 0, 1080, 1920>.exit":                  ; preds = %0
  ret void
}

define internal fastcc void @"image_filter_Consume<1080, 1920, 0>"(i11 %rows, i11 %cols, i8* %src_data_stream_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %4, %entry
  %p_i = phi i11 [ 0, %entry ], [ %i_V, %4 ]
  %exitcond2_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond2_i, label %"Consume<1080, 1920, 0>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %p_7_i = phi i11 [ 0, %1 ], [ %j_V, %3 ]
  %exitcond_i = icmp eq i11 %p_7_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_7_i, 1
  br i1 %exitcond_i, label %4, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_88_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_89_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1834)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  %tmp_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1834, i32 %tmp_89_i)
  %empty_61 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_88_i)
  br label %2

; <label>:4                                       ; preds = %2
  %empty_62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_i)
  br label %0

"Consume<1080, 1920, 0>.exit":                    ; preds = %0
  ret void
}

define internal fastcc void @image_filter_AXIvideo2Mat(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i11 %rows, i11 %cols, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  %cols_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %cols)
  %rows_read = call i11 @_ssdm_op_Read.ap_stable.i11(i11 %rows)
  call void (...)* @_ssdm_op_SpecInterface(i11 %cols, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i11 %rows, [10 x i8]* @ap_stable_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [13 x i8]* @p_str1806, [1 x i8]* @p_str1807, [1 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  br label %.preheader188.i

.preheader188.i:                                  ; preds = %.preheader188.i, %entry
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1867) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1867)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  %empty = call { i16, i2, i2, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty, 4
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1867, i32 %tmp_i)
  br i1 %tmp_user_V, label %.preheader187.i.preheader, label %.preheader188.i

.preheader187.i.preheader:                        ; preds = %.preheader188.i
  %sof_1_i = alloca i1
  store i1 true, i1* %sof_1_i
  br label %.preheader187.i

.preheader187.i:                                  ; preds = %.preheader187.i.preheader, %5
  %axi_last_V1_i = phi i1 [ %axi_last_V_3_i, %5 ], [ %tmp_last_V, %.preheader187.i.preheader ]
  %axi_data_V1_i = phi i16 [ %axi_data_V_3_i, %5 ], [ %tmp_data_V, %.preheader187.i.preheader ]
  %p_i = phi i11 [ %i_V, %5 ], [ 0, %.preheader187.i.preheader ]
  %exitcond3_i = icmp eq i11 %p_i, %rows_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond3_i, label %"AXIvideo2Mat<16, 1080, 1920, 2048>.exit", label %0

; <label>:0                                       ; preds = %.preheader187.i
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1819) nounwind
  %tmp_91_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819)
  br label %1

; <label>:1                                       ; preds = %._crit_edge.i, %0
  %eol = phi i1 [ %axi_last_V1_i, %0 ], [ %axi_last_V_2_i, %._crit_edge.i ]
  %axi_data_V_1_i = phi i16 [ %axi_data_V1_i, %0 ], [ %p_Val2_s, %._crit_edge.i ]
  %p_8_i = phi i11 [ 0, %0 ], [ %j_V, %._crit_edge.i ]
  %eol_i = phi i1 [ false, %0 ], [ %axi_last_V_2_i, %._crit_edge.i ]
  %exitcond4_i = icmp eq i11 %p_8_i, %cols_read
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_8_i, 1
  br i1 %exitcond4_i, label %.preheader.i, label %2

; <label>:2                                       ; preds = %1
  %sof_1_i_load = load i1* %sof_1_i
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1820) nounwind
  %tmp_92_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1820)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  %brmerge_i = or i1 %sof_1_i_load, %eol_i
  br i1 %brmerge_i, label %._crit_edge.i, label %3

; <label>:3                                       ; preds = %2
  %empty_64 = call { i16, i2, i2, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty_64, 0
  %tmp_last_V_1 = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty_64, 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %3, %2
  %axi_last_V_2_i = phi i1 [ %tmp_last_V_1, %3 ], [ %eol, %2 ]
  %p_Val2_s = phi i16 [ %tmp_data_V_1, %3 ], [ %axi_data_V_1_i, %2 ]
  %tmp = trunc i16 %p_Val2_s to i8
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %p_Val2_s, i32 8, i32 15)
  %tmp_96_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1832)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1807) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_4)
  %empty_65 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1832, i32 %tmp_96_i)
  %empty_66 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1820, i32 %tmp_92_i)
  store i1 false, i1* %sof_1_i
  br label %1

.preheader.i:                                     ; preds = %1, %4
  %axi_last_V_3_i = phi i1 [ %tmp_last_V_2, %4 ], [ %eol, %1 ]
  %axi_data_V_3_i = phi i16 [ %tmp_data_V_2, %4 ], [ %axi_data_V_1_i, %1 ]
  %eol_2_i = phi i1 [ %tmp_last_V_2, %4 ], [ %eol_i, %1 ]
  br i1 %eol_2_i, label %5, label %4

; <label>:4                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1868) nounwind
  %tmp_93_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1868)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1807) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1807) nounwind
  %empty_67 = call { i16, i2, i2, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i16P.i2P.i2P.i1P.i1P.i1P.i1P(i16* %AXI_video_strm_V_data_V, i2* %AXI_video_strm_V_keep_V, i2* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty_67, 0
  %tmp_last_V_2 = extractvalue { i16, i2, i2, i1, i1, i1, i1 } %empty_67, 4
  %empty_68 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1868, i32 %tmp_93_i)
  br label %.preheader.i

; <label>:5                                       ; preds = %.preheader.i
  %empty_69 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_91_i)
  br label %.preheader187.i

"AXIvideo2Mat<16, 1080, 1920, 2048>.exit":        ; preds = %.preheader187.i
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !19, !21, !27, !30, !33, !35, !35, !21, !21, !37, !13, !27, !21, !21, !39, !19, !19, !21, !42, !21, !21, !21, !45, !45, !47, !47, !49, !52, !55, !57, !57, !21, !59, !62, !62, !68, !69, !35, !35, !21, !21, !35, !35, !21, !70, !72, !21, !75, !78, !80, !21, !21, !82, !84, !21, !21, !21, !45, !45, !86, !86, !88, !35, !35, !21, !90, !92, !35, !35, !21, !21, !93, !69, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !94, !97, !97, !99, !101, !102, !21, !93, !69, !21, !21, !21, !92, !104, !104, !107, !113, !21, !21, !93, !69, !93, !69, !21, !117, !119, !21, !21, !21, !45, !45, !121, !121, !21, !21, !13, !27, !122, !21, !21, !124, !124, !124, !124, !124, !124, !126, !21, !129, !132, !21, !21, !21, !21, !21, !21, !21, !21, !135, !135, !138, !138, !141, !21, !21, !21, !144, !19, !19, !21, !21, !21, !21, !147, !149, !69, !21, !21, !21, !151, !21, !21, !21, !154, !157, !21, !21, !21, !21, !21, !159, !159, !161, !163, !163, !165, !167, !21, !170, !21, !21, !21, !172, !172, !174, !174, !175, !21, !21, !21, !177, !179, !181, !181, !88, !21, !21, !21, !21, !21, !151, !21, !21, !21, !183, !184, !186, !188, !188, !21, !21, !21, !189, !189, !189, !191, !193, !193, !194, !196, !196, !188, !21, !21, !21, !21, !21, !21, !197, !199, !202, !208, !208, !210, !213, !215, !69, !35, !35, !21, !21, !217, !223, !21, !21, !21, !21, !226, !21, !21, !21, !228, !228, !174, !174, !21, !21, !21, !230, !232, !69, !234, !236, !239, !241, !243, !243, !21, !21, !245, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !247, !250, !253, !256, !259, !261, !21, !21, !88, !21, !263, !265, !266, !267, !267, !270, !270, !270, !21, !21, !270, !270, !270, !163, !163, !165, !151, !21, !163, !163, !165, !151, !21, !163, !163, !165, !151, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !272, !272, !272, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !272, !272, !272, !277, !277, !277, !21, !272, !272, !272, !21, !272, !272, !272, !21, !272, !272, !272, !21, !277, !277, !277, !21, !277, !277, !277, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!282}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"video_in", metadata !"video_out", metadata !"rows", metadata !"cols"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 2048> &", metadata !"stream<ap_axiu<16, 1, 1, 1> > &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"img", metadata !"AXI_video_strm"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !""}
!19 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !14, metadata !15, metadata !28, metadata !17, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<16, 1, 1, 1> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!33 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !34, metadata !6}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!35 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !36, metadata !6}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !29, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!45 = metadata !{null, metadata !14, metadata !15, metadata !46, metadata !17, metadata !20, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!47 = metadata !{null, metadata !14, metadata !15, metadata !48, metadata !17, metadata !20, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"ap_axiu<16, 1, 1, 1> &", metadata !"int", metadata !"int", metadata !"uchar"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"axi", metadata !"start", metadata !"w", metadata !"val"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16> &", metadata !"int", metadata !"int", metadata !"uchar"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"pix", metadata !"start", metadata !"w", metadata !"val"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !36, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!57 = metadata !{null, metadata !14, metadata !15, metadata !58, metadata !17, metadata !20, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !44, metadata !6}
!69 = metadata !{null, metadata !14, metadata !15, metadata !46, metadata !17, metadata !29, metadata !6}
!70 = metadata !{null, metadata !14, metadata !15, metadata !71, metadata !17, metadata !29, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!72 = metadata !{null, metadata !14, metadata !15, metadata !73, metadata !17, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((2048) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((2048) & ((1 << 11) - 1))>::name> &"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"s"}
!75 = metadata !{null, metadata !14, metadata !15, metadata !76, metadata !17, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"uchar &"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!78 = metadata !{null, metadata !14, metadata !15, metadata !76, metadata !17, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!80 = metadata !{null, metadata !14, metadata !15, metadata !81, metadata !17, metadata !29, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !41, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"int"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !44, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"const ap_int_base<32, true> &"}
!86 = metadata !{null, metadata !14, metadata !15, metadata !87, metadata !17, metadata !20, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &"}
!88 = metadata !{null, metadata !14, metadata !15, metadata !89, metadata !17, metadata !29, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!90 = metadata !{null, metadata !14, metadata !15, metadata !91, metadata !17, metadata !29, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!92 = metadata !{null, metadata !14, metadata !15, metadata !87, metadata !17, metadata !29, metadata !6}
!93 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !44, metadata !6}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !96, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 2048> &", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, 2048> &", metadata !"Scalar<((((2048) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((2048) & ((1 << 11) - 1))>::name>"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_mask", metadata !"_dst", metadata !"_color"}
!97 = metadata !{null, metadata !14, metadata !15, metadata !98, metadata !17, metadata !74, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((2048) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((2048) & ((1 << 11) - 1))>::name>"}
!99 = metadata !{null, metadata !14, metadata !15, metadata !100, metadata !17, metadata !32, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!101 = metadata !{null, metadata !14, metadata !15, metadata !100, metadata !17, metadata !34, metadata !6}
!102 = metadata !{null, metadata !14, metadata !15, metadata !103, metadata !17, metadata !74, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((0) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((0) & ((1 << 11) - 1))>::name> &"}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, 0> &"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_dst"}
!107 = metadata !{null, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !6}
!108 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!109 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, 0> &", metadata !"Window<3, 3, uchar> &", metadata !"Point_<int>", metadata !"int", metadata !"int"}
!111 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_dst", metadata !"kernel", metadata !"_anchor", metadata !"rows", metadata !"cols"}
!113 = metadata !{null, metadata !114, metadata !64, metadata !115, metadata !66, metadata !116, metadata !6}
!114 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"Window<3, 3, uchar> &", metadata !"Window<3, 3, uchar> &", metadata !"uchar &"}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"_kernel_filter", metadata !"_kernel_pixel", metadata !"out"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !41, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !120, metadata !11, metadata !44, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!121 = metadata !{null, metadata !14, metadata !15, metadata !89, metadata !17, metadata !20, metadata !6}
!122 = metadata !{null, metadata !14, metadata !15, metadata !123, metadata !17, metadata !29, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<12> &"}
!124 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !125, metadata !6}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col"}
!126 = metadata !{null, metadata !114, metadata !64, metadata !127, metadata !66, metadata !128, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"p", metadata !"len", metadata !"borderType"}
!129 = metadata !{null, metadata !108, metadata !109, metadata !130, metadata !111, metadata !131, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"Point_<int>", metadata !"int &", metadata !"int &", metadata !"int &", metadata !"int &"}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"rows", metadata !"anchor", metadata !"start_row", metadata !"stop_row", metadata !"row_index", metadata !"col_index"}
!132 = metadata !{null, metadata !8, metadata !9, metadata !133, metadata !11, metadata !134, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"hls::Point_<int> &", metadata !"hls::Size_<int>"}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"anchor", metadata !"kernel_size"}
!135 = metadata !{null, metadata !14, metadata !15, metadata !136, metadata !17, metadata !137, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const class hls::Point_<int> &"}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"pt"}
!138 = metadata !{null, metadata !14, metadata !15, metadata !139, metadata !17, metadata !140, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const Size_<int> &"}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"sz"}
!141 = metadata !{null, metadata !1, metadata !2, metadata !142, metadata !4, metadata !143, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"Size_<int>", metadata !"Point_<int>", metadata !"Window<3, 3, uchar> &"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"shape", metadata !"ksize", metadata !"anchor", metadata !"result"}
!144 = metadata !{null, metadata !14, metadata !15, metadata !145, metadata !17, metadata !146, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!147 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !148, metadata !6}
!148 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !150, metadata !11, metadata !44, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, true> &", metadata !"int"}
!151 = metadata !{null, metadata !14, metadata !15, metadata !152, metadata !17, metadata !153, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!153 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!154 = metadata !{null, metadata !8, metadata !9, metadata !155, metadata !11, metadata !156, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<31, 11, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!156 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!157 = metadata !{null, metadata !14, metadata !15, metadata !158, metadata !17, metadata !29, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 11, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!159 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !160, metadata !6}
!160 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!161 = metadata !{null, metadata !14, metadata !15, metadata !152, metadata !17, metadata !162, metadata !6}
!162 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!163 = metadata !{null, metadata !14, metadata !15, metadata !152, metadata !17, metadata !164, metadata !6}
!164 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!165 = metadata !{null, metadata !14, metadata !15, metadata !152, metadata !17, metadata !166, metadata !6}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!167 = metadata !{null, metadata !114, metadata !64, metadata !168, metadata !66, metadata !169, metadata !6}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!170 = metadata !{null, metadata !8, metadata !9, metadata !171, metadata !11, metadata !44, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!172 = metadata !{null, metadata !14, metadata !15, metadata !173, metadata !17, metadata !20, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!174 = metadata !{null, metadata !14, metadata !15, metadata !28, metadata !17, metadata !20, metadata !6}
!175 = metadata !{null, metadata !14, metadata !15, metadata !176, metadata !17, metadata !29, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!177 = metadata !{null, metadata !8, metadata !9, metadata !178, metadata !11, metadata !41, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!179 = metadata !{null, metadata !8, metadata !9, metadata !180, metadata !11, metadata !44, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!181 = metadata !{null, metadata !14, metadata !15, metadata !182, metadata !17, metadata !20, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!183 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !162, metadata !6}
!184 = metadata !{null, metadata !8, metadata !9, metadata !185, metadata !11, metadata !41, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 11, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &", metadata !"int"}
!186 = metadata !{null, metadata !14, metadata !15, metadata !187, metadata !17, metadata !29, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!188 = metadata !{null, metadata !14, metadata !15, metadata !158, metadata !17, metadata !20, metadata !6}
!189 = metadata !{null, metadata !14, metadata !15, metadata !190, metadata !17, metadata !20, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 12, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!191 = metadata !{null, metadata !14, metadata !15, metadata !192, metadata !17, metadata !20, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 11, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!193 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !164, metadata !6}
!194 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !195, metadata !6}
!195 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!196 = metadata !{null, metadata !14, metadata !15, metadata !187, metadata !17, metadata !20, metadata !6}
!197 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !198, metadata !6}
!198 = metadata !{metadata !"kernel_arg_name", metadata !"SRC_T", metadata !"DST_T"}
!199 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !201, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, (((0) & ((1 << 11) - 1)) + (((1) - 1) << 11))> &", metadata !"typename Type<((0) & ((1 << 11) - 1))>::name", metadata !"_Bool"}
!201 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_mask", metadata !"_threshold", metadata !"_nomax_supression"}
!202 = metadata !{null, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !6}
!203 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!204 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, (((0) & ((1 << 11) - 1)) + (((1) - 1) << 11))> &", metadata !"typename Type<((0) & ((1 << 11) - 1))>::name", metadata !"_Bool", metadata !"int (&)[16][2]"}
!206 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!207 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_mask", metadata !"_threshold", metadata !"_nonmax_supression", metadata !"flag"}
!208 = metadata !{null, metadata !14, metadata !15, metadata !209, metadata !17, metadata !74, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((0) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((0) & ((1 << 11) - 1))>::name>"}
!210 = metadata !{null, metadata !14, metadata !15, metadata !211, metadata !17, metadata !212, metadata !6}
!211 = metadata !{metadata !"kernel_arg_type", metadata !"Window<3, 3, struct ap_int<16> > &"}
!212 = metadata !{metadata !"kernel_arg_name", metadata !"core_win"}
!213 = metadata !{null, metadata !14, metadata !15, metadata !214, metadata !17, metadata !29, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!215 = metadata !{null, metadata !8, metadata !9, metadata !216, metadata !11, metadata !44, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"int"}
!217 = metadata !{null, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !6}
!218 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!219 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"Window<7, 7, struct ap_uint<8> > &", metadata !"struct ap_uint<8>", metadata !"ap_uint<2> (&)[25]", metadata !"int (&)[25]", metadata !"int (&)[16][2]", metadata !"int &", metadata !"_Bool"}
!221 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!222 = metadata !{metadata !"kernel_arg_name", metadata !"win", metadata !"_threshold", metadata !"flag_val", metadata !"flag_d", metadata !"flag", metadata !"core", metadata !"_nonmax_supression"}
!223 = metadata !{null, metadata !8, metadata !9, metadata !224, metadata !11, metadata !225, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"int (&)[25]", metadata !"struct ap_uint<8>"}
!225 = metadata !{metadata !"kernel_arg_name", metadata !"flag_d", metadata !"_threshold"}
!226 = metadata !{null, metadata !8, metadata !9, metadata !227, metadata !11, metadata !44, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!228 = metadata !{null, metadata !14, metadata !15, metadata !229, metadata !17, metadata !20, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!230 = metadata !{i32 (i32)* @"image_filter_reg<int>", metadata !14, metadata !15, metadata !16, metadata !17, metadata !231, metadata !6}
!231 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!232 = metadata !{null, metadata !8, metadata !9, metadata !233, metadata !11, metadata !44, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2, false> &", metadata !"int"}
!234 = metadata !{null, metadata !14, metadata !15, metadata !235, metadata !17, metadata !29, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2, false> &"}
!236 = metadata !{null, metadata !203, metadata !204, metadata !237, metadata !206, metadata !238, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"Window<7, 7, struct ap_uint<8> > &", metadata !"struct ap_uint<8>", metadata !"ap_uint<2> (&)[25]", metadata !"int (&)[25]", metadata !"int (&)[16][2]"}
!238 = metadata !{metadata !"kernel_arg_name", metadata !"win", metadata !"_threshold", metadata !"flag_val", metadata !"flag_d", metadata !"flag"}
!239 = metadata !{null, metadata !8, metadata !9, metadata !240, metadata !11, metadata !44, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!241 = metadata !{null, metadata !14, metadata !15, metadata !242, metadata !17, metadata !29, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<16> &"}
!243 = metadata !{null, metadata !14, metadata !15, metadata !244, metadata !17, metadata !36, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!245 = metadata !{null, metadata !14, metadata !15, metadata !246, metadata !17, metadata !29, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!247 = metadata !{null, metadata !14, metadata !15, metadata !248, metadata !17, metadata !249, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 0> &"}
!249 = metadata !{metadata !"kernel_arg_name", metadata !"src"}
!250 = metadata !{null, metadata !114, metadata !64, metadata !251, metadata !66, metadata !252, metadata !6}
!251 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 2048> &", metadata !"Mat<1080, 1920, 0> &", metadata !"Mat<1080, 1920, 0> &"}
!252 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst0", metadata !"dst1"}
!253 = metadata !{null, metadata !114, metadata !64, metadata !254, metadata !66, metadata !255, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<1080, 1920, 2048> &", metadata !"Mat<1080, 1920, 2048> &", metadata !"Mat<1080, 1920, 2048> &"}
!255 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst1", metadata !"dst2"}
!256 = metadata !{null, metadata !8, metadata !9, metadata !257, metadata !11, metadata !258, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"stream<ap_axiu<16, 1, 1, 1> > &", metadata !"Mat<1080, 1920, 2048> &"}
!258 = metadata !{metadata !"kernel_arg_name", metadata !"AXI_video_strm", metadata !"img"}
!259 = metadata !{null, metadata !1, metadata !2, metadata !260, metadata !4, metadata !51, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"ap_axiu<16, 1, 1, 1>", metadata !"int", metadata !"int", metadata !"uchar &"}
!261 = metadata !{null, metadata !1, metadata !2, metadata !262, metadata !4, metadata !54, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16>", metadata !"int", metadata !"int", metadata !"uchar &"}
!263 = metadata !{null, metadata !14, metadata !15, metadata !264, metadata !17, metadata !77, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_axiu<16, 1, 1, 1> &"}
!265 = metadata !{null, metadata !14, metadata !15, metadata !264, metadata !17, metadata !79, metadata !6}
!266 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !18, metadata !6}
!267 = metadata !{null, metadata !8, metadata !9, metadata !268, metadata !11, metadata !269, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar"}
!269 = metadata !{metadata !"kernel_arg_name", metadata !"v0", metadata !"v1"}
!270 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !271, metadata !6}
!271 = metadata !{metadata !"kernel_arg_name", metadata !"_rows", metadata !"_cols"}
!272 = metadata !{null, metadata !273, metadata !15, metadata !274, metadata !275, metadata !276, metadata !6}
!273 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!275 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!276 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!277 = metadata !{null, metadata !278, metadata !9, metadata !279, metadata !280, metadata !281, metadata !6}
!278 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!280 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!281 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!282 = metadata !{metadata !283, [1 x i32]* @llvm_global_ctors_0}
!283 = metadata !{metadata !284}
!284 = metadata !{i32 0, i32 31, metadata !285}
!285 = metadata !{metadata !286}
!286 = metadata !{metadata !"llvm.global_ctors.0", metadata !287, metadata !"", i32 0, i32 31}
!287 = metadata !{metadata !288}
!288 = metadata !{i32 0, i32 0, i32 1}
!289 = metadata !{metadata !290}
!290 = metadata !{i32 0, i32 15, metadata !291}
!291 = metadata !{metadata !292}
!292 = metadata !{metadata !"video_in.V.data.V", metadata !287, metadata !"uint16", i32 0, i32 15}
!293 = metadata !{metadata !294}
!294 = metadata !{i32 0, i32 1, metadata !295}
!295 = metadata !{metadata !296}
!296 = metadata !{metadata !"video_in.V.keep.V", metadata !287, metadata !"uint2", i32 0, i32 1}
!297 = metadata !{metadata !298}
!298 = metadata !{i32 0, i32 1, metadata !299}
!299 = metadata !{metadata !300}
!300 = metadata !{metadata !"video_in.V.strb.V", metadata !287, metadata !"uint2", i32 0, i32 1}
!301 = metadata !{metadata !302}
!302 = metadata !{i32 0, i32 0, metadata !303}
!303 = metadata !{metadata !304}
!304 = metadata !{metadata !"video_in.V.user.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!305 = metadata !{metadata !306}
!306 = metadata !{i32 0, i32 0, metadata !307}
!307 = metadata !{metadata !308}
!308 = metadata !{metadata !"video_in.V.last.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!309 = metadata !{metadata !310}
!310 = metadata !{i32 0, i32 0, metadata !311}
!311 = metadata !{metadata !312}
!312 = metadata !{metadata !"video_in.V.id.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!313 = metadata !{metadata !314}
!314 = metadata !{i32 0, i32 0, metadata !315}
!315 = metadata !{metadata !316}
!316 = metadata !{metadata !"video_in.V.dest.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!317 = metadata !{metadata !318}
!318 = metadata !{i32 0, i32 15, metadata !319}
!319 = metadata !{metadata !320}
!320 = metadata !{metadata !"video_out.V.data.V", metadata !287, metadata !"uint16", i32 0, i32 15}
!321 = metadata !{metadata !322}
!322 = metadata !{i32 0, i32 1, metadata !323}
!323 = metadata !{metadata !324}
!324 = metadata !{metadata !"video_out.V.keep.V", metadata !287, metadata !"uint2", i32 0, i32 1}
!325 = metadata !{metadata !326}
!326 = metadata !{i32 0, i32 1, metadata !327}
!327 = metadata !{metadata !328}
!328 = metadata !{metadata !"video_out.V.strb.V", metadata !287, metadata !"uint2", i32 0, i32 1}
!329 = metadata !{metadata !330}
!330 = metadata !{i32 0, i32 0, metadata !331}
!331 = metadata !{metadata !332}
!332 = metadata !{metadata !"video_out.V.user.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!333 = metadata !{metadata !334}
!334 = metadata !{i32 0, i32 0, metadata !335}
!335 = metadata !{metadata !336}
!336 = metadata !{metadata !"video_out.V.last.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 0, i32 0, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"video_out.V.id.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!341 = metadata !{metadata !342}
!342 = metadata !{i32 0, i32 0, metadata !343}
!343 = metadata !{metadata !344}
!344 = metadata !{metadata !"video_out.V.dest.V", metadata !287, metadata !"uint1", i32 0, i32 0}
!345 = metadata !{metadata !346}
!346 = metadata !{i32 0, i32 31, metadata !347}
!347 = metadata !{metadata !348}
!348 = metadata !{metadata !"rows", metadata !349, metadata !"int", i32 0, i32 31}
!349 = metadata !{metadata !350}
!350 = metadata !{i32 0, i32 0, i32 0}
!351 = metadata !{metadata !352}
!352 = metadata !{i32 0, i32 31, metadata !353}
!353 = metadata !{metadata !354}
!354 = metadata !{metadata !"cols", metadata !349, metadata !"int", i32 0, i32 31}
