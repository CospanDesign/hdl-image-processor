// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="image_filter,hls_ip_2016_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=7.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.215250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=43,HLS_SYN_DSP=0,HLS_SYN_FF=6745,HLS_SYN_LUT=7914}" *)

module image_filter (
        s_axi_CONTROL_BUS_AWVALID,
        s_axi_CONTROL_BUS_AWREADY,
        s_axi_CONTROL_BUS_AWADDR,
        s_axi_CONTROL_BUS_WVALID,
        s_axi_CONTROL_BUS_WREADY,
        s_axi_CONTROL_BUS_WDATA,
        s_axi_CONTROL_BUS_WSTRB,
        s_axi_CONTROL_BUS_ARVALID,
        s_axi_CONTROL_BUS_ARREADY,
        s_axi_CONTROL_BUS_ARADDR,
        s_axi_CONTROL_BUS_RVALID,
        s_axi_CONTROL_BUS_RREADY,
        s_axi_CONTROL_BUS_RDATA,
        s_axi_CONTROL_BUS_RRESP,
        s_axi_CONTROL_BUS_BVALID,
        s_axi_CONTROL_BUS_BREADY,
        s_axi_CONTROL_BUS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        video_in_TDATA,
        video_in_TKEEP,
        video_in_TSTRB,
        video_in_TUSER,
        video_in_TLAST,
        video_in_TID,
        video_in_TDEST,
        video_out_TDATA,
        video_out_TKEEP,
        video_out_TSTRB,
        video_out_TUSER,
        video_out_TLAST,
        video_out_TID,
        video_out_TDEST,
        video_in_TVALID,
        video_in_TREADY,
        video_out_TVALID,
        video_out_TREADY
);

parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_B = 32'b1011;

parameter C_S_AXI_CONTROL_BUS_WSTRB_WIDTH = (C_S_AXI_CONTROL_BUS_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

input   s_axi_CONTROL_BUS_AWVALID;
output   s_axi_CONTROL_BUS_AWREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1 : 0] s_axi_CONTROL_BUS_AWADDR;
input   s_axi_CONTROL_BUS_WVALID;
output   s_axi_CONTROL_BUS_WREADY;
input  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1 : 0] s_axi_CONTROL_BUS_WDATA;
input  [C_S_AXI_CONTROL_BUS_WSTRB_WIDTH - 1 : 0] s_axi_CONTROL_BUS_WSTRB;
input   s_axi_CONTROL_BUS_ARVALID;
output   s_axi_CONTROL_BUS_ARREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1 : 0] s_axi_CONTROL_BUS_ARADDR;
output   s_axi_CONTROL_BUS_RVALID;
input   s_axi_CONTROL_BUS_RREADY;
output  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1 : 0] s_axi_CONTROL_BUS_RDATA;
output  [1:0] s_axi_CONTROL_BUS_RRESP;
output   s_axi_CONTROL_BUS_BVALID;
input   s_axi_CONTROL_BUS_BREADY;
output  [1:0] s_axi_CONTROL_BUS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [15:0] video_in_TDATA;
input  [1:0] video_in_TKEEP;
input  [1:0] video_in_TSTRB;
input  [0:0] video_in_TUSER;
input  [0:0] video_in_TLAST;
input  [0:0] video_in_TID;
input  [0:0] video_in_TDEST;
output  [15:0] video_out_TDATA;
output  [1:0] video_out_TKEEP;
output  [1:0] video_out_TSTRB;
output  [0:0] video_out_TUSER;
output  [0:0] video_out_TLAST;
output  [0:0] video_out_TID;
output  [0:0] video_out_TDEST;
input   video_in_TVALID;
output   video_in_TREADY;
output   video_out_TVALID;
input   video_out_TREADY;

reg    ap_rst_n_inv;
wire   [31:0] rows;
wire   [31:0] cols;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
reg    ap_idle;
wire    image_filter_AXIvideo2Mat_U0_ap_start;
wire    image_filter_AXIvideo2Mat_U0_ap_done;
wire    image_filter_AXIvideo2Mat_U0_ap_continue;
wire    image_filter_AXIvideo2Mat_U0_ap_idle;
wire    image_filter_AXIvideo2Mat_U0_ap_ready;
wire    image_filter_AXIvideo2Mat_U0_video_in_TREADY;
wire   [10:0] image_filter_AXIvideo2Mat_U0_rows;
wire   [10:0] image_filter_AXIvideo2Mat_U0_cols;
wire   [7:0] image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire    image_filter_Duplicate_U0_ap_start;
wire    image_filter_Duplicate_U0_ap_done;
wire    image_filter_Duplicate_U0_ap_continue;
wire    image_filter_Duplicate_U0_ap_idle;
wire    image_filter_Duplicate_U0_ap_ready;
wire   [10:0] image_filter_Duplicate_U0_rows;
wire   [10:0] image_filter_Duplicate_U0_cols;
wire    image_filter_Duplicate_U0_src_data_stream_0_V_read;
wire    image_filter_Duplicate_U0_src_data_stream_1_V_read;
wire   [7:0] image_filter_Duplicate_U0_dst1_data_stream_0_V_din;
wire    image_filter_Duplicate_U0_dst1_data_stream_0_V_write;
wire   [7:0] image_filter_Duplicate_U0_dst1_data_stream_1_V_din;
wire    image_filter_Duplicate_U0_dst1_data_stream_1_V_write;
wire   [7:0] image_filter_Duplicate_U0_dst2_data_stream_0_V_din;
wire    image_filter_Duplicate_U0_dst2_data_stream_0_V_write;
wire   [7:0] image_filter_Duplicate_U0_dst2_data_stream_1_V_din;
wire    image_filter_Duplicate_U0_dst2_data_stream_1_V_write;
wire    image_filter_Split_1080_1920_2048_0_U0_ap_start;
wire    image_filter_Split_1080_1920_2048_0_U0_ap_done;
wire    image_filter_Split_1080_1920_2048_0_U0_ap_continue;
wire    image_filter_Split_1080_1920_2048_0_U0_ap_idle;
wire    image_filter_Split_1080_1920_2048_0_U0_ap_ready;
wire   [10:0] image_filter_Split_1080_1920_2048_0_U0_rows;
wire   [10:0] image_filter_Split_1080_1920_2048_0_U0_cols;
wire    image_filter_Split_1080_1920_2048_0_U0_src_data_stream_0_V_read;
wire    image_filter_Split_1080_1920_2048_0_U0_src_data_stream_1_V_read;
wire   [7:0] image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_din;
wire    image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_write;
wire   [7:0] image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_din;
wire    image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_write;
wire    image_filter_Consume_1080_1920_0_U0_ap_start;
wire    image_filter_Consume_1080_1920_0_U0_ap_done;
wire    image_filter_Consume_1080_1920_0_U0_ap_continue;
wire    image_filter_Consume_1080_1920_0_U0_ap_idle;
wire    image_filter_Consume_1080_1920_0_U0_ap_ready;
wire   [10:0] image_filter_Consume_1080_1920_0_U0_rows;
wire   [10:0] image_filter_Consume_1080_1920_0_U0_cols;
wire    image_filter_Consume_1080_1920_0_U0_src_data_stream_V_read;
wire    image_filter_FAST_t_opr_U0_ap_start;
wire    image_filter_FAST_t_opr_U0_ap_done;
wire    image_filter_FAST_t_opr_U0_ap_continue;
wire    image_filter_FAST_t_opr_U0_ap_idle;
wire    image_filter_FAST_t_opr_U0_ap_ready;
wire   [10:0] image_filter_FAST_t_opr_U0_rows;
wire   [10:0] image_filter_FAST_t_opr_U0_cols;
wire    image_filter_FAST_t_opr_U0_p_src_data_stream_V_read;
wire   [7:0] image_filter_FAST_t_opr_U0_p_mask_data_stream_V_din;
wire    image_filter_FAST_t_opr_U0_p_mask_data_stream_V_write;
wire    image_filter_Dilate_0_0_1080_1920_U0_ap_start;
wire    image_filter_Dilate_0_0_1080_1920_U0_ap_done;
wire    image_filter_Dilate_0_0_1080_1920_U0_ap_continue;
wire    image_filter_Dilate_0_0_1080_1920_U0_ap_idle;
wire    image_filter_Dilate_0_0_1080_1920_U0_ap_ready;
wire   [10:0] image_filter_Dilate_0_0_1080_1920_U0_rows;
wire   [10:0] image_filter_Dilate_0_0_1080_1920_U0_cols;
wire    image_filter_Dilate_0_0_1080_1920_U0_p_src_data_stream_V_read;
wire   [7:0] image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_din;
wire    image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_write;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_ap_start;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_ap_done;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_ap_continue;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_ap_idle;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_ap_ready;
wire   [10:0] image_filter_PaintMask_2048_0_1080_1920_U0_rows;
wire   [10:0] image_filter_PaintMask_2048_0_1080_1920_U0_cols;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_0_V_read;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_1_V_read;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_p_mask_data_stream_V_read;
wire   [7:0] image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_din;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_write;
wire   [7:0] image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_din;
wire    image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_write;
wire    image_filter_Mat2AXIvideo_U0_ap_start;
wire    image_filter_Mat2AXIvideo_U0_ap_done;
wire    image_filter_Mat2AXIvideo_U0_ap_continue;
wire    image_filter_Mat2AXIvideo_U0_ap_idle;
wire    image_filter_Mat2AXIvideo_U0_ap_ready;
wire   [10:0] image_filter_Mat2AXIvideo_U0_rows;
wire   [10:0] image_filter_Mat2AXIvideo_U0_cols;
wire    image_filter_Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    image_filter_Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire   [15:0] image_filter_Mat2AXIvideo_U0_video_out_TDATA;
wire    image_filter_Mat2AXIvideo_U0_video_out_TVALID;
wire   [1:0] image_filter_Mat2AXIvideo_U0_video_out_TKEEP;
wire   [1:0] image_filter_Mat2AXIvideo_U0_video_out_TSTRB;
wire   [0:0] image_filter_Mat2AXIvideo_U0_video_out_TUSER;
wire   [0:0] image_filter_Mat2AXIvideo_U0_video_out_TLAST;
wire   [0:0] image_filter_Mat2AXIvideo_U0_video_out_TID;
wire   [0:0] image_filter_Mat2AXIvideo_U0_video_out_TDEST;
wire    ap_sig_hs_continue;
wire    img_0_data_stream_0_V_full_n;
wire   [7:0] img_0_data_stream_0_V_dout;
wire    img_0_data_stream_0_V_empty_n;
wire    img_0_data_stream_1_V_full_n;
wire   [7:0] img_0_data_stream_1_V_dout;
wire    img_0_data_stream_1_V_empty_n;
wire    img_1_data_stream_0_V_full_n;
wire   [7:0] img_1_data_stream_0_V_dout;
wire    img_1_data_stream_0_V_empty_n;
wire    img_1_data_stream_1_V_full_n;
wire   [7:0] img_1_data_stream_1_V_dout;
wire    img_1_data_stream_1_V_empty_n;
wire    img_1_data_stream_0_V_13_full_n;
wire   [7:0] img_1_data_stream_0_V_13_dout;
wire    img_1_data_stream_0_V_13_empty_n;
wire    img_1_data_stream_1_V_15_full_n;
wire   [7:0] img_1_data_stream_1_V_15_dout;
wire    img_1_data_stream_1_V_15_empty_n;
wire    img_1_Y_data_stream_0_V_full_n;
wire   [7:0] img_1_Y_data_stream_0_V_dout;
wire    img_1_Y_data_stream_0_V_empty_n;
wire    img_1_UV_data_stream_0_V_full_n;
wire   [7:0] img_1_UV_data_stream_0_V_dout;
wire    img_1_UV_data_stream_0_V_empty_n;
wire    mask_data_stream_0_V_full_n;
wire   [7:0] mask_data_stream_0_V_dout;
wire    mask_data_stream_0_V_empty_n;
wire    dmask_data_stream_0_V_full_n;
wire   [7:0] dmask_data_stream_0_V_dout;
wire    dmask_data_stream_0_V_empty_n;
wire    img_2_data_stream_0_V_full_n;
wire   [7:0] img_2_data_stream_0_V_dout;
wire    img_2_data_stream_0_V_empty_n;
wire    img_2_data_stream_1_V_full_n;
wire   [7:0] img_2_data_stream_1_V_dout;
wire    img_2_data_stream_1_V_empty_n;
reg    ap_sig_hs_done;
wire    ap_sig_hs_ready;

image_filter_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
image_filter_CONTROL_BUS_s_axi_U(
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .rows(rows),
    .cols(cols),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

image_filter_AXIvideo2Mat image_filter_AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_AXIvideo2Mat_U0_ap_start),
    .ap_done(image_filter_AXIvideo2Mat_U0_ap_done),
    .ap_continue(image_filter_AXIvideo2Mat_U0_ap_continue),
    .ap_idle(image_filter_AXIvideo2Mat_U0_ap_idle),
    .ap_ready(image_filter_AXIvideo2Mat_U0_ap_ready),
    .video_in_TDATA(video_in_TDATA),
    .video_in_TVALID(video_in_TVALID),
    .video_in_TREADY(image_filter_AXIvideo2Mat_U0_video_in_TREADY),
    .video_in_TKEEP(video_in_TKEEP),
    .video_in_TSTRB(video_in_TSTRB),
    .video_in_TUSER(video_in_TUSER),
    .video_in_TLAST(video_in_TLAST),
    .video_in_TID(video_in_TID),
    .video_in_TDEST(video_in_TDEST),
    .rows(image_filter_AXIvideo2Mat_U0_rows),
    .cols(image_filter_AXIvideo2Mat_U0_cols),
    .img_data_stream_0_V_din(image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_0_data_stream_0_V_full_n),
    .img_data_stream_0_V_write(image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_0_data_stream_1_V_full_n),
    .img_data_stream_1_V_write(image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_write)
);

image_filter_Duplicate image_filter_Duplicate_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_Duplicate_U0_ap_start),
    .ap_done(image_filter_Duplicate_U0_ap_done),
    .ap_continue(image_filter_Duplicate_U0_ap_continue),
    .ap_idle(image_filter_Duplicate_U0_ap_idle),
    .ap_ready(image_filter_Duplicate_U0_ap_ready),
    .rows(image_filter_Duplicate_U0_rows),
    .cols(image_filter_Duplicate_U0_cols),
    .src_data_stream_0_V_dout(img_0_data_stream_0_V_dout),
    .src_data_stream_0_V_empty_n(img_0_data_stream_0_V_empty_n),
    .src_data_stream_0_V_read(image_filter_Duplicate_U0_src_data_stream_0_V_read),
    .src_data_stream_1_V_dout(img_0_data_stream_1_V_dout),
    .src_data_stream_1_V_empty_n(img_0_data_stream_1_V_empty_n),
    .src_data_stream_1_V_read(image_filter_Duplicate_U0_src_data_stream_1_V_read),
    .dst1_data_stream_0_V_din(image_filter_Duplicate_U0_dst1_data_stream_0_V_din),
    .dst1_data_stream_0_V_full_n(img_1_data_stream_0_V_full_n),
    .dst1_data_stream_0_V_write(image_filter_Duplicate_U0_dst1_data_stream_0_V_write),
    .dst1_data_stream_1_V_din(image_filter_Duplicate_U0_dst1_data_stream_1_V_din),
    .dst1_data_stream_1_V_full_n(img_1_data_stream_1_V_full_n),
    .dst1_data_stream_1_V_write(image_filter_Duplicate_U0_dst1_data_stream_1_V_write),
    .dst2_data_stream_0_V_din(image_filter_Duplicate_U0_dst2_data_stream_0_V_din),
    .dst2_data_stream_0_V_full_n(img_1_data_stream_0_V_13_full_n),
    .dst2_data_stream_0_V_write(image_filter_Duplicate_U0_dst2_data_stream_0_V_write),
    .dst2_data_stream_1_V_din(image_filter_Duplicate_U0_dst2_data_stream_1_V_din),
    .dst2_data_stream_1_V_full_n(img_1_data_stream_1_V_15_full_n),
    .dst2_data_stream_1_V_write(image_filter_Duplicate_U0_dst2_data_stream_1_V_write)
);

image_filter_Split_1080_1920_2048_0_s image_filter_Split_1080_1920_2048_0_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_Split_1080_1920_2048_0_U0_ap_start),
    .ap_done(image_filter_Split_1080_1920_2048_0_U0_ap_done),
    .ap_continue(image_filter_Split_1080_1920_2048_0_U0_ap_continue),
    .ap_idle(image_filter_Split_1080_1920_2048_0_U0_ap_idle),
    .ap_ready(image_filter_Split_1080_1920_2048_0_U0_ap_ready),
    .rows(image_filter_Split_1080_1920_2048_0_U0_rows),
    .cols(image_filter_Split_1080_1920_2048_0_U0_cols),
    .src_data_stream_0_V_dout(img_1_data_stream_0_V_dout),
    .src_data_stream_0_V_empty_n(img_1_data_stream_0_V_empty_n),
    .src_data_stream_0_V_read(image_filter_Split_1080_1920_2048_0_U0_src_data_stream_0_V_read),
    .src_data_stream_1_V_dout(img_1_data_stream_1_V_dout),
    .src_data_stream_1_V_empty_n(img_1_data_stream_1_V_empty_n),
    .src_data_stream_1_V_read(image_filter_Split_1080_1920_2048_0_U0_src_data_stream_1_V_read),
    .dst0_data_stream_V_din(image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_din),
    .dst0_data_stream_V_full_n(img_1_Y_data_stream_0_V_full_n),
    .dst0_data_stream_V_write(image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_write),
    .dst1_data_stream_V_din(image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_din),
    .dst1_data_stream_V_full_n(img_1_UV_data_stream_0_V_full_n),
    .dst1_data_stream_V_write(image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_write)
);

image_filter_Consume_1080_1920_0_s image_filter_Consume_1080_1920_0_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_Consume_1080_1920_0_U0_ap_start),
    .ap_done(image_filter_Consume_1080_1920_0_U0_ap_done),
    .ap_continue(image_filter_Consume_1080_1920_0_U0_ap_continue),
    .ap_idle(image_filter_Consume_1080_1920_0_U0_ap_idle),
    .ap_ready(image_filter_Consume_1080_1920_0_U0_ap_ready),
    .rows(image_filter_Consume_1080_1920_0_U0_rows),
    .cols(image_filter_Consume_1080_1920_0_U0_cols),
    .src_data_stream_V_dout(img_1_UV_data_stream_0_V_dout),
    .src_data_stream_V_empty_n(img_1_UV_data_stream_0_V_empty_n),
    .src_data_stream_V_read(image_filter_Consume_1080_1920_0_U0_src_data_stream_V_read)
);

image_filter_FAST_t_opr image_filter_FAST_t_opr_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_FAST_t_opr_U0_ap_start),
    .ap_done(image_filter_FAST_t_opr_U0_ap_done),
    .ap_continue(image_filter_FAST_t_opr_U0_ap_continue),
    .ap_idle(image_filter_FAST_t_opr_U0_ap_idle),
    .ap_ready(image_filter_FAST_t_opr_U0_ap_ready),
    .rows(image_filter_FAST_t_opr_U0_rows),
    .cols(image_filter_FAST_t_opr_U0_cols),
    .p_src_data_stream_V_dout(img_1_Y_data_stream_0_V_dout),
    .p_src_data_stream_V_empty_n(img_1_Y_data_stream_0_V_empty_n),
    .p_src_data_stream_V_read(image_filter_FAST_t_opr_U0_p_src_data_stream_V_read),
    .p_mask_data_stream_V_din(image_filter_FAST_t_opr_U0_p_mask_data_stream_V_din),
    .p_mask_data_stream_V_full_n(mask_data_stream_0_V_full_n),
    .p_mask_data_stream_V_write(image_filter_FAST_t_opr_U0_p_mask_data_stream_V_write)
);

image_filter_Dilate_0_0_1080_1920_s image_filter_Dilate_0_0_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_Dilate_0_0_1080_1920_U0_ap_start),
    .ap_done(image_filter_Dilate_0_0_1080_1920_U0_ap_done),
    .ap_continue(image_filter_Dilate_0_0_1080_1920_U0_ap_continue),
    .ap_idle(image_filter_Dilate_0_0_1080_1920_U0_ap_idle),
    .ap_ready(image_filter_Dilate_0_0_1080_1920_U0_ap_ready),
    .rows(image_filter_Dilate_0_0_1080_1920_U0_rows),
    .cols(image_filter_Dilate_0_0_1080_1920_U0_cols),
    .p_src_data_stream_V_dout(mask_data_stream_0_V_dout),
    .p_src_data_stream_V_empty_n(mask_data_stream_0_V_empty_n),
    .p_src_data_stream_V_read(image_filter_Dilate_0_0_1080_1920_U0_p_src_data_stream_V_read),
    .p_dst_data_stream_V_din(image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_din),
    .p_dst_data_stream_V_full_n(dmask_data_stream_0_V_full_n),
    .p_dst_data_stream_V_write(image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_write)
);

image_filter_PaintMask_2048_0_1080_1920_s image_filter_PaintMask_2048_0_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_PaintMask_2048_0_1080_1920_U0_ap_start),
    .ap_done(image_filter_PaintMask_2048_0_1080_1920_U0_ap_done),
    .ap_continue(image_filter_PaintMask_2048_0_1080_1920_U0_ap_continue),
    .ap_idle(image_filter_PaintMask_2048_0_1080_1920_U0_ap_idle),
    .ap_ready(image_filter_PaintMask_2048_0_1080_1920_U0_ap_ready),
    .rows(image_filter_PaintMask_2048_0_1080_1920_U0_rows),
    .cols(image_filter_PaintMask_2048_0_1080_1920_U0_cols),
    .p_src_data_stream_0_V_dout(img_1_data_stream_0_V_13_dout),
    .p_src_data_stream_0_V_empty_n(img_1_data_stream_0_V_13_empty_n),
    .p_src_data_stream_0_V_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(img_1_data_stream_1_V_15_dout),
    .p_src_data_stream_1_V_empty_n(img_1_data_stream_1_V_15_empty_n),
    .p_src_data_stream_1_V_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_1_V_read),
    .p_mask_data_stream_V_dout(dmask_data_stream_0_V_dout),
    .p_mask_data_stream_V_empty_n(dmask_data_stream_0_V_empty_n),
    .p_mask_data_stream_V_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_mask_data_stream_V_read),
    .p_dst_data_stream_0_V_din(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(img_2_data_stream_0_V_full_n),
    .p_dst_data_stream_0_V_write(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(img_2_data_stream_1_V_full_n),
    .p_dst_data_stream_1_V_write(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_write)
);

image_filter_Mat2AXIvideo image_filter_Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(image_filter_Mat2AXIvideo_U0_ap_start),
    .ap_done(image_filter_Mat2AXIvideo_U0_ap_done),
    .ap_continue(image_filter_Mat2AXIvideo_U0_ap_continue),
    .ap_idle(image_filter_Mat2AXIvideo_U0_ap_idle),
    .ap_ready(image_filter_Mat2AXIvideo_U0_ap_ready),
    .rows(image_filter_Mat2AXIvideo_U0_rows),
    .cols(image_filter_Mat2AXIvideo_U0_cols),
    .img_data_stream_0_V_dout(img_2_data_stream_0_V_dout),
    .img_data_stream_0_V_empty_n(img_2_data_stream_0_V_empty_n),
    .img_data_stream_0_V_read(image_filter_Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_2_data_stream_1_V_dout),
    .img_data_stream_1_V_empty_n(img_2_data_stream_1_V_empty_n),
    .img_data_stream_1_V_read(image_filter_Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .video_out_TDATA(image_filter_Mat2AXIvideo_U0_video_out_TDATA),
    .video_out_TVALID(image_filter_Mat2AXIvideo_U0_video_out_TVALID),
    .video_out_TREADY(video_out_TREADY),
    .video_out_TKEEP(image_filter_Mat2AXIvideo_U0_video_out_TKEEP),
    .video_out_TSTRB(image_filter_Mat2AXIvideo_U0_video_out_TSTRB),
    .video_out_TUSER(image_filter_Mat2AXIvideo_U0_video_out_TUSER),
    .video_out_TLAST(image_filter_Mat2AXIvideo_U0_video_out_TLAST),
    .video_out_TID(image_filter_Mat2AXIvideo_U0_video_out_TID),
    .video_out_TDEST(image_filter_Mat2AXIvideo_U0_video_out_TDEST)
);

FIFO_image_filter_img_0_data_stream_0_V img_0_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_0_data_stream_0_V_full_n),
    .if_write(image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_0_data_stream_0_V_dout),
    .if_empty_n(img_0_data_stream_0_V_empty_n),
    .if_read(image_filter_Duplicate_U0_src_data_stream_0_V_read)
);

FIFO_image_filter_img_0_data_stream_1_V img_0_data_stream_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_0_data_stream_1_V_full_n),
    .if_write(image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_0_data_stream_1_V_dout),
    .if_empty_n(img_0_data_stream_1_V_empty_n),
    .if_read(image_filter_Duplicate_U0_src_data_stream_1_V_read)
);

FIFO_image_filter_img_1_data_stream_0_V img_1_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Duplicate_U0_dst1_data_stream_0_V_din),
    .if_full_n(img_1_data_stream_0_V_full_n),
    .if_write(image_filter_Duplicate_U0_dst1_data_stream_0_V_write),
    .if_dout(img_1_data_stream_0_V_dout),
    .if_empty_n(img_1_data_stream_0_V_empty_n),
    .if_read(image_filter_Split_1080_1920_2048_0_U0_src_data_stream_0_V_read)
);

FIFO_image_filter_img_1_data_stream_1_V img_1_data_stream_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Duplicate_U0_dst1_data_stream_1_V_din),
    .if_full_n(img_1_data_stream_1_V_full_n),
    .if_write(image_filter_Duplicate_U0_dst1_data_stream_1_V_write),
    .if_dout(img_1_data_stream_1_V_dout),
    .if_empty_n(img_1_data_stream_1_V_empty_n),
    .if_read(image_filter_Split_1080_1920_2048_0_U0_src_data_stream_1_V_read)
);

FIFO_image_filter_img_1_data_stream_0_V_13 img_1_data_stream_0_V_13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Duplicate_U0_dst2_data_stream_0_V_din),
    .if_full_n(img_1_data_stream_0_V_13_full_n),
    .if_write(image_filter_Duplicate_U0_dst2_data_stream_0_V_write),
    .if_dout(img_1_data_stream_0_V_13_dout),
    .if_empty_n(img_1_data_stream_0_V_13_empty_n),
    .if_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_0_V_read)
);

FIFO_image_filter_img_1_data_stream_1_V_15 img_1_data_stream_1_V_15_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Duplicate_U0_dst2_data_stream_1_V_din),
    .if_full_n(img_1_data_stream_1_V_15_full_n),
    .if_write(image_filter_Duplicate_U0_dst2_data_stream_1_V_write),
    .if_dout(img_1_data_stream_1_V_15_dout),
    .if_empty_n(img_1_data_stream_1_V_15_empty_n),
    .if_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_1_V_read)
);

FIFO_image_filter_img_1_Y_data_stream_0_V img_1_Y_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_din),
    .if_full_n(img_1_Y_data_stream_0_V_full_n),
    .if_write(image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_write),
    .if_dout(img_1_Y_data_stream_0_V_dout),
    .if_empty_n(img_1_Y_data_stream_0_V_empty_n),
    .if_read(image_filter_FAST_t_opr_U0_p_src_data_stream_V_read)
);

FIFO_image_filter_img_1_UV_data_stream_0_V img_1_UV_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_din),
    .if_full_n(img_1_UV_data_stream_0_V_full_n),
    .if_write(image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_write),
    .if_dout(img_1_UV_data_stream_0_V_dout),
    .if_empty_n(img_1_UV_data_stream_0_V_empty_n),
    .if_read(image_filter_Consume_1080_1920_0_U0_src_data_stream_V_read)
);

FIFO_image_filter_mask_data_stream_0_V mask_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_FAST_t_opr_U0_p_mask_data_stream_V_din),
    .if_full_n(mask_data_stream_0_V_full_n),
    .if_write(image_filter_FAST_t_opr_U0_p_mask_data_stream_V_write),
    .if_dout(mask_data_stream_0_V_dout),
    .if_empty_n(mask_data_stream_0_V_empty_n),
    .if_read(image_filter_Dilate_0_0_1080_1920_U0_p_src_data_stream_V_read)
);

FIFO_image_filter_dmask_data_stream_0_V dmask_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_din),
    .if_full_n(dmask_data_stream_0_V_full_n),
    .if_write(image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_write),
    .if_dout(dmask_data_stream_0_V_dout),
    .if_empty_n(dmask_data_stream_0_V_empty_n),
    .if_read(image_filter_PaintMask_2048_0_1080_1920_U0_p_mask_data_stream_V_read)
);

FIFO_image_filter_img_2_data_stream_0_V img_2_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_din),
    .if_full_n(img_2_data_stream_0_V_full_n),
    .if_write(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_write),
    .if_dout(img_2_data_stream_0_V_dout),
    .if_empty_n(img_2_data_stream_0_V_empty_n),
    .if_read(image_filter_Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

FIFO_image_filter_img_2_data_stream_1_V img_2_data_stream_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_din),
    .if_full_n(img_2_data_stream_1_V_full_n),
    .if_write(image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_write),
    .if_dout(img_2_data_stream_1_V_dout),
    .if_empty_n(img_2_data_stream_1_V_empty_n),
    .if_read(image_filter_Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

always @ (*) begin
    if (((1'b1 == image_filter_AXIvideo2Mat_U0_ap_idle) & (1'b1 == image_filter_Duplicate_U0_ap_idle) & (1'b1 == image_filter_Split_1080_1920_2048_0_U0_ap_idle) & (1'b1 == image_filter_Consume_1080_1920_0_U0_ap_idle) & (1'b1 == image_filter_FAST_t_opr_U0_ap_idle) & (1'b1 == image_filter_Dilate_0_0_1080_1920_U0_ap_idle) & (1'b1 == image_filter_PaintMask_2048_0_1080_1920_U0_ap_idle) & (1'b1 == image_filter_Mat2AXIvideo_U0_ap_idle))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == image_filter_Mat2AXIvideo_U0_ap_done)) begin
        ap_sig_hs_done = 1'b1;
    end else begin
        ap_sig_hs_done = 1'b0;
    end
end

assign ap_done = ap_sig_hs_done;

assign ap_ready = image_filter_AXIvideo2Mat_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sig_hs_continue = 1'b1;

assign ap_sig_hs_ready = image_filter_AXIvideo2Mat_U0_ap_ready;

assign image_filter_AXIvideo2Mat_U0_ap_continue = 1'b1;

assign image_filter_AXIvideo2Mat_U0_ap_start = ap_start;

assign image_filter_AXIvideo2Mat_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_AXIvideo2Mat_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Consume_1080_1920_0_U0_ap_continue = 1'b1;

assign image_filter_Consume_1080_1920_0_U0_ap_start = ap_start;

assign image_filter_Consume_1080_1920_0_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Consume_1080_1920_0_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Dilate_0_0_1080_1920_U0_ap_continue = 1'b1;

assign image_filter_Dilate_0_0_1080_1920_U0_ap_start = ap_start;

assign image_filter_Dilate_0_0_1080_1920_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Dilate_0_0_1080_1920_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Duplicate_U0_ap_continue = 1'b1;

assign image_filter_Duplicate_U0_ap_start = ap_start;

assign image_filter_Duplicate_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Duplicate_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_FAST_t_opr_U0_ap_continue = 1'b1;

assign image_filter_FAST_t_opr_U0_ap_start = ap_start;

assign image_filter_FAST_t_opr_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_FAST_t_opr_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Mat2AXIvideo_U0_ap_continue = 1'b1;

assign image_filter_Mat2AXIvideo_U0_ap_start = ap_start;

assign image_filter_Mat2AXIvideo_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Mat2AXIvideo_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_PaintMask_2048_0_1080_1920_U0_ap_continue = 1'b1;

assign image_filter_PaintMask_2048_0_1080_1920_U0_ap_start = ap_start;

assign image_filter_PaintMask_2048_0_1080_1920_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_PaintMask_2048_0_1080_1920_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Split_1080_1920_2048_0_U0_ap_continue = 1'b1;

assign image_filter_Split_1080_1920_2048_0_U0_ap_start = ap_start;

assign image_filter_Split_1080_1920_2048_0_U0_cols = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign image_filter_Split_1080_1920_2048_0_U0_rows = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign video_in_TREADY = image_filter_AXIvideo2Mat_U0_video_in_TREADY;

assign video_out_TDATA = image_filter_Mat2AXIvideo_U0_video_out_TDATA;

assign video_out_TDEST = image_filter_Mat2AXIvideo_U0_video_out_TDEST;

assign video_out_TID = image_filter_Mat2AXIvideo_U0_video_out_TID;

assign video_out_TKEEP = image_filter_Mat2AXIvideo_U0_video_out_TKEEP;

assign video_out_TLAST = image_filter_Mat2AXIvideo_U0_video_out_TLAST;

assign video_out_TSTRB = image_filter_Mat2AXIvideo_U0_video_out_TSTRB;

assign video_out_TUSER = image_filter_Mat2AXIvideo_U0_video_out_TUSER;

assign video_out_TVALID = image_filter_Mat2AXIvideo_U0_video_out_TVALID;

endmodule //image_filter
