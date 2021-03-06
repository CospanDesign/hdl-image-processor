// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Consume_1080_1920_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows,
        cols,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read
);

parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_1 = 11'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [10:0] rows;
input  [10:0] cols;
input  [7:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg    src_data_stream_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_41;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it0;
reg   [0:0] exitcond_i_reg_137;
reg   [10:0] p_7_i_reg_85;
reg    ap_sig_59;
wire   [0:0] exitcond2_i_fu_96_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_71;
wire   [10:0] i_V_fu_101_p2;
reg   [10:0] i_V_reg_132;
wire   [0:0] exitcond_i_fu_107_p2;
reg    ap_sig_78;
wire   [10:0] j_V_fu_112_p2;
reg   [10:0] p_i_reg_74;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_101;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'b1;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond2_i_fu_96_p2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & ~(1'b0 == exitcond_i_fu_107_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond2_i_fu_96_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & (1'b0 == exitcond_i_fu_107_p2))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond2_i_fu_96_p2)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & ~(1'b0 == exitcond_i_fu_107_p2)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & (1'b0 == exitcond_i_fu_107_p2))) begin
        p_7_i_reg_85 <= j_V_fu_112_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond2_i_fu_96_p2))) begin
        p_7_i_reg_85 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_i_reg_74 <= i_V_reg_132;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_59)) begin
        p_i_reg_74 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78))) begin
        exitcond_i_reg_137 <= exitcond_i_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_132 <= i_V_fu_101_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond2_i_fu_96_p2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond2_i_fu_96_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_41) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_71) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_101) begin
        ap_sig_cseq_ST_st5_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_137 == 1'b0))) begin
        src_data_stream_V_blk_n = src_data_stream_V_empty_n;
    end else begin
        src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_i_reg_137 == 1'b0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78))) begin
        src_data_stream_V_read = 1'b1;
    end else begin
        src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_59) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == exitcond2_i_fu_96_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & ~(1'b0 == exitcond_i_fu_107_p2))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it1) & ap_sig_78) & ~(1'b0 == exitcond_i_fu_107_p2))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_101 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_41 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_59 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_sig_71 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_78 = ((exitcond_i_reg_137 == 1'b0) & (src_data_stream_V_empty_n == 1'b0));
end

assign exitcond2_i_fu_96_p2 = ((p_i_reg_74 == rows) ? 1'b1 : 1'b0);

assign exitcond_i_fu_107_p2 = ((p_7_i_reg_85 == cols) ? 1'b1 : 1'b0);

assign i_V_fu_101_p2 = (p_i_reg_74 + ap_const_lv11_1);

assign j_V_fu_112_p2 = (p_7_i_reg_85 + ap_const_lv11_1);

endmodule //image_filter_Consume_1080_1920_0_s
