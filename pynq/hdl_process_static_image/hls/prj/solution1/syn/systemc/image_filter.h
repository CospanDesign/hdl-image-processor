// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _image_filter_HH_
#define _image_filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_AXIvideo2Mat.h"
#include "image_filter_Duplicate.h"
#include "image_filter_Split_1080_1920_2048_0_s.h"
#include "image_filter_Consume_1080_1920_0_s.h"
#include "image_filter_FAST_t_opr.h"
#include "image_filter_Dilate_0_0_1080_1920_s.h"
#include "image_filter_PaintMask_2048_0_1080_1920_s.h"
#include "image_filter_Mat2AXIvideo.h"
#include "FIFO_image_filter_img_0_data_stream_0_V.h"
#include "FIFO_image_filter_img_0_data_stream_1_V.h"
#include "FIFO_image_filter_img_1_data_stream_0_V.h"
#include "FIFO_image_filter_img_1_data_stream_1_V.h"
#include "FIFO_image_filter_img_1_data_stream_0_V_13.h"
#include "FIFO_image_filter_img_1_data_stream_1_V_15.h"
#include "FIFO_image_filter_img_1_Y_data_stream_0_V.h"
#include "FIFO_image_filter_img_1_UV_data_stream_0_V.h"
#include "FIFO_image_filter_mask_data_stream_0_V.h"
#include "FIFO_image_filter_dmask_data_stream_0_V.h"
#include "FIFO_image_filter_img_2_data_stream_0_V.h"
#include "FIFO_image_filter_img_2_data_stream_1_V.h"
#include "image_filter_CONTROL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32>
struct image_filter : public sc_module {
    // Port declarations 38
    sc_in< sc_logic > s_axi_CONTROL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CONTROL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH/8> > s_axi_CONTROL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CONTROL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CONTROL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_BUS_ADDR_WIDTH> > s_axi_CONTROL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CONTROL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_BUS_DATA_WIDTH> > s_axi_CONTROL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CONTROL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CONTROL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CONTROL_BUS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > interrupt;
    sc_in< sc_lv<16> > video_in_TDATA;
    sc_in< sc_lv<2> > video_in_TKEEP;
    sc_in< sc_lv<2> > video_in_TSTRB;
    sc_in< sc_lv<1> > video_in_TUSER;
    sc_in< sc_lv<1> > video_in_TLAST;
    sc_in< sc_lv<1> > video_in_TID;
    sc_in< sc_lv<1> > video_in_TDEST;
    sc_out< sc_lv<16> > video_out_TDATA;
    sc_out< sc_lv<2> > video_out_TKEEP;
    sc_out< sc_lv<2> > video_out_TSTRB;
    sc_out< sc_lv<1> > video_out_TUSER;
    sc_out< sc_lv<1> > video_out_TLAST;
    sc_out< sc_lv<1> > video_out_TID;
    sc_out< sc_lv<1> > video_out_TDEST;
    sc_in< sc_logic > video_in_TVALID;
    sc_out< sc_logic > video_in_TREADY;
    sc_out< sc_logic > video_out_TVALID;
    sc_in< sc_logic > video_out_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    image_filter(sc_module_name name);
    SC_HAS_PROCESS(image_filter);

    ~image_filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    image_filter_CONTROL_BUS_s_axi<C_S_AXI_CONTROL_BUS_ADDR_WIDTH,C_S_AXI_CONTROL_BUS_DATA_WIDTH>* image_filter_CONTROL_BUS_s_axi_U;
    image_filter_AXIvideo2Mat* image_filter_AXIvideo2Mat_U0;
    image_filter_Duplicate* image_filter_Duplicate_U0;
    image_filter_Split_1080_1920_2048_0_s* image_filter_Split_1080_1920_2048_0_U0;
    image_filter_Consume_1080_1920_0_s* image_filter_Consume_1080_1920_0_U0;
    image_filter_FAST_t_opr* image_filter_FAST_t_opr_U0;
    image_filter_Dilate_0_0_1080_1920_s* image_filter_Dilate_0_0_1080_1920_U0;
    image_filter_PaintMask_2048_0_1080_1920_s* image_filter_PaintMask_2048_0_1080_1920_U0;
    image_filter_Mat2AXIvideo* image_filter_Mat2AXIvideo_U0;
    FIFO_image_filter_img_0_data_stream_0_V* img_0_data_stream_0_V_U;
    FIFO_image_filter_img_0_data_stream_1_V* img_0_data_stream_1_V_U;
    FIFO_image_filter_img_1_data_stream_0_V* img_1_data_stream_0_V_U;
    FIFO_image_filter_img_1_data_stream_1_V* img_1_data_stream_1_V_U;
    FIFO_image_filter_img_1_data_stream_0_V_13* img_1_data_stream_0_V_13_U;
    FIFO_image_filter_img_1_data_stream_1_V_15* img_1_data_stream_1_V_15_U;
    FIFO_image_filter_img_1_Y_data_stream_0_V* img_1_Y_data_stream_0_V_U;
    FIFO_image_filter_img_1_UV_data_stream_0_V* img_1_UV_data_stream_0_V_U;
    FIFO_image_filter_mask_data_stream_0_V* mask_data_stream_0_V_U;
    FIFO_image_filter_dmask_data_stream_0_V* dmask_data_stream_0_V_U;
    FIFO_image_filter_img_2_data_stream_0_V* img_2_data_stream_0_V_U;
    FIFO_image_filter_img_2_data_stream_1_V* img_2_data_stream_1_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > rows;
    sc_signal< sc_lv<32> > cols;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_ap_start;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_ap_done;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_ap_continue;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_ap_idle;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_video_in_TREADY;
    sc_signal< sc_lv<11> > image_filter_AXIvideo2Mat_U0_rows;
    sc_signal< sc_lv<11> > image_filter_AXIvideo2Mat_U0_cols;
    sc_signal< sc_lv<8> > image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_din;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_img_data_stream_0_V_write;
    sc_signal< sc_lv<8> > image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_din;
    sc_signal< sc_logic > image_filter_AXIvideo2Mat_U0_img_data_stream_1_V_write;
    sc_signal< sc_logic > image_filter_Duplicate_U0_ap_start;
    sc_signal< sc_logic > image_filter_Duplicate_U0_ap_done;
    sc_signal< sc_logic > image_filter_Duplicate_U0_ap_continue;
    sc_signal< sc_logic > image_filter_Duplicate_U0_ap_idle;
    sc_signal< sc_logic > image_filter_Duplicate_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_Duplicate_U0_rows;
    sc_signal< sc_lv<11> > image_filter_Duplicate_U0_cols;
    sc_signal< sc_logic > image_filter_Duplicate_U0_src_data_stream_0_V_read;
    sc_signal< sc_logic > image_filter_Duplicate_U0_src_data_stream_1_V_read;
    sc_signal< sc_lv<8> > image_filter_Duplicate_U0_dst1_data_stream_0_V_din;
    sc_signal< sc_logic > image_filter_Duplicate_U0_dst1_data_stream_0_V_write;
    sc_signal< sc_lv<8> > image_filter_Duplicate_U0_dst1_data_stream_1_V_din;
    sc_signal< sc_logic > image_filter_Duplicate_U0_dst1_data_stream_1_V_write;
    sc_signal< sc_lv<8> > image_filter_Duplicate_U0_dst2_data_stream_0_V_din;
    sc_signal< sc_logic > image_filter_Duplicate_U0_dst2_data_stream_0_V_write;
    sc_signal< sc_lv<8> > image_filter_Duplicate_U0_dst2_data_stream_1_V_din;
    sc_signal< sc_logic > image_filter_Duplicate_U0_dst2_data_stream_1_V_write;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_ap_start;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_ap_done;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_ap_continue;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_ap_idle;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_Split_1080_1920_2048_0_U0_rows;
    sc_signal< sc_lv<11> > image_filter_Split_1080_1920_2048_0_U0_cols;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_src_data_stream_0_V_read;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_src_data_stream_1_V_read;
    sc_signal< sc_lv<8> > image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_din;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_dst0_data_stream_V_write;
    sc_signal< sc_lv<8> > image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > image_filter_Split_1080_1920_2048_0_U0_dst1_data_stream_V_write;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_ap_start;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_ap_done;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_ap_continue;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_ap_idle;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_Consume_1080_1920_0_U0_rows;
    sc_signal< sc_lv<11> > image_filter_Consume_1080_1920_0_U0_cols;
    sc_signal< sc_logic > image_filter_Consume_1080_1920_0_U0_src_data_stream_V_read;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_ap_start;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_ap_done;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_ap_continue;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_ap_idle;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_FAST_t_opr_U0_rows;
    sc_signal< sc_lv<11> > image_filter_FAST_t_opr_U0_cols;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > image_filter_FAST_t_opr_U0_p_mask_data_stream_V_din;
    sc_signal< sc_logic > image_filter_FAST_t_opr_U0_p_mask_data_stream_V_write;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_ap_start;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_ap_done;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_ap_continue;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_ap_idle;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_Dilate_0_0_1080_1920_U0_rows;
    sc_signal< sc_lv<11> > image_filter_Dilate_0_0_1080_1920_U0_cols;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_din;
    sc_signal< sc_logic > image_filter_Dilate_0_0_1080_1920_U0_p_dst_data_stream_V_write;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_ap_start;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_ap_done;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_ap_continue;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_ap_idle;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_PaintMask_2048_0_1080_1920_U0_rows;
    sc_signal< sc_lv<11> > image_filter_PaintMask_2048_0_1080_1920_U0_cols;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_0_V_read;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_p_src_data_stream_1_V_read;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_p_mask_data_stream_V_read;
    sc_signal< sc_lv<8> > image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_din;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_0_V_write;
    sc_signal< sc_lv<8> > image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_din;
    sc_signal< sc_logic > image_filter_PaintMask_2048_0_1080_1920_U0_p_dst_data_stream_1_V_write;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_lv<11> > image_filter_Mat2AXIvideo_U0_rows;
    sc_signal< sc_lv<11> > image_filter_Mat2AXIvideo_U0_cols;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_img_data_stream_0_V_read;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_img_data_stream_1_V_read;
    sc_signal< sc_lv<16> > image_filter_Mat2AXIvideo_U0_video_out_TDATA;
    sc_signal< sc_logic > image_filter_Mat2AXIvideo_U0_video_out_TVALID;
    sc_signal< sc_lv<2> > image_filter_Mat2AXIvideo_U0_video_out_TKEEP;
    sc_signal< sc_lv<2> > image_filter_Mat2AXIvideo_U0_video_out_TSTRB;
    sc_signal< sc_lv<1> > image_filter_Mat2AXIvideo_U0_video_out_TUSER;
    sc_signal< sc_lv<1> > image_filter_Mat2AXIvideo_U0_video_out_TLAST;
    sc_signal< sc_lv<1> > image_filter_Mat2AXIvideo_U0_video_out_TID;
    sc_signal< sc_lv<1> > image_filter_Mat2AXIvideo_U0_video_out_TDEST;
    sc_signal< sc_logic > ap_sig_hs_continue;
    sc_signal< sc_logic > img_0_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_0_V_dout;
    sc_signal< sc_logic > img_0_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_0_data_stream_1_V_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_1_V_dout;
    sc_signal< sc_logic > img_0_data_stream_1_V_empty_n;
    sc_signal< sc_logic > img_1_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > img_1_data_stream_0_V_dout;
    sc_signal< sc_logic > img_1_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_1_data_stream_1_V_full_n;
    sc_signal< sc_lv<8> > img_1_data_stream_1_V_dout;
    sc_signal< sc_logic > img_1_data_stream_1_V_empty_n;
    sc_signal< sc_logic > img_1_data_stream_0_V_13_full_n;
    sc_signal< sc_lv<8> > img_1_data_stream_0_V_13_dout;
    sc_signal< sc_logic > img_1_data_stream_0_V_13_empty_n;
    sc_signal< sc_logic > img_1_data_stream_1_V_15_full_n;
    sc_signal< sc_lv<8> > img_1_data_stream_1_V_15_dout;
    sc_signal< sc_logic > img_1_data_stream_1_V_15_empty_n;
    sc_signal< sc_logic > img_1_Y_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > img_1_Y_data_stream_0_V_dout;
    sc_signal< sc_logic > img_1_Y_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_1_UV_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > img_1_UV_data_stream_0_V_dout;
    sc_signal< sc_logic > img_1_UV_data_stream_0_V_empty_n;
    sc_signal< sc_logic > mask_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > mask_data_stream_0_V_dout;
    sc_signal< sc_logic > mask_data_stream_0_V_empty_n;
    sc_signal< sc_logic > dmask_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > dmask_data_stream_0_V_dout;
    sc_signal< sc_logic > dmask_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_2_data_stream_0_V_full_n;
    sc_signal< sc_lv<8> > img_2_data_stream_0_V_dout;
    sc_signal< sc_logic > img_2_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_2_data_stream_1_V_full_n;
    sc_signal< sc_lv<8> > img_2_data_stream_1_V_dout;
    sc_signal< sc_logic > img_2_data_stream_1_V_empty_n;
    sc_signal< sc_logic > ap_sig_hs_done;
    sc_signal< sc_logic > ap_sig_hs_ready;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_logic ap_const_logic_0;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_hs_continue();
    void thread_ap_sig_hs_done();
    void thread_ap_sig_hs_ready();
    void thread_image_filter_AXIvideo2Mat_U0_ap_continue();
    void thread_image_filter_AXIvideo2Mat_U0_ap_start();
    void thread_image_filter_AXIvideo2Mat_U0_cols();
    void thread_image_filter_AXIvideo2Mat_U0_rows();
    void thread_image_filter_Consume_1080_1920_0_U0_ap_continue();
    void thread_image_filter_Consume_1080_1920_0_U0_ap_start();
    void thread_image_filter_Consume_1080_1920_0_U0_cols();
    void thread_image_filter_Consume_1080_1920_0_U0_rows();
    void thread_image_filter_Dilate_0_0_1080_1920_U0_ap_continue();
    void thread_image_filter_Dilate_0_0_1080_1920_U0_ap_start();
    void thread_image_filter_Dilate_0_0_1080_1920_U0_cols();
    void thread_image_filter_Dilate_0_0_1080_1920_U0_rows();
    void thread_image_filter_Duplicate_U0_ap_continue();
    void thread_image_filter_Duplicate_U0_ap_start();
    void thread_image_filter_Duplicate_U0_cols();
    void thread_image_filter_Duplicate_U0_rows();
    void thread_image_filter_FAST_t_opr_U0_ap_continue();
    void thread_image_filter_FAST_t_opr_U0_ap_start();
    void thread_image_filter_FAST_t_opr_U0_cols();
    void thread_image_filter_FAST_t_opr_U0_rows();
    void thread_image_filter_Mat2AXIvideo_U0_ap_continue();
    void thread_image_filter_Mat2AXIvideo_U0_ap_start();
    void thread_image_filter_Mat2AXIvideo_U0_cols();
    void thread_image_filter_Mat2AXIvideo_U0_rows();
    void thread_image_filter_PaintMask_2048_0_1080_1920_U0_ap_continue();
    void thread_image_filter_PaintMask_2048_0_1080_1920_U0_ap_start();
    void thread_image_filter_PaintMask_2048_0_1080_1920_U0_cols();
    void thread_image_filter_PaintMask_2048_0_1080_1920_U0_rows();
    void thread_image_filter_Split_1080_1920_2048_0_U0_ap_continue();
    void thread_image_filter_Split_1080_1920_2048_0_U0_ap_start();
    void thread_image_filter_Split_1080_1920_2048_0_U0_cols();
    void thread_image_filter_Split_1080_1920_2048_0_U0_rows();
    void thread_video_in_TREADY();
    void thread_video_out_TDATA();
    void thread_video_out_TDEST();
    void thread_video_out_TID();
    void thread_video_out_TKEEP();
    void thread_video_out_TLAST();
    void thread_video_out_TSTRB();
    void thread_video_out_TUSER();
    void thread_video_out_TVALID();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
