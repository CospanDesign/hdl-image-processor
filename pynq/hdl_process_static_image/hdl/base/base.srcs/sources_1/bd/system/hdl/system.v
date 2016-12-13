//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
//Date        : Tue Dec 13 01:43:36 2016
//Host        : yogurt running 64-bit Ubuntu 14.04.4 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module audio_imp_P9M2FY
   (S_AXI_LITE_araddr,
    S_AXI_LITE_arprot,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awprot,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wstrb,
    S_AXI_LITE_wvalid,
    clk_i,
    pdm_audio_i,
    pdm_audio_shutdown,
    pdm_m_clk,
    pwm_audio_o,
    s_axi_lite_aresetn,
    sel);
  input [31:0]S_AXI_LITE_araddr;
  input [2:0]S_AXI_LITE_arprot;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  input [2:0]S_AXI_LITE_awprot;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input [3:0]S_AXI_LITE_wstrb;
  input S_AXI_LITE_wvalid;
  input clk_i;
  input pdm_audio_i;
  output [0:0]pdm_audio_shutdown;
  output [0:0]pdm_m_clk;
  output [0:0]pwm_audio_o;
  input [0:0]s_axi_lite_aresetn;
  input [0:0]sel;

  wire [31:0]S_AXI_LITE_1_ARADDR;
  wire [2:0]S_AXI_LITE_1_ARPROT;
  wire S_AXI_LITE_1_ARREADY;
  wire S_AXI_LITE_1_ARVALID;
  wire [31:0]S_AXI_LITE_1_AWADDR;
  wire [2:0]S_AXI_LITE_1_AWPROT;
  wire S_AXI_LITE_1_AWREADY;
  wire S_AXI_LITE_1_AWVALID;
  wire S_AXI_LITE_1_BREADY;
  wire [1:0]S_AXI_LITE_1_BRESP;
  wire S_AXI_LITE_1_BVALID;
  wire [31:0]S_AXI_LITE_1_RDATA;
  wire S_AXI_LITE_1_RREADY;
  wire [1:0]S_AXI_LITE_1_RRESP;
  wire S_AXI_LITE_1_RVALID;
  wire [31:0]S_AXI_LITE_1_WDATA;
  wire S_AXI_LITE_1_WREADY;
  wire [3:0]S_AXI_LITE_1_WSTRB;
  wire S_AXI_LITE_1_WVALID;
  wire audio_direct_0_pdm_m_clk_o;
  wire audio_direct_0_pwm_audio_o;
  wire audio_direct_0_pwm_audio_shutdown;
  wire [0:0]audio_path_sel_Dout;
  wire d_axi_pdm_1_pdm_m_clk_o;
  wire d_axi_pdm_1_pwm_audio;
  wire d_axi_pdm_1_pwm_sdaudio_o;
  wire pdm_audio_i_1;
  wire pdm_audio_shutdown_mux_y;
  wire pdm_m_clk_mux_y;
  wire processing_system7_0_FCLK_CLK0;
  wire pwm_audio_o_mux_y;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;

  assign S_AXI_LITE_1_ARADDR = S_AXI_LITE_araddr[31:0];
  assign S_AXI_LITE_1_ARPROT = S_AXI_LITE_arprot[2:0];
  assign S_AXI_LITE_1_ARVALID = S_AXI_LITE_arvalid;
  assign S_AXI_LITE_1_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign S_AXI_LITE_1_AWPROT = S_AXI_LITE_awprot[2:0];
  assign S_AXI_LITE_1_AWVALID = S_AXI_LITE_awvalid;
  assign S_AXI_LITE_1_BREADY = S_AXI_LITE_bready;
  assign S_AXI_LITE_1_RREADY = S_AXI_LITE_rready;
  assign S_AXI_LITE_1_WDATA = S_AXI_LITE_wdata[31:0];
  assign S_AXI_LITE_1_WSTRB = S_AXI_LITE_wstrb[3:0];
  assign S_AXI_LITE_1_WVALID = S_AXI_LITE_wvalid;
  assign S_AXI_LITE_arready = S_AXI_LITE_1_ARREADY;
  assign S_AXI_LITE_awready = S_AXI_LITE_1_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = S_AXI_LITE_1_BRESP;
  assign S_AXI_LITE_bvalid = S_AXI_LITE_1_BVALID;
  assign S_AXI_LITE_rdata[31:0] = S_AXI_LITE_1_RDATA;
  assign S_AXI_LITE_rresp[1:0] = S_AXI_LITE_1_RRESP;
  assign S_AXI_LITE_rvalid = S_AXI_LITE_1_RVALID;
  assign S_AXI_LITE_wready = S_AXI_LITE_1_WREADY;
  assign audio_path_sel_Dout = sel[0];
  assign pdm_audio_i_1 = pdm_audio_i;
  assign pdm_audio_shutdown[0] = pdm_audio_shutdown_mux_y;
  assign pdm_m_clk[0] = pdm_m_clk_mux_y;
  assign processing_system7_0_FCLK_CLK0 = clk_i;
  assign pwm_audio_o[0] = pwm_audio_o_mux_y;
  assign rst_processing_system7_0_100M_peripheral_aresetn = s_axi_lite_aresetn[0];
  system_audio_direct_0_0 audio_direct_0
       (.clk_i(processing_system7_0_FCLK_CLK0),
        .en_i(audio_path_sel_Dout),
        .pdm_audio_i(pdm_audio_i_1),
        .pdm_m_clk_o(audio_direct_0_pdm_m_clk_o),
        .pwm_audio_o(audio_direct_0_pwm_audio_o),
        .pwm_audio_shutdown(audio_direct_0_pwm_audio_shutdown));
  system_d_axi_pdm_1_0 d_axi_pdm_1
       (.pdm_m_clk_o(d_axi_pdm_1_pdm_m_clk_o),
        .pdm_m_data_i(pdm_audio_i_1),
        .pwm_audio(d_axi_pdm_1_pwm_audio),
        .pwm_sdaudio_o(d_axi_pdm_1_pwm_sdaudio_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(S_AXI_LITE_1_ARADDR[4:0]),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arprot(S_AXI_LITE_1_ARPROT),
        .s_axi_arready(S_AXI_LITE_1_ARREADY),
        .s_axi_arvalid(S_AXI_LITE_1_ARVALID),
        .s_axi_awaddr(S_AXI_LITE_1_AWADDR[4:0]),
        .s_axi_awprot(S_AXI_LITE_1_AWPROT),
        .s_axi_awready(S_AXI_LITE_1_AWREADY),
        .s_axi_awvalid(S_AXI_LITE_1_AWVALID),
        .s_axi_bready(S_AXI_LITE_1_BREADY),
        .s_axi_bresp(S_AXI_LITE_1_BRESP),
        .s_axi_bvalid(S_AXI_LITE_1_BVALID),
        .s_axi_rdata(S_AXI_LITE_1_RDATA),
        .s_axi_rready(S_AXI_LITE_1_RREADY),
        .s_axi_rresp(S_AXI_LITE_1_RRESP),
        .s_axi_rvalid(S_AXI_LITE_1_RVALID),
        .s_axi_wdata(S_AXI_LITE_1_WDATA),
        .s_axi_wready(S_AXI_LITE_1_WREADY),
        .s_axi_wstrb(S_AXI_LITE_1_WSTRB),
        .s_axi_wvalid(S_AXI_LITE_1_WVALID));
  system_pdm_audio_shutdown_mux_0 pdm_audio_shutdown_mux
       (.a(d_axi_pdm_1_pwm_sdaudio_o),
        .b(audio_direct_0_pwm_audio_shutdown),
        .sel(audio_path_sel_Dout),
        .y(pdm_audio_shutdown_mux_y));
  system_pdm_m_clk_mux_0 pdm_m_clk_mux
       (.a(d_axi_pdm_1_pdm_m_clk_o),
        .b(audio_direct_0_pdm_m_clk_o),
        .sel(audio_path_sel_Dout),
        .y(pdm_m_clk_mux_y));
  system_pwm_audio_o_mux_0 pwm_audio_o_mux
       (.a(d_axi_pdm_1_pwm_audio),
        .b(audio_direct_0_pwm_audio_o),
        .sel(audio_path_sel_Dout),
        .y(pwm_audio_o_mux_y));
endmodule

module m00_couplers_imp_1D9ZDWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_12 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_WKXF3L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [12:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire [12:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1ORP4PS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m01_couplers_to_auto_pc_ARID;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m01_couplers_to_auto_pc_AWID;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire [12:0]m01_couplers_to_auto_pc_BID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire [12:0]m01_couplers_to_auto_pc_RID;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m01_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m01_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m01_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_pc_BID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_pc_RID),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_1VD9O7M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [12:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [12:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [12:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [12:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [1:0]m02_couplers_to_m02_couplers_ARBURST;
  wire [3:0]m02_couplers_to_m02_couplers_ARCACHE;
  wire [12:0]m02_couplers_to_m02_couplers_ARID;
  wire [7:0]m02_couplers_to_m02_couplers_ARLEN;
  wire [0:0]m02_couplers_to_m02_couplers_ARLOCK;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [2:0]m02_couplers_to_m02_couplers_ARSIZE;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [1:0]m02_couplers_to_m02_couplers_AWBURST;
  wire [3:0]m02_couplers_to_m02_couplers_AWCACHE;
  wire [12:0]m02_couplers_to_m02_couplers_AWID;
  wire [7:0]m02_couplers_to_m02_couplers_AWLEN;
  wire [0:0]m02_couplers_to_m02_couplers_AWLOCK;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [2:0]m02_couplers_to_m02_couplers_AWSIZE;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [12:0]m02_couplers_to_m02_couplers_BID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [12:0]m02_couplers_to_m02_couplers_RID;
  wire [0:0]m02_couplers_to_m02_couplers_RLAST;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WLAST;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m02_couplers_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m02_couplers_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[12:0] = m02_couplers_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = m02_couplers_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = m02_couplers_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m02_couplers_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m02_couplers_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m02_couplers_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[12:0] = m02_couplers_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = m02_couplers_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = m02_couplers_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m02_couplers_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wlast[0] = m02_couplers_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bid[12:0] = m02_couplers_to_m02_couplers_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rid[12:0] = m02_couplers_to_m02_couplers_RID;
  assign S_AXI_rlast[0] = m02_couplers_to_m02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_m02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_m02_couplers_ARID = S_AXI_arid[12:0];
  assign m02_couplers_to_m02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_m02_couplers_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_m02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_m02_couplers_AWID = S_AXI_awid[12:0];
  assign m02_couplers_to_m02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_m02_couplers_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BID = M_AXI_bid[12:0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RID = M_AXI_rid[12:0];
  assign m02_couplers_to_m02_couplers_RLAST = M_AXI_rlast[0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WLAST = S_AXI_wlast[0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_PPDLC3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [12:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [12:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [12:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [12:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [1:0]m03_couplers_to_m03_couplers_ARBURST;
  wire [3:0]m03_couplers_to_m03_couplers_ARCACHE;
  wire [12:0]m03_couplers_to_m03_couplers_ARID;
  wire [7:0]m03_couplers_to_m03_couplers_ARLEN;
  wire [0:0]m03_couplers_to_m03_couplers_ARLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [2:0]m03_couplers_to_m03_couplers_ARSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [1:0]m03_couplers_to_m03_couplers_AWBURST;
  wire [3:0]m03_couplers_to_m03_couplers_AWCACHE;
  wire [12:0]m03_couplers_to_m03_couplers_AWID;
  wire [7:0]m03_couplers_to_m03_couplers_AWLEN;
  wire [0:0]m03_couplers_to_m03_couplers_AWLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [2:0]m03_couplers_to_m03_couplers_AWSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [12:0]m03_couplers_to_m03_couplers_BID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [12:0]m03_couplers_to_m03_couplers_RID;
  wire [0:0]m03_couplers_to_m03_couplers_RLAST;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WLAST;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_couplers_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_couplers_to_m03_couplers_ARCACHE;
  assign M_AXI_arid[12:0] = m03_couplers_to_m03_couplers_ARID;
  assign M_AXI_arlen[7:0] = m03_couplers_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_couplers_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m03_couplers_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m03_couplers_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m03_couplers_to_m03_couplers_AWCACHE;
  assign M_AXI_awid[12:0] = m03_couplers_to_m03_couplers_AWID;
  assign M_AXI_awlen[7:0] = m03_couplers_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = m03_couplers_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m03_couplers_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wlast[0] = m03_couplers_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bid[12:0] = m03_couplers_to_m03_couplers_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rid[12:0] = m03_couplers_to_m03_couplers_RID;
  assign S_AXI_rlast[0] = m03_couplers_to_m03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_couplers_ARID = S_AXI_arid[12:0];
  assign m03_couplers_to_m03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_couplers_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_m03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_m03_couplers_AWID = S_AXI_awid[12:0];
  assign m03_couplers_to_m03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_m03_couplers_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BID = M_AXI_bid[12:0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RID = M_AXI_rid[12:0];
  assign m03_couplers_to_m03_couplers_RLAST = M_AXI_rlast[0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WLAST = S_AXI_wlast[0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_18RU2BA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [12:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [12:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [12:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [12:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [1:0]m04_couplers_to_m04_couplers_ARBURST;
  wire [3:0]m04_couplers_to_m04_couplers_ARCACHE;
  wire [12:0]m04_couplers_to_m04_couplers_ARID;
  wire [7:0]m04_couplers_to_m04_couplers_ARLEN;
  wire [0:0]m04_couplers_to_m04_couplers_ARLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [2:0]m04_couplers_to_m04_couplers_ARSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [1:0]m04_couplers_to_m04_couplers_AWBURST;
  wire [3:0]m04_couplers_to_m04_couplers_AWCACHE;
  wire [12:0]m04_couplers_to_m04_couplers_AWID;
  wire [7:0]m04_couplers_to_m04_couplers_AWLEN;
  wire [0:0]m04_couplers_to_m04_couplers_AWLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [2:0]m04_couplers_to_m04_couplers_AWSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [12:0]m04_couplers_to_m04_couplers_BID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [12:0]m04_couplers_to_m04_couplers_RID;
  wire [0:0]m04_couplers_to_m04_couplers_RLAST;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WLAST;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m04_couplers_to_m04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m04_couplers_to_m04_couplers_ARCACHE;
  assign M_AXI_arid[12:0] = m04_couplers_to_m04_couplers_ARID;
  assign M_AXI_arlen[7:0] = m04_couplers_to_m04_couplers_ARLEN;
  assign M_AXI_arlock[0] = m04_couplers_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m04_couplers_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m04_couplers_to_m04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m04_couplers_to_m04_couplers_AWCACHE;
  assign M_AXI_awid[12:0] = m04_couplers_to_m04_couplers_AWID;
  assign M_AXI_awlen[7:0] = m04_couplers_to_m04_couplers_AWLEN;
  assign M_AXI_awlock[0] = m04_couplers_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m04_couplers_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wlast[0] = m04_couplers_to_m04_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bid[12:0] = m04_couplers_to_m04_couplers_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rid[12:0] = m04_couplers_to_m04_couplers_RID;
  assign S_AXI_rlast[0] = m04_couplers_to_m04_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_m04_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_m04_couplers_ARID = S_AXI_arid[12:0];
  assign m04_couplers_to_m04_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_m04_couplers_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_m04_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_m04_couplers_AWID = S_AXI_awid[12:0];
  assign m04_couplers_to_m04_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_m04_couplers_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BID = M_AXI_bid[12:0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RID = M_AXI_rid[12:0];
  assign m04_couplers_to_m04_couplers_RLAST = M_AXI_rlast[0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WLAST = S_AXI_wlast[0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_47WDK7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m05_couplers_to_auto_pc_ARID;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m05_couplers_to_auto_pc_AWID;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire [12:0]m05_couplers_to_auto_pc_BID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire [12:0]m05_couplers_to_auto_pc_RID;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m05_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m05_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m05_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m05_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m05_couplers_to_auto_pc_BID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m05_couplers_to_auto_pc_RID),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_ATGYFP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_pc_ARADDR;
  wire [1:0]m06_couplers_to_auto_pc_ARBURST;
  wire [3:0]m06_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m06_couplers_to_auto_pc_ARID;
  wire [7:0]m06_couplers_to_auto_pc_ARLEN;
  wire [0:0]m06_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_pc_ARPROT;
  wire [3:0]m06_couplers_to_auto_pc_ARQOS;
  wire m06_couplers_to_auto_pc_ARREADY;
  wire [3:0]m06_couplers_to_auto_pc_ARREGION;
  wire [2:0]m06_couplers_to_auto_pc_ARSIZE;
  wire m06_couplers_to_auto_pc_ARVALID;
  wire [31:0]m06_couplers_to_auto_pc_AWADDR;
  wire [1:0]m06_couplers_to_auto_pc_AWBURST;
  wire [3:0]m06_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m06_couplers_to_auto_pc_AWID;
  wire [7:0]m06_couplers_to_auto_pc_AWLEN;
  wire [0:0]m06_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_pc_AWPROT;
  wire [3:0]m06_couplers_to_auto_pc_AWQOS;
  wire m06_couplers_to_auto_pc_AWREADY;
  wire [3:0]m06_couplers_to_auto_pc_AWREGION;
  wire [2:0]m06_couplers_to_auto_pc_AWSIZE;
  wire m06_couplers_to_auto_pc_AWVALID;
  wire [12:0]m06_couplers_to_auto_pc_BID;
  wire m06_couplers_to_auto_pc_BREADY;
  wire [1:0]m06_couplers_to_auto_pc_BRESP;
  wire m06_couplers_to_auto_pc_BVALID;
  wire [31:0]m06_couplers_to_auto_pc_RDATA;
  wire [12:0]m06_couplers_to_auto_pc_RID;
  wire m06_couplers_to_auto_pc_RLAST;
  wire m06_couplers_to_auto_pc_RREADY;
  wire [1:0]m06_couplers_to_auto_pc_RRESP;
  wire m06_couplers_to_auto_pc_RVALID;
  wire [31:0]m06_couplers_to_auto_pc_WDATA;
  wire m06_couplers_to_auto_pc_WLAST;
  wire m06_couplers_to_auto_pc_WREADY;
  wire [3:0]m06_couplers_to_auto_pc_WSTRB;
  wire m06_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m06_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m06_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m06_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m06_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m06_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m06_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m06_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m06_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m06_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m06_couplers_to_auto_pc_BID),
        .s_axi_bready(m06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m06_couplers_to_auto_pc_RID),
        .s_axi_rlast(m06_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_11WAABO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m07_couplers_ARADDR;
  wire [2:0]auto_pc_to_m07_couplers_ARPROT;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [31:0]auto_pc_to_m07_couplers_AWADDR;
  wire [2:0]auto_pc_to_m07_couplers_AWPROT;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [1:0]m07_couplers_to_auto_pc_ARBURST;
  wire [3:0]m07_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m07_couplers_to_auto_pc_ARID;
  wire [7:0]m07_couplers_to_auto_pc_ARLEN;
  wire [0:0]m07_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire [3:0]m07_couplers_to_auto_pc_ARQOS;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire [3:0]m07_couplers_to_auto_pc_ARREGION;
  wire [2:0]m07_couplers_to_auto_pc_ARSIZE;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [1:0]m07_couplers_to_auto_pc_AWBURST;
  wire [3:0]m07_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m07_couplers_to_auto_pc_AWID;
  wire [7:0]m07_couplers_to_auto_pc_AWLEN;
  wire [0:0]m07_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire [3:0]m07_couplers_to_auto_pc_AWQOS;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire [3:0]m07_couplers_to_auto_pc_AWREGION;
  wire [2:0]m07_couplers_to_auto_pc_AWSIZE;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire [12:0]m07_couplers_to_auto_pc_BID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire [12:0]m07_couplers_to_auto_pc_RID;
  wire m07_couplers_to_auto_pc_RLAST;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WLAST;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m07_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m07_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m07_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m07_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m07_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m07_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m07_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m07_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m07_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m07_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m07_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m07_couplers_to_auto_pc_BID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m07_couplers_to_auto_pc_RID),
        .s_axi_rlast(m07_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_1SWBGE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m08_couplers_ARADDR;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [31:0]auto_pc_to_m08_couplers_AWADDR;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_pc_ARADDR;
  wire [1:0]m08_couplers_to_auto_pc_ARBURST;
  wire [3:0]m08_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m08_couplers_to_auto_pc_ARID;
  wire [7:0]m08_couplers_to_auto_pc_ARLEN;
  wire [0:0]m08_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m08_couplers_to_auto_pc_ARPROT;
  wire [3:0]m08_couplers_to_auto_pc_ARQOS;
  wire m08_couplers_to_auto_pc_ARREADY;
  wire [3:0]m08_couplers_to_auto_pc_ARREGION;
  wire [2:0]m08_couplers_to_auto_pc_ARSIZE;
  wire m08_couplers_to_auto_pc_ARVALID;
  wire [31:0]m08_couplers_to_auto_pc_AWADDR;
  wire [1:0]m08_couplers_to_auto_pc_AWBURST;
  wire [3:0]m08_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m08_couplers_to_auto_pc_AWID;
  wire [7:0]m08_couplers_to_auto_pc_AWLEN;
  wire [0:0]m08_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m08_couplers_to_auto_pc_AWPROT;
  wire [3:0]m08_couplers_to_auto_pc_AWQOS;
  wire m08_couplers_to_auto_pc_AWREADY;
  wire [3:0]m08_couplers_to_auto_pc_AWREGION;
  wire [2:0]m08_couplers_to_auto_pc_AWSIZE;
  wire m08_couplers_to_auto_pc_AWVALID;
  wire [12:0]m08_couplers_to_auto_pc_BID;
  wire m08_couplers_to_auto_pc_BREADY;
  wire [1:0]m08_couplers_to_auto_pc_BRESP;
  wire m08_couplers_to_auto_pc_BVALID;
  wire [31:0]m08_couplers_to_auto_pc_RDATA;
  wire [12:0]m08_couplers_to_auto_pc_RID;
  wire m08_couplers_to_auto_pc_RLAST;
  wire m08_couplers_to_auto_pc_RREADY;
  wire [1:0]m08_couplers_to_auto_pc_RRESP;
  wire m08_couplers_to_auto_pc_RVALID;
  wire [31:0]m08_couplers_to_auto_pc_WDATA;
  wire m08_couplers_to_auto_pc_WLAST;
  wire m08_couplers_to_auto_pc_WREADY;
  wire [3:0]m08_couplers_to_auto_pc_WSTRB;
  wire m08_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m08_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m08_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m08_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m08_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m08_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m08_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m08_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m08_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m08_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m08_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m08_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m08_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m08_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m08_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m08_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m08_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m08_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m08_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m08_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m08_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m08_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m08_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m08_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m08_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m08_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m08_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m08_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m08_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m08_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m08_couplers_to_auto_pc_BID),
        .s_axi_bready(m08_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m08_couplers_to_auto_pc_RID),
        .s_axi_rlast(m08_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m08_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m08_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m08_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_pc_WVALID));
endmodule

module m09_couplers_imp_1AN18J3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m09_couplers_ARADDR;
  wire auto_pc_to_m09_couplers_ARREADY;
  wire auto_pc_to_m09_couplers_ARVALID;
  wire [31:0]auto_pc_to_m09_couplers_AWADDR;
  wire auto_pc_to_m09_couplers_AWREADY;
  wire auto_pc_to_m09_couplers_AWVALID;
  wire auto_pc_to_m09_couplers_BREADY;
  wire [1:0]auto_pc_to_m09_couplers_BRESP;
  wire auto_pc_to_m09_couplers_BVALID;
  wire [31:0]auto_pc_to_m09_couplers_RDATA;
  wire auto_pc_to_m09_couplers_RREADY;
  wire [1:0]auto_pc_to_m09_couplers_RRESP;
  wire auto_pc_to_m09_couplers_RVALID;
  wire [31:0]auto_pc_to_m09_couplers_WDATA;
  wire auto_pc_to_m09_couplers_WREADY;
  wire [3:0]auto_pc_to_m09_couplers_WSTRB;
  wire auto_pc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_pc_ARADDR;
  wire [1:0]m09_couplers_to_auto_pc_ARBURST;
  wire [3:0]m09_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m09_couplers_to_auto_pc_ARID;
  wire [7:0]m09_couplers_to_auto_pc_ARLEN;
  wire [0:0]m09_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m09_couplers_to_auto_pc_ARPROT;
  wire [3:0]m09_couplers_to_auto_pc_ARQOS;
  wire m09_couplers_to_auto_pc_ARREADY;
  wire [3:0]m09_couplers_to_auto_pc_ARREGION;
  wire [2:0]m09_couplers_to_auto_pc_ARSIZE;
  wire m09_couplers_to_auto_pc_ARVALID;
  wire [31:0]m09_couplers_to_auto_pc_AWADDR;
  wire [1:0]m09_couplers_to_auto_pc_AWBURST;
  wire [3:0]m09_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m09_couplers_to_auto_pc_AWID;
  wire [7:0]m09_couplers_to_auto_pc_AWLEN;
  wire [0:0]m09_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m09_couplers_to_auto_pc_AWPROT;
  wire [3:0]m09_couplers_to_auto_pc_AWQOS;
  wire m09_couplers_to_auto_pc_AWREADY;
  wire [3:0]m09_couplers_to_auto_pc_AWREGION;
  wire [2:0]m09_couplers_to_auto_pc_AWSIZE;
  wire m09_couplers_to_auto_pc_AWVALID;
  wire [12:0]m09_couplers_to_auto_pc_BID;
  wire m09_couplers_to_auto_pc_BREADY;
  wire [1:0]m09_couplers_to_auto_pc_BRESP;
  wire m09_couplers_to_auto_pc_BVALID;
  wire [31:0]m09_couplers_to_auto_pc_RDATA;
  wire [12:0]m09_couplers_to_auto_pc_RID;
  wire m09_couplers_to_auto_pc_RLAST;
  wire m09_couplers_to_auto_pc_RREADY;
  wire [1:0]m09_couplers_to_auto_pc_RRESP;
  wire m09_couplers_to_auto_pc_RVALID;
  wire [31:0]m09_couplers_to_auto_pc_WDATA;
  wire m09_couplers_to_auto_pc_WLAST;
  wire m09_couplers_to_auto_pc_WREADY;
  wire [3:0]m09_couplers_to_auto_pc_WSTRB;
  wire m09_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m09_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m09_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m09_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m09_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m09_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m09_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m09_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m09_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m09_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m09_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m09_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m09_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m09_couplers_WVALID),
        .s_axi_araddr(m09_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m09_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m09_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m09_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m09_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m09_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m09_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m09_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m09_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m09_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m09_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m09_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m09_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m09_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m09_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m09_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m09_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m09_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m09_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m09_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m09_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m09_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m09_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m09_couplers_to_auto_pc_BID),
        .s_axi_bready(m09_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m09_couplers_to_auto_pc_RID),
        .s_axi_rlast(m09_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m09_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m09_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m09_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_pc_WVALID));
endmodule

module m10_couplers_imp_1VD5LO2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m10_couplers_ARADDR;
  wire auto_pc_to_m10_couplers_ARREADY;
  wire auto_pc_to_m10_couplers_ARVALID;
  wire [31:0]auto_pc_to_m10_couplers_AWADDR;
  wire auto_pc_to_m10_couplers_AWREADY;
  wire auto_pc_to_m10_couplers_AWVALID;
  wire auto_pc_to_m10_couplers_BREADY;
  wire [1:0]auto_pc_to_m10_couplers_BRESP;
  wire auto_pc_to_m10_couplers_BVALID;
  wire [31:0]auto_pc_to_m10_couplers_RDATA;
  wire auto_pc_to_m10_couplers_RREADY;
  wire [1:0]auto_pc_to_m10_couplers_RRESP;
  wire auto_pc_to_m10_couplers_RVALID;
  wire [31:0]auto_pc_to_m10_couplers_WDATA;
  wire auto_pc_to_m10_couplers_WREADY;
  wire auto_pc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_pc_ARADDR;
  wire [1:0]m10_couplers_to_auto_pc_ARBURST;
  wire [3:0]m10_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m10_couplers_to_auto_pc_ARID;
  wire [7:0]m10_couplers_to_auto_pc_ARLEN;
  wire [0:0]m10_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m10_couplers_to_auto_pc_ARPROT;
  wire [3:0]m10_couplers_to_auto_pc_ARQOS;
  wire m10_couplers_to_auto_pc_ARREADY;
  wire [3:0]m10_couplers_to_auto_pc_ARREGION;
  wire [2:0]m10_couplers_to_auto_pc_ARSIZE;
  wire m10_couplers_to_auto_pc_ARVALID;
  wire [31:0]m10_couplers_to_auto_pc_AWADDR;
  wire [1:0]m10_couplers_to_auto_pc_AWBURST;
  wire [3:0]m10_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m10_couplers_to_auto_pc_AWID;
  wire [7:0]m10_couplers_to_auto_pc_AWLEN;
  wire [0:0]m10_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m10_couplers_to_auto_pc_AWPROT;
  wire [3:0]m10_couplers_to_auto_pc_AWQOS;
  wire m10_couplers_to_auto_pc_AWREADY;
  wire [3:0]m10_couplers_to_auto_pc_AWREGION;
  wire [2:0]m10_couplers_to_auto_pc_AWSIZE;
  wire m10_couplers_to_auto_pc_AWVALID;
  wire [12:0]m10_couplers_to_auto_pc_BID;
  wire m10_couplers_to_auto_pc_BREADY;
  wire [1:0]m10_couplers_to_auto_pc_BRESP;
  wire m10_couplers_to_auto_pc_BVALID;
  wire [31:0]m10_couplers_to_auto_pc_RDATA;
  wire [12:0]m10_couplers_to_auto_pc_RID;
  wire m10_couplers_to_auto_pc_RLAST;
  wire m10_couplers_to_auto_pc_RREADY;
  wire [1:0]m10_couplers_to_auto_pc_RRESP;
  wire m10_couplers_to_auto_pc_RVALID;
  wire [31:0]m10_couplers_to_auto_pc_WDATA;
  wire m10_couplers_to_auto_pc_WLAST;
  wire m10_couplers_to_auto_pc_WREADY;
  wire [3:0]m10_couplers_to_auto_pc_WSTRB;
  wire m10_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m10_couplers_WDATA;
  assign M_AXI_wvalid = auto_pc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m10_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m10_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m10_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m10_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m10_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m10_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m10_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m10_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m10_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m10_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m10_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m10_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m10_couplers_WREADY),
        .m_axi_wvalid(auto_pc_to_m10_couplers_WVALID),
        .s_axi_araddr(m10_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m10_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m10_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m10_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m10_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m10_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m10_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m10_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m10_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m10_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m10_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m10_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m10_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m10_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m10_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m10_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m10_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m10_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m10_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m10_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m10_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m10_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m10_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m10_couplers_to_auto_pc_BID),
        .s_axi_bready(m10_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m10_couplers_to_auto_pc_RID),
        .s_axi_rlast(m10_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m10_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m10_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m10_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_pc_WVALID));
endmodule

module m11_couplers_imp_PPAXCZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m11_couplers_ARADDR;
  wire [2:0]auto_pc_to_m11_couplers_ARPROT;
  wire auto_pc_to_m11_couplers_ARREADY;
  wire auto_pc_to_m11_couplers_ARVALID;
  wire [31:0]auto_pc_to_m11_couplers_AWADDR;
  wire [2:0]auto_pc_to_m11_couplers_AWPROT;
  wire auto_pc_to_m11_couplers_AWREADY;
  wire auto_pc_to_m11_couplers_AWVALID;
  wire auto_pc_to_m11_couplers_BREADY;
  wire [1:0]auto_pc_to_m11_couplers_BRESP;
  wire auto_pc_to_m11_couplers_BVALID;
  wire [31:0]auto_pc_to_m11_couplers_RDATA;
  wire auto_pc_to_m11_couplers_RREADY;
  wire [1:0]auto_pc_to_m11_couplers_RRESP;
  wire auto_pc_to_m11_couplers_RVALID;
  wire [31:0]auto_pc_to_m11_couplers_WDATA;
  wire auto_pc_to_m11_couplers_WREADY;
  wire [3:0]auto_pc_to_m11_couplers_WSTRB;
  wire auto_pc_to_m11_couplers_WVALID;
  wire [31:0]m11_couplers_to_auto_pc_ARADDR;
  wire [1:0]m11_couplers_to_auto_pc_ARBURST;
  wire [3:0]m11_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m11_couplers_to_auto_pc_ARID;
  wire [7:0]m11_couplers_to_auto_pc_ARLEN;
  wire [0:0]m11_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m11_couplers_to_auto_pc_ARPROT;
  wire [3:0]m11_couplers_to_auto_pc_ARQOS;
  wire m11_couplers_to_auto_pc_ARREADY;
  wire [3:0]m11_couplers_to_auto_pc_ARREGION;
  wire [2:0]m11_couplers_to_auto_pc_ARSIZE;
  wire m11_couplers_to_auto_pc_ARVALID;
  wire [31:0]m11_couplers_to_auto_pc_AWADDR;
  wire [1:0]m11_couplers_to_auto_pc_AWBURST;
  wire [3:0]m11_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m11_couplers_to_auto_pc_AWID;
  wire [7:0]m11_couplers_to_auto_pc_AWLEN;
  wire [0:0]m11_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m11_couplers_to_auto_pc_AWPROT;
  wire [3:0]m11_couplers_to_auto_pc_AWQOS;
  wire m11_couplers_to_auto_pc_AWREADY;
  wire [3:0]m11_couplers_to_auto_pc_AWREGION;
  wire [2:0]m11_couplers_to_auto_pc_AWSIZE;
  wire m11_couplers_to_auto_pc_AWVALID;
  wire [12:0]m11_couplers_to_auto_pc_BID;
  wire m11_couplers_to_auto_pc_BREADY;
  wire [1:0]m11_couplers_to_auto_pc_BRESP;
  wire m11_couplers_to_auto_pc_BVALID;
  wire [31:0]m11_couplers_to_auto_pc_RDATA;
  wire [12:0]m11_couplers_to_auto_pc_RID;
  wire m11_couplers_to_auto_pc_RLAST;
  wire m11_couplers_to_auto_pc_RREADY;
  wire [1:0]m11_couplers_to_auto_pc_RRESP;
  wire m11_couplers_to_auto_pc_RVALID;
  wire [31:0]m11_couplers_to_auto_pc_WDATA;
  wire m11_couplers_to_auto_pc_WLAST;
  wire m11_couplers_to_auto_pc_WREADY;
  wire [3:0]m11_couplers_to_auto_pc_WSTRB;
  wire m11_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m11_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m11_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m11_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m11_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m11_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m11_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m11_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m11_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m11_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m11_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m11_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m11_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m11_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m11_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m11_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m11_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m11_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m11_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m11_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m11_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m11_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m11_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m11_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m11_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m11_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m11_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m11_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m11_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m11_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m11_couplers_WVALID),
        .s_axi_araddr(m11_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m11_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m11_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m11_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m11_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m11_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m11_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m11_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m11_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m11_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m11_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m11_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m11_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m11_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m11_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m11_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m11_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m11_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m11_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m11_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m11_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m11_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m11_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m11_couplers_to_auto_pc_BID),
        .s_axi_bready(m11_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m11_couplers_to_auto_pc_RID),
        .s_axi_rlast(m11_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m11_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m11_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m11_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_pc_WVALID));
endmodule

module m12_couplers_imp_WKTNKH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [12:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [12:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [12:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [12:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m12_couplers_ARADDR;
  wire auto_pc_to_m12_couplers_ARREADY;
  wire auto_pc_to_m12_couplers_ARVALID;
  wire [31:0]auto_pc_to_m12_couplers_AWADDR;
  wire auto_pc_to_m12_couplers_AWREADY;
  wire auto_pc_to_m12_couplers_AWVALID;
  wire auto_pc_to_m12_couplers_BREADY;
  wire [1:0]auto_pc_to_m12_couplers_BRESP;
  wire auto_pc_to_m12_couplers_BVALID;
  wire [31:0]auto_pc_to_m12_couplers_RDATA;
  wire auto_pc_to_m12_couplers_RREADY;
  wire [1:0]auto_pc_to_m12_couplers_RRESP;
  wire auto_pc_to_m12_couplers_RVALID;
  wire [31:0]auto_pc_to_m12_couplers_WDATA;
  wire auto_pc_to_m12_couplers_WREADY;
  wire [3:0]auto_pc_to_m12_couplers_WSTRB;
  wire auto_pc_to_m12_couplers_WVALID;
  wire [31:0]m12_couplers_to_auto_pc_ARADDR;
  wire [1:0]m12_couplers_to_auto_pc_ARBURST;
  wire [3:0]m12_couplers_to_auto_pc_ARCACHE;
  wire [12:0]m12_couplers_to_auto_pc_ARID;
  wire [7:0]m12_couplers_to_auto_pc_ARLEN;
  wire [0:0]m12_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m12_couplers_to_auto_pc_ARPROT;
  wire [3:0]m12_couplers_to_auto_pc_ARQOS;
  wire m12_couplers_to_auto_pc_ARREADY;
  wire [3:0]m12_couplers_to_auto_pc_ARREGION;
  wire [2:0]m12_couplers_to_auto_pc_ARSIZE;
  wire m12_couplers_to_auto_pc_ARVALID;
  wire [31:0]m12_couplers_to_auto_pc_AWADDR;
  wire [1:0]m12_couplers_to_auto_pc_AWBURST;
  wire [3:0]m12_couplers_to_auto_pc_AWCACHE;
  wire [12:0]m12_couplers_to_auto_pc_AWID;
  wire [7:0]m12_couplers_to_auto_pc_AWLEN;
  wire [0:0]m12_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m12_couplers_to_auto_pc_AWPROT;
  wire [3:0]m12_couplers_to_auto_pc_AWQOS;
  wire m12_couplers_to_auto_pc_AWREADY;
  wire [3:0]m12_couplers_to_auto_pc_AWREGION;
  wire [2:0]m12_couplers_to_auto_pc_AWSIZE;
  wire m12_couplers_to_auto_pc_AWVALID;
  wire [12:0]m12_couplers_to_auto_pc_BID;
  wire m12_couplers_to_auto_pc_BREADY;
  wire [1:0]m12_couplers_to_auto_pc_BRESP;
  wire m12_couplers_to_auto_pc_BVALID;
  wire [31:0]m12_couplers_to_auto_pc_RDATA;
  wire [12:0]m12_couplers_to_auto_pc_RID;
  wire m12_couplers_to_auto_pc_RLAST;
  wire m12_couplers_to_auto_pc_RREADY;
  wire [1:0]m12_couplers_to_auto_pc_RRESP;
  wire m12_couplers_to_auto_pc_RVALID;
  wire [31:0]m12_couplers_to_auto_pc_WDATA;
  wire m12_couplers_to_auto_pc_WLAST;
  wire m12_couplers_to_auto_pc_WREADY;
  wire [3:0]m12_couplers_to_auto_pc_WSTRB;
  wire m12_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m12_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m12_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m12_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m12_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[12:0] = m12_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m12_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[12:0] = m12_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m12_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m12_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m12_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m12_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m12_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m12_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m12_couplers_to_auto_pc_ARID = S_AXI_arid[12:0];
  assign m12_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m12_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m12_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m12_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m12_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m12_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m12_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m12_couplers_to_auto_pc_AWID = S_AXI_awid[12:0];
  assign m12_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m12_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m12_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m12_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m12_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m12_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m12_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m12_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m12_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_9 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m12_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m12_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m12_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m12_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m12_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m12_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m12_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m12_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m12_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m12_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m12_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m12_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m12_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m12_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m12_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m12_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m12_couplers_WVALID),
        .s_axi_araddr(m12_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m12_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m12_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m12_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m12_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m12_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m12_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m12_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m12_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m12_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m12_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m12_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m12_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m12_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m12_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m12_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m12_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m12_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m12_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m12_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m12_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m12_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m12_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m12_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m12_couplers_to_auto_pc_BID),
        .s_axi_bready(m12_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m12_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m12_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m12_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m12_couplers_to_auto_pc_RID),
        .s_axi_rlast(m12_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m12_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m12_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m12_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m12_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m12_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m12_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m12_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m12_couplers_to_auto_pc_WVALID));
endmodule

module m13_couplers_imp_1ORMRR4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m13_couplers_to_m13_couplers_ARADDR;
  wire m13_couplers_to_m13_couplers_ARBURST;
  wire m13_couplers_to_m13_couplers_ARCACHE;
  wire m13_couplers_to_m13_couplers_ARID;
  wire m13_couplers_to_m13_couplers_ARLEN;
  wire m13_couplers_to_m13_couplers_ARLOCK;
  wire m13_couplers_to_m13_couplers_ARPROT;
  wire m13_couplers_to_m13_couplers_ARQOS;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARREGION;
  wire m13_couplers_to_m13_couplers_ARSIZE;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire m13_couplers_to_m13_couplers_AWADDR;
  wire m13_couplers_to_m13_couplers_AWBURST;
  wire m13_couplers_to_m13_couplers_AWCACHE;
  wire m13_couplers_to_m13_couplers_AWID;
  wire m13_couplers_to_m13_couplers_AWLEN;
  wire m13_couplers_to_m13_couplers_AWLOCK;
  wire m13_couplers_to_m13_couplers_AWPROT;
  wire m13_couplers_to_m13_couplers_AWQOS;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWREGION;
  wire m13_couplers_to_m13_couplers_AWSIZE;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RID;
  wire m13_couplers_to_m13_couplers_RLAST;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WLAST;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arburst = m13_couplers_to_m13_couplers_ARBURST;
  assign M_AXI_arcache = m13_couplers_to_m13_couplers_ARCACHE;
  assign M_AXI_arid = m13_couplers_to_m13_couplers_ARID;
  assign M_AXI_arlen = m13_couplers_to_m13_couplers_ARLEN;
  assign M_AXI_arlock = m13_couplers_to_m13_couplers_ARLOCK;
  assign M_AXI_arprot = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arqos = m13_couplers_to_m13_couplers_ARQOS;
  assign M_AXI_arregion = m13_couplers_to_m13_couplers_ARREGION;
  assign M_AXI_arsize = m13_couplers_to_m13_couplers_ARSIZE;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awburst = m13_couplers_to_m13_couplers_AWBURST;
  assign M_AXI_awcache = m13_couplers_to_m13_couplers_AWCACHE;
  assign M_AXI_awid = m13_couplers_to_m13_couplers_AWID;
  assign M_AXI_awlen = m13_couplers_to_m13_couplers_AWLEN;
  assign M_AXI_awlock = m13_couplers_to_m13_couplers_AWLOCK;
  assign M_AXI_awprot = m13_couplers_to_m13_couplers_AWPROT;
  assign M_AXI_awqos = m13_couplers_to_m13_couplers_AWQOS;
  assign M_AXI_awregion = m13_couplers_to_m13_couplers_AWREGION;
  assign M_AXI_awsize = m13_couplers_to_m13_couplers_AWSIZE;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wlast = m13_couplers_to_m13_couplers_WLAST;
  assign M_AXI_wstrb = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bid = m13_couplers_to_m13_couplers_BID;
  assign S_AXI_bresp = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rid = m13_couplers_to_m13_couplers_RID;
  assign S_AXI_rlast = m13_couplers_to_m13_couplers_RLAST;
  assign S_AXI_rresp = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr;
  assign m13_couplers_to_m13_couplers_ARBURST = S_AXI_arburst;
  assign m13_couplers_to_m13_couplers_ARCACHE = S_AXI_arcache;
  assign m13_couplers_to_m13_couplers_ARID = S_AXI_arid;
  assign m13_couplers_to_m13_couplers_ARLEN = S_AXI_arlen;
  assign m13_couplers_to_m13_couplers_ARLOCK = S_AXI_arlock;
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot;
  assign m13_couplers_to_m13_couplers_ARQOS = S_AXI_arqos;
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARREGION = S_AXI_arregion;
  assign m13_couplers_to_m13_couplers_ARSIZE = S_AXI_arsize;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr;
  assign m13_couplers_to_m13_couplers_AWBURST = S_AXI_awburst;
  assign m13_couplers_to_m13_couplers_AWCACHE = S_AXI_awcache;
  assign m13_couplers_to_m13_couplers_AWID = S_AXI_awid;
  assign m13_couplers_to_m13_couplers_AWLEN = S_AXI_awlen;
  assign m13_couplers_to_m13_couplers_AWLOCK = S_AXI_awlock;
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot;
  assign m13_couplers_to_m13_couplers_AWQOS = S_AXI_awqos;
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWREGION = S_AXI_awregion;
  assign m13_couplers_to_m13_couplers_AWSIZE = S_AXI_awsize;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BID = M_AXI_bid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp;
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata;
  assign m13_couplers_to_m13_couplers_RID = M_AXI_rid;
  assign m13_couplers_to_m13_couplers_RLAST = M_AXI_rlast;
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp;
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata;
  assign m13_couplers_to_m13_couplers_WLAST = S_AXI_wlast;
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb;
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_117EIM5
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  system_auto_us_0 auto_us
       (.m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_IK3G2O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [12:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [12:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s00_couplers_ARID;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s00_couplers_AWID;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [12:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire [12:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[12:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[12:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_10 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID[11:0]),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID[11:0]),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1TMQ10X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [12:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [12:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_pc_ARADDR;
  wire [1:0]auto_cc_to_auto_pc_ARBURST;
  wire [3:0]auto_cc_to_auto_pc_ARCACHE;
  wire [11:0]auto_cc_to_auto_pc_ARID;
  wire [3:0]auto_cc_to_auto_pc_ARLEN;
  wire [1:0]auto_cc_to_auto_pc_ARLOCK;
  wire [2:0]auto_cc_to_auto_pc_ARPROT;
  wire [3:0]auto_cc_to_auto_pc_ARQOS;
  wire auto_cc_to_auto_pc_ARREADY;
  wire [2:0]auto_cc_to_auto_pc_ARSIZE;
  wire auto_cc_to_auto_pc_ARVALID;
  wire [31:0]auto_cc_to_auto_pc_AWADDR;
  wire [1:0]auto_cc_to_auto_pc_AWBURST;
  wire [3:0]auto_cc_to_auto_pc_AWCACHE;
  wire [11:0]auto_cc_to_auto_pc_AWID;
  wire [3:0]auto_cc_to_auto_pc_AWLEN;
  wire [1:0]auto_cc_to_auto_pc_AWLOCK;
  wire [2:0]auto_cc_to_auto_pc_AWPROT;
  wire [3:0]auto_cc_to_auto_pc_AWQOS;
  wire auto_cc_to_auto_pc_AWREADY;
  wire [2:0]auto_cc_to_auto_pc_AWSIZE;
  wire auto_cc_to_auto_pc_AWVALID;
  wire [11:0]auto_cc_to_auto_pc_BID;
  wire auto_cc_to_auto_pc_BREADY;
  wire [1:0]auto_cc_to_auto_pc_BRESP;
  wire auto_cc_to_auto_pc_BVALID;
  wire [31:0]auto_cc_to_auto_pc_RDATA;
  wire [11:0]auto_cc_to_auto_pc_RID;
  wire auto_cc_to_auto_pc_RLAST;
  wire auto_cc_to_auto_pc_RREADY;
  wire [1:0]auto_cc_to_auto_pc_RRESP;
  wire auto_cc_to_auto_pc_RVALID;
  wire [31:0]auto_cc_to_auto_pc_WDATA;
  wire [11:0]auto_cc_to_auto_pc_WID;
  wire auto_cc_to_auto_pc_WLAST;
  wire auto_cc_to_auto_pc_WREADY;
  wire [3:0]auto_cc_to_auto_pc_WSTRB;
  wire auto_cc_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_s01_couplers_ARADDR;
  wire [1:0]auto_pc_to_s01_couplers_ARBURST;
  wire [3:0]auto_pc_to_s01_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s01_couplers_ARID;
  wire [7:0]auto_pc_to_s01_couplers_ARLEN;
  wire [0:0]auto_pc_to_s01_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire [3:0]auto_pc_to_s01_couplers_ARQOS;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire [2:0]auto_pc_to_s01_couplers_ARSIZE;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [31:0]auto_pc_to_s01_couplers_AWADDR;
  wire [1:0]auto_pc_to_s01_couplers_AWBURST;
  wire [3:0]auto_pc_to_s01_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s01_couplers_AWID;
  wire [7:0]auto_pc_to_s01_couplers_AWLEN;
  wire [0:0]auto_pc_to_s01_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire [3:0]auto_pc_to_s01_couplers_AWQOS;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire [2:0]auto_pc_to_s01_couplers_AWSIZE;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire [12:0]auto_pc_to_s01_couplers_BID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire [12:0]auto_pc_to_s01_couplers_RID;
  wire auto_pc_to_s01_couplers_RLAST;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WLAST;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_cc_ARADDR;
  wire [1:0]s01_couplers_to_auto_cc_ARBURST;
  wire [3:0]s01_couplers_to_auto_cc_ARCACHE;
  wire [11:0]s01_couplers_to_auto_cc_ARID;
  wire [3:0]s01_couplers_to_auto_cc_ARLEN;
  wire [1:0]s01_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s01_couplers_to_auto_cc_ARPROT;
  wire [3:0]s01_couplers_to_auto_cc_ARQOS;
  wire s01_couplers_to_auto_cc_ARREADY;
  wire [2:0]s01_couplers_to_auto_cc_ARSIZE;
  wire s01_couplers_to_auto_cc_ARVALID;
  wire [31:0]s01_couplers_to_auto_cc_AWADDR;
  wire [1:0]s01_couplers_to_auto_cc_AWBURST;
  wire [3:0]s01_couplers_to_auto_cc_AWCACHE;
  wire [11:0]s01_couplers_to_auto_cc_AWID;
  wire [3:0]s01_couplers_to_auto_cc_AWLEN;
  wire [1:0]s01_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s01_couplers_to_auto_cc_AWPROT;
  wire [3:0]s01_couplers_to_auto_cc_AWQOS;
  wire s01_couplers_to_auto_cc_AWREADY;
  wire [2:0]s01_couplers_to_auto_cc_AWSIZE;
  wire s01_couplers_to_auto_cc_AWVALID;
  wire [11:0]s01_couplers_to_auto_cc_BID;
  wire s01_couplers_to_auto_cc_BREADY;
  wire [1:0]s01_couplers_to_auto_cc_BRESP;
  wire s01_couplers_to_auto_cc_BVALID;
  wire [31:0]s01_couplers_to_auto_cc_RDATA;
  wire [11:0]s01_couplers_to_auto_cc_RID;
  wire s01_couplers_to_auto_cc_RLAST;
  wire s01_couplers_to_auto_cc_RREADY;
  wire [1:0]s01_couplers_to_auto_cc_RRESP;
  wire s01_couplers_to_auto_cc_RVALID;
  wire [31:0]s01_couplers_to_auto_cc_WDATA;
  wire [11:0]s01_couplers_to_auto_cc_WID;
  wire s01_couplers_to_auto_cc_WLAST;
  wire s01_couplers_to_auto_cc_WREADY;
  wire [3:0]s01_couplers_to_auto_cc_WSTRB;
  wire s01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[11:0] = s01_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[11:0] = s01_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BID = M_AXI_bid[12:0];
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RID = M_AXI_rid[12:0];
  assign auto_pc_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_cc_ARID = S_AXI_arid[11:0];
  assign s01_couplers_to_auto_cc_ARLEN = S_AXI_arlen[3:0];
  assign s01_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_cc_AWID = S_AXI_awid[11:0];
  assign s01_couplers_to_auto_cc_AWLEN = S_AXI_awlen[3:0];
  assign s01_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_cc_WID = S_AXI_wid[11:0];
  assign s01_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_pc_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_pc_ARID),
        .m_axi_arlen(auto_cc_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_pc_ARQOS),
        .m_axi_arready(auto_cc_to_auto_pc_ARREADY),
        .m_axi_arsize(auto_cc_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_pc_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_pc_AWID),
        .m_axi_awlen(auto_cc_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_pc_AWQOS),
        .m_axi_awready(auto_cc_to_auto_pc_AWREADY),
        .m_axi_awsize(auto_cc_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_pc_AWVALID),
        .m_axi_bid(auto_cc_to_auto_pc_BID),
        .m_axi_bready(auto_cc_to_auto_pc_BREADY),
        .m_axi_bresp(auto_cc_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_pc_BVALID),
        .m_axi_rdata(auto_cc_to_auto_pc_RDATA),
        .m_axi_rid(auto_cc_to_auto_pc_RID),
        .m_axi_rlast(auto_cc_to_auto_pc_RLAST),
        .m_axi_rready(auto_cc_to_auto_pc_RREADY),
        .m_axi_rresp(auto_cc_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_pc_RVALID),
        .m_axi_wdata(auto_cc_to_auto_pc_WDATA),
        .m_axi_wid(auto_cc_to_auto_pc_WID),
        .m_axi_wlast(auto_cc_to_auto_pc_WLAST),
        .m_axi_wready(auto_cc_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s01_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_cc_ARREADY),
        .s_axi_arsize(s01_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s01_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_cc_AWREADY),
        .s_axi_awsize(s01_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_cc_BID),
        .s_axi_bready(s01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s01_couplers_to_auto_cc_RID),
        .s_axi_rlast(s01_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_cc_WDATA),
        .s_axi_wid(s01_couplers_to_auto_cc_WID),
        .s_axi_wlast(s01_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_cc_WVALID));
  system_auto_pc_11 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s01_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s01_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s01_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s01_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s01_couplers_BID[11:0]),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s01_couplers_RID[11:0]),
        .m_axi_rlast(auto_pc_to_s01_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s01_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_pc_ARCACHE),
        .s_axi_arid(auto_cc_to_auto_pc_ARID),
        .s_axi_arlen(auto_cc_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_pc_ARQOS),
        .s_axi_arready(auto_cc_to_auto_pc_ARREADY),
        .s_axi_arsize(auto_cc_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_pc_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_pc_AWID),
        .s_axi_awlen(auto_cc_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_pc_AWQOS),
        .s_axi_awready(auto_cc_to_auto_pc_AWREADY),
        .s_axi_awsize(auto_cc_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_pc_AWVALID),
        .s_axi_bid(auto_cc_to_auto_pc_BID),
        .s_axi_bready(auto_cc_to_auto_pc_BREADY),
        .s_axi_bresp(auto_cc_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_pc_BVALID),
        .s_axi_rdata(auto_cc_to_auto_pc_RDATA),
        .s_axi_rid(auto_cc_to_auto_pc_RID),
        .s_axi_rlast(auto_cc_to_auto_pc_RLAST),
        .s_axi_rready(auto_cc_to_auto_pc_RREADY),
        .s_axi_rresp(auto_cc_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_pc_RVALID),
        .s_axi_wdata(auto_cc_to_auto_pc_WDATA),
        .s_axi_wid(auto_cc_to_auto_pc_WID),
        .s_axi_wlast(auto_cc_to_auto_pc_WLAST),
        .s_axi_wready(auto_cc_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_B8JDWS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  system_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=89,numReposBlks=66,numNonXlnxBlks=3,numHierBlks=23,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_bram_cntlr_cnt=6,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_4bits_tri_i,
    hdmi_in_clk_n,
    hdmi_in_clk_p,
    hdmi_in_data_n,
    hdmi_in_data_p,
    hdmi_in_ddc_scl_i,
    hdmi_in_ddc_scl_o,
    hdmi_in_ddc_scl_t,
    hdmi_in_ddc_sda_i,
    hdmi_in_ddc_sda_o,
    hdmi_in_ddc_sda_t,
    hdmi_in_hpd,
    hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p,
    hdmi_out_ddc_scl_i,
    hdmi_out_ddc_scl_o,
    hdmi_out_ddc_scl_t,
    hdmi_out_ddc_sda_i,
    hdmi_out_ddc_sda_o,
    hdmi_out_ddc_sda_t,
    hdmi_out_hpd,
    leds_4bits_tri_o,
    pdm_audio_shutdown,
    pdm_m_clk,
    pdm_m_data_i,
    pmodJA_data_in,
    pmodJA_data_out,
    pmodJA_tri_out,
    pmodJB_data_in,
    pmodJB_data_out,
    pmodJB_tri_out,
    pwm_audio_o,
    rgbleds_6bits_tri_o,
    shield2sw_data_in_a5_a0,
    shield2sw_data_in_d13_d2,
    shield2sw_data_in_d1_d0,
    shield2sw_scl_i_in,
    shield2sw_sda_i_in,
    sw2shield_data_out_a5_a0,
    sw2shield_data_out_d13_d2,
    sw2shield_data_out_d1_d0,
    sw2shield_scl_o_out,
    sw2shield_scl_t_out,
    sw2shield_sda_o_out,
    sw2shield_sda_t_out,
    sw2shield_tri_out_a5_a0,
    sw2shield_tri_out_d13_d2,
    sw2shield_tri_out_d1_d0,
    sws_2bits_tri_i);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]btns_4bits_tri_i;
  input hdmi_in_clk_n;
  input hdmi_in_clk_p;
  input [2:0]hdmi_in_data_n;
  input [2:0]hdmi_in_data_p;
  input hdmi_in_ddc_scl_i;
  output hdmi_in_ddc_scl_o;
  output hdmi_in_ddc_scl_t;
  input hdmi_in_ddc_sda_i;
  output hdmi_in_ddc_sda_o;
  output hdmi_in_ddc_sda_t;
  output [0:0]hdmi_in_hpd;
  output hdmi_out_clk_n;
  output hdmi_out_clk_p;
  output [2:0]hdmi_out_data_n;
  output [2:0]hdmi_out_data_p;
  input hdmi_out_ddc_scl_i;
  output hdmi_out_ddc_scl_o;
  output hdmi_out_ddc_scl_t;
  input hdmi_out_ddc_sda_i;
  output hdmi_out_ddc_sda_o;
  output hdmi_out_ddc_sda_t;
  output [0:0]hdmi_out_hpd;
  output [3:0]leds_4bits_tri_o;
  output [0:0]pdm_audio_shutdown;
  output [0:0]pdm_m_clk;
  input pdm_m_data_i;
  input [7:0]pmodJA_data_in;
  output [7:0]pmodJA_data_out;
  output [7:0]pmodJA_tri_out;
  input [7:0]pmodJB_data_in;
  output [7:0]pmodJB_data_out;
  output [7:0]pmodJB_tri_out;
  output [0:0]pwm_audio_o;
  output [5:0]rgbleds_6bits_tri_o;
  input [5:0]shield2sw_data_in_a5_a0;
  input [11:0]shield2sw_data_in_d13_d2;
  input [1:0]shield2sw_data_in_d1_d0;
  input shield2sw_scl_i_in;
  input shield2sw_sda_i_in;
  output [5:0]sw2shield_data_out_a5_a0;
  output [11:0]sw2shield_data_out_d13_d2;
  output [1:0]sw2shield_data_out_d1_d0;
  output [0:0]sw2shield_scl_o_out;
  output [0:0]sw2shield_scl_t_out;
  output [0:0]sw2shield_sda_o_out;
  output [0:0]sw2shield_sda_t_out;
  output [5:0]sw2shield_tri_out_a5_a0;
  output [11:0]sw2shield_tri_out_d13_d2;
  output [1:0]sw2shield_tri_out_d1_d0;
  input [1:0]sws_2bits_tri_i;

  wire [31:0]S_AXI1_1_ARADDR;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [31:0]S_AXI1_1_AWADDR;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [31:0]S_AXI_1_ARADDR;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]S_AXI_LITE_1_ARADDR;
  wire S_AXI_LITE_1_ARREADY;
  wire S_AXI_LITE_1_ARVALID;
  wire [31:0]S_AXI_LITE_1_AWADDR;
  wire S_AXI_LITE_1_AWREADY;
  wire S_AXI_LITE_1_AWVALID;
  wire S_AXI_LITE_1_BREADY;
  wire [1:0]S_AXI_LITE_1_BRESP;
  wire S_AXI_LITE_1_BVALID;
  wire [31:0]S_AXI_LITE_1_RDATA;
  wire S_AXI_LITE_1_RREADY;
  wire [1:0]S_AXI_LITE_1_RRESP;
  wire S_AXI_LITE_1_RVALID;
  wire [31:0]S_AXI_LITE_1_WDATA;
  wire S_AXI_LITE_1_WREADY;
  wire S_AXI_LITE_1_WVALID;
  wire [0:0]audio_path_sel_Dout;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [3:0]btns_gpio_GPIO_TRI_I;
  wire [7:0]concat_interrupts_dout;
  wire [31:0]ctrl1_1_ARADDR;
  wire ctrl1_1_ARREADY;
  wire ctrl1_1_ARVALID;
  wire [31:0]ctrl1_1_AWADDR;
  wire ctrl1_1_AWREADY;
  wire ctrl1_1_AWVALID;
  wire ctrl1_1_BREADY;
  wire [1:0]ctrl1_1_BRESP;
  wire ctrl1_1_BVALID;
  wire [31:0]ctrl1_1_RDATA;
  wire ctrl1_1_RREADY;
  wire [1:0]ctrl1_1_RRESP;
  wire ctrl1_1_RVALID;
  wire [31:0]ctrl1_1_WDATA;
  wire ctrl1_1_WREADY;
  wire [3:0]ctrl1_1_WSTRB;
  wire ctrl1_1_WVALID;
  wire [31:0]ctrl_1_ARADDR;
  wire ctrl_1_ARREADY;
  wire ctrl_1_ARVALID;
  wire [31:0]ctrl_1_AWADDR;
  wire ctrl_1_AWREADY;
  wire ctrl_1_AWVALID;
  wire ctrl_1_BREADY;
  wire [1:0]ctrl_1_BRESP;
  wire ctrl_1_BVALID;
  wire [31:0]ctrl_1_RDATA;
  wire ctrl_1_RREADY;
  wire [1:0]ctrl_1_RRESP;
  wire ctrl_1_RVALID;
  wire [31:0]ctrl_1_WDATA;
  wire ctrl_1_WREADY;
  wire [3:0]ctrl_1_WSTRB;
  wire ctrl_1_WVALID;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire hdmi_in_1_CLK_N;
  wire hdmi_in_1_CLK_P;
  wire [2:0]hdmi_in_1_DATA_N;
  wire [2:0]hdmi_in_1_DATA_P;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire [0:0]logic_1_dout;
  wire [15:0]mb_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire mb_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]mb_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]mb_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire mb_bram_ctrl_1_BRAM_PORTA_EN;
  wire mb_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]mb_bram_ctrl_1_BRAM_PORTA_WE;
  wire [15:0]mb_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire mb_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]mb_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]mb_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire mb_bram_ctrl_2_BRAM_PORTA_EN;
  wire mb_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]mb_bram_ctrl_2_BRAM_PORTA_WE;
  wire [15:0]mb_bram_ctrl_3_BRAM_PORTA_ADDR;
  wire mb_bram_ctrl_3_BRAM_PORTA_CLK;
  wire [31:0]mb_bram_ctrl_3_BRAM_PORTA_DIN;
  wire [31:0]mb_bram_ctrl_3_BRAM_PORTA_DOUT;
  wire mb_bram_ctrl_3_BRAM_PORTA_EN;
  wire mb_bram_ctrl_3_BRAM_PORTA_RST;
  wire [3:0]mb_bram_ctrl_3_BRAM_PORTA_WE;
  wire [0:0]pdm_audio_shutdown_mux_y;
  wire [0:0]pdm_m_clk_mux_y;
  wire pdm_m_data_i_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_142M_interconnect_aresetn;
  wire [0:0]proc_sys_reset_142M_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_CLK3;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [3:0]processing_system7_0_GPIO_O;
  wire processing_system7_0_IIC_0_SCL_I;
  wire processing_system7_0_IIC_0_SCL_O;
  wire processing_system7_0_IIC_0_SCL_T;
  wire processing_system7_0_IIC_0_SDA_I;
  wire processing_system7_0_IIC_0_SDA_O;
  wire processing_system7_0_IIC_0_SDA_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP1_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP1_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP1_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP1_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP1_ARQOS;
  wire processing_system7_0_M_AXI_GP1_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP1_ARSIZE;
  wire processing_system7_0_M_AXI_GP1_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP1_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP1_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP1_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP1_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP1_AWQOS;
  wire processing_system7_0_M_AXI_GP1_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP1_AWSIZE;
  wire processing_system7_0_M_AXI_GP1_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP1_BID;
  wire processing_system7_0_M_AXI_GP1_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP1_BRESP;
  wire processing_system7_0_M_AXI_GP1_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP1_RID;
  wire processing_system7_0_M_AXI_GP1_RLAST;
  wire processing_system7_0_M_AXI_GP1_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP1_RRESP;
  wire processing_system7_0_M_AXI_GP1_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP1_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP1_WID;
  wire processing_system7_0_M_AXI_GP1_WLAST;
  wire processing_system7_0_M_AXI_GP1_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP1_WSTRB;
  wire processing_system7_0_M_AXI_GP1_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M00_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M00_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M00_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M00_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M00_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M00_AXI_BRESP;
  wire processing_system7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M00_AXI_RDATA;
  wire processing_system7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M00_AXI_RRESP;
  wire processing_system7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M00_AXI_WDATA;
  wire processing_system7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M00_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M01_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M01_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M01_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M01_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M01_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M01_AXI_BRESP;
  wire processing_system7_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M01_AXI_RDATA;
  wire processing_system7_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M01_AXI_RRESP;
  wire processing_system7_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M01_AXI_WDATA;
  wire processing_system7_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M01_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M01_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_M02_AXI_ARCACHE;
  wire [12:0]processing_system7_0_axi_periph_M02_AXI_ARID;
  wire [7:0]processing_system7_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_M02_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_M02_AXI_AWCACHE;
  wire [12:0]processing_system7_0_axi_periph_M02_AXI_AWID;
  wire [7:0]processing_system7_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_M02_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_AWVALID;
  wire [12:0]processing_system7_0_axi_periph_M02_AXI_BID;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M02_AXI_BRESP;
  wire processing_system7_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M02_AXI_RDATA;
  wire [12:0]processing_system7_0_axi_periph_M02_AXI_RID;
  wire processing_system7_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M02_AXI_RRESP;
  wire processing_system7_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_WLAST;
  wire processing_system7_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M03_AXI_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_M03_AXI_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_M03_AXI_ARCACHE;
  wire [12:0]processing_system7_0_axi_periph_M03_AXI_ARID;
  wire [7:0]processing_system7_0_axi_periph_M03_AXI_ARLEN;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_M03_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M03_AXI_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_M03_AXI_ARSIZE;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M03_AXI_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_M03_AXI_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_M03_AXI_AWCACHE;
  wire [12:0]processing_system7_0_axi_periph_M03_AXI_AWID;
  wire [7:0]processing_system7_0_axi_periph_M03_AXI_AWLEN;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_M03_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M03_AXI_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_M03_AXI_AWSIZE;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_AWVALID;
  wire [12:0]processing_system7_0_axi_periph_M03_AXI_BID;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M03_AXI_BRESP;
  wire processing_system7_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M03_AXI_RDATA;
  wire [12:0]processing_system7_0_axi_periph_M03_AXI_RID;
  wire processing_system7_0_axi_periph_M03_AXI_RLAST;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M03_AXI_RRESP;
  wire processing_system7_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M03_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_WLAST;
  wire processing_system7_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M03_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M03_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M04_AXI_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_M04_AXI_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_M04_AXI_ARCACHE;
  wire [12:0]processing_system7_0_axi_periph_M04_AXI_ARID;
  wire [7:0]processing_system7_0_axi_periph_M04_AXI_ARLEN;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_M04_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M04_AXI_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_M04_AXI_ARSIZE;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M04_AXI_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_M04_AXI_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_M04_AXI_AWCACHE;
  wire [12:0]processing_system7_0_axi_periph_M04_AXI_AWID;
  wire [7:0]processing_system7_0_axi_periph_M04_AXI_AWLEN;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_M04_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M04_AXI_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_M04_AXI_AWSIZE;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_AWVALID;
  wire [12:0]processing_system7_0_axi_periph_M04_AXI_BID;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M04_AXI_BRESP;
  wire processing_system7_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M04_AXI_RDATA;
  wire [12:0]processing_system7_0_axi_periph_M04_AXI_RID;
  wire processing_system7_0_axi_periph_M04_AXI_RLAST;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M04_AXI_RRESP;
  wire processing_system7_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M04_AXI_WDATA;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_WLAST;
  wire processing_system7_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M04_AXI_WSTRB;
  wire [0:0]processing_system7_0_axi_periph_M04_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M11_AXI_ARADDR;
  wire [2:0]processing_system7_0_axi_periph_M11_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M11_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M11_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M11_AXI_AWADDR;
  wire [2:0]processing_system7_0_axi_periph_M11_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M11_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M11_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M11_AXI_BRESP;
  wire processing_system7_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M11_AXI_RDATA;
  wire processing_system7_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M11_AXI_RRESP;
  wire processing_system7_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M11_AXI_WDATA;
  wire processing_system7_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M11_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M11_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M12_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M12_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M12_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M12_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M12_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M12_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M12_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M12_AXI_BRESP;
  wire processing_system7_0_axi_periph_M12_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M12_AXI_RDATA;
  wire processing_system7_0_axi_periph_M12_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M12_AXI_RRESP;
  wire processing_system7_0_axi_periph_M12_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M12_AXI_WDATA;
  wire processing_system7_0_axi_periph_M12_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M12_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M12_AXI_WVALID;
  wire [0:0]pwm_audio_o_mux_y;
  wire [5:0]rgbled_gpio_GPIO_TRI_O;
  wire [0:0]rst_processing_system7_0_100M_interconnect_aresetn;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire [0:0]rst_processing_system7_0_166M_peripheral_aresetn;
  wire [31:0]s00_axi_1_ARADDR;
  wire [2:0]s00_axi_1_ARPROT;
  wire s00_axi_1_ARREADY;
  wire s00_axi_1_ARVALID;
  wire [31:0]s00_axi_1_AWADDR;
  wire [2:0]s00_axi_1_AWPROT;
  wire s00_axi_1_AWREADY;
  wire s00_axi_1_AWVALID;
  wire s00_axi_1_BREADY;
  wire [1:0]s00_axi_1_BRESP;
  wire s00_axi_1_BVALID;
  wire [31:0]s00_axi_1_RDATA;
  wire s00_axi_1_RREADY;
  wire [1:0]s00_axi_1_RRESP;
  wire s00_axi_1_RVALID;
  wire [31:0]s00_axi_1_WDATA;
  wire s00_axi_1_WREADY;
  wire [3:0]s00_axi_1_WSTRB;
  wire s00_axi_1_WVALID;
  wire [3:0]swsleds_gpio_GPIO2_TRI_O;
  wire [1:0]swsleds_gpio_GPIO_TRI_I;
  wire video_PixelClk;
  wire video_TMDS1_CLK_N;
  wire video_TMDS1_CLK_P;
  wire [2:0]video_TMDS1_DATA_N;
  wire [2:0]video_TMDS1_DATA_P;
  wire video_aPixelClkLckd;
  wire [5:0]video_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_10_dout;
  wire [0:0]xlconstant_11_dout;
  wire [11:0]xlconstant_12_dout;
  wire [1:0]xlconstant_13_dout;
  wire [5:0]xlconstant_14_dout;
  wire [11:0]xlconstant_1_dout;
  wire [1:0]xlconstant_2_dout;
  wire [5:0]xlconstant_3_dout;
  wire [7:0]xlconstant_4_dout;
  wire [7:0]xlconstant_5_dout;
  wire [7:0]xlconstant_6_dout;
  wire [7:0]xlconstant_7_dout;
  wire [0:0]xlconstant_8_dout;
  wire [0:0]xlconstant_9_dout;

  assign btns_gpio_GPIO_TRI_I = btns_4bits_tri_i[3:0];
  assign dvi2rgb_0_DDC_SCL_I = hdmi_in_ddc_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = hdmi_in_ddc_sda_i;
  assign hdmi_in_1_CLK_N = hdmi_in_clk_n;
  assign hdmi_in_1_CLK_P = hdmi_in_clk_p;
  assign hdmi_in_1_DATA_N = hdmi_in_data_n[2:0];
  assign hdmi_in_1_DATA_P = hdmi_in_data_p[2:0];
  assign hdmi_in_ddc_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign hdmi_in_ddc_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign hdmi_in_ddc_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign hdmi_in_ddc_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign hdmi_in_hpd[0] = axi_gpio_video_gpio_io_o;
  assign hdmi_out_clk_n = video_TMDS1_CLK_N;
  assign hdmi_out_clk_p = video_TMDS1_CLK_P;
  assign hdmi_out_data_n[2:0] = video_TMDS1_DATA_N;
  assign hdmi_out_data_p[2:0] = video_TMDS1_DATA_P;
  assign hdmi_out_ddc_scl_o = processing_system7_0_IIC_0_SCL_O;
  assign hdmi_out_ddc_scl_t = processing_system7_0_IIC_0_SCL_T;
  assign hdmi_out_ddc_sda_o = processing_system7_0_IIC_0_SDA_O;
  assign hdmi_out_ddc_sda_t = processing_system7_0_IIC_0_SDA_T;
  assign hdmi_out_hpd[0] = hdmi_out_hpd_video_gpio_io_o;
  assign leds_4bits_tri_o[3:0] = swsleds_gpio_GPIO2_TRI_O;
  assign pdm_audio_shutdown[0] = pdm_audio_shutdown_mux_y;
  assign pdm_m_clk[0] = pdm_m_clk_mux_y;
  assign pdm_m_data_i_1 = pdm_m_data_i;
  assign pmodJA_data_out[7:0] = xlconstant_6_dout;
  assign pmodJA_tri_out[7:0] = xlconstant_4_dout;
  assign pmodJB_data_out[7:0] = xlconstant_7_dout;
  assign pmodJB_tri_out[7:0] = xlconstant_5_dout;
  assign processing_system7_0_IIC_0_SCL_I = hdmi_out_ddc_scl_i;
  assign processing_system7_0_IIC_0_SDA_I = hdmi_out_ddc_sda_i;
  assign pwm_audio_o[0] = pwm_audio_o_mux_y;
  assign rgbleds_6bits_tri_o[5:0] = rgbled_gpio_GPIO_TRI_O;
  assign sw2shield_data_out_a5_a0[5:0] = xlconstant_14_dout;
  assign sw2shield_data_out_d13_d2[11:0] = xlconstant_12_dout;
  assign sw2shield_data_out_d1_d0[1:0] = xlconstant_13_dout;
  assign sw2shield_scl_o_out[0] = xlconstant_11_dout;
  assign sw2shield_scl_t_out[0] = xlconstant_10_dout;
  assign sw2shield_sda_o_out[0] = xlconstant_9_dout;
  assign sw2shield_sda_t_out[0] = xlconstant_8_dout;
  assign sw2shield_tri_out_a5_a0[5:0] = xlconstant_3_dout;
  assign sw2shield_tri_out_d13_d2[11:0] = xlconstant_1_dout;
  assign sw2shield_tri_out_d1_d0[1:0] = xlconstant_2_dout;
  assign swsleds_gpio_GPIO_TRI_I = sws_2bits_tri_i[1:0];
  audio_imp_P9M2FY audio
       (.S_AXI_LITE_araddr(processing_system7_0_axi_periph_M11_AXI_ARADDR),
        .S_AXI_LITE_arprot(processing_system7_0_axi_periph_M11_AXI_ARPROT),
        .S_AXI_LITE_arready(processing_system7_0_axi_periph_M11_AXI_ARREADY),
        .S_AXI_LITE_arvalid(processing_system7_0_axi_periph_M11_AXI_ARVALID),
        .S_AXI_LITE_awaddr(processing_system7_0_axi_periph_M11_AXI_AWADDR),
        .S_AXI_LITE_awprot(processing_system7_0_axi_periph_M11_AXI_AWPROT),
        .S_AXI_LITE_awready(processing_system7_0_axi_periph_M11_AXI_AWREADY),
        .S_AXI_LITE_awvalid(processing_system7_0_axi_periph_M11_AXI_AWVALID),
        .S_AXI_LITE_bready(processing_system7_0_axi_periph_M11_AXI_BREADY),
        .S_AXI_LITE_bresp(processing_system7_0_axi_periph_M11_AXI_BRESP),
        .S_AXI_LITE_bvalid(processing_system7_0_axi_periph_M11_AXI_BVALID),
        .S_AXI_LITE_rdata(processing_system7_0_axi_periph_M11_AXI_RDATA),
        .S_AXI_LITE_rready(processing_system7_0_axi_periph_M11_AXI_RREADY),
        .S_AXI_LITE_rresp(processing_system7_0_axi_periph_M11_AXI_RRESP),
        .S_AXI_LITE_rvalid(processing_system7_0_axi_periph_M11_AXI_RVALID),
        .S_AXI_LITE_wdata(processing_system7_0_axi_periph_M11_AXI_WDATA),
        .S_AXI_LITE_wready(processing_system7_0_axi_periph_M11_AXI_WREADY),
        .S_AXI_LITE_wstrb(processing_system7_0_axi_periph_M11_AXI_WSTRB),
        .S_AXI_LITE_wvalid(processing_system7_0_axi_periph_M11_AXI_WVALID),
        .clk_i(processing_system7_0_FCLK_CLK0),
        .pdm_audio_i(pdm_m_data_i_1),
        .pdm_audio_shutdown(pdm_audio_shutdown_mux_y),
        .pdm_m_clk(pdm_m_clk_mux_y),
        .pwm_audio_o(pwm_audio_o_mux_y),
        .s_axi_lite_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .sel(audio_path_sel_Dout));
  system_audio_path_sel_0 audio_path_sel
       (.Din(processing_system7_0_GPIO_O),
        .Dout(audio_path_sel_Dout));
  system_btns_gpio_0 btns_gpio
       (.gpio_io_i(btns_gpio_GPIO_TRI_I),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arready(processing_system7_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M01_AXI_WVALID));
  system_concat_interrupts_0 concat_interrupts
       (.In0(video_dout),
        .In1(xlconstant_0_dout),
        .In2(logic_1_dout),
        .dout(concat_interrupts_dout));
  system_logic_1_0 logic_1
       (.dout(logic_1_dout));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > system mb_bram_ctrl_1_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_mb_bram_ctrl_1_0 mb_bram_ctrl_1
       (.bram_addr_a(mb_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(mb_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(mb_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(mb_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(mb_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(mb_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(mb_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M02_AXI_ARADDR[15:0]),
        .s_axi_arburst(processing_system7_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(processing_system7_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arid(processing_system7_0_axi_periph_M02_AXI_ARID),
        .s_axi_arlen(processing_system7_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(processing_system7_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(processing_system7_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(processing_system7_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(processing_system7_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(processing_system7_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M02_AXI_AWADDR[15:0]),
        .s_axi_awburst(processing_system7_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(processing_system7_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awid(processing_system7_0_axi_periph_M02_AXI_AWID),
        .s_axi_awlen(processing_system7_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(processing_system7_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(processing_system7_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(processing_system7_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(processing_system7_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(processing_system7_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bid(processing_system7_0_axi_periph_M02_AXI_BID),
        .s_axi_bready(processing_system7_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rid(processing_system7_0_axi_periph_M02_AXI_RID),
        .s_axi_rlast(processing_system7_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(processing_system7_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(processing_system7_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(processing_system7_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M02_AXI_WVALID));
  system_mb_bram_ctrl_1_bram_1 mb_bram_ctrl_1_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mb_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(mb_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(mb_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(mb_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(mb_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(mb_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(mb_bram_ctrl_1_BRAM_PORTA_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x42000000 32 > system mb_bram_ctrl_2_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_mb_bram_ctrl_2_0 mb_bram_ctrl_2
       (.bram_addr_a(mb_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_clk_a(mb_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_en_a(mb_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_rddata_a(mb_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rst_a(mb_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_we_a(mb_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_wrdata_a(mb_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M03_AXI_ARADDR[15:0]),
        .s_axi_arburst(processing_system7_0_axi_periph_M03_AXI_ARBURST),
        .s_axi_arcache(processing_system7_0_axi_periph_M03_AXI_ARCACHE),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arid(processing_system7_0_axi_periph_M03_AXI_ARID),
        .s_axi_arlen(processing_system7_0_axi_periph_M03_AXI_ARLEN),
        .s_axi_arlock(processing_system7_0_axi_periph_M03_AXI_ARLOCK),
        .s_axi_arprot(processing_system7_0_axi_periph_M03_AXI_ARPROT),
        .s_axi_arready(processing_system7_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arsize(processing_system7_0_axi_periph_M03_AXI_ARSIZE),
        .s_axi_arvalid(processing_system7_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M03_AXI_AWADDR[15:0]),
        .s_axi_awburst(processing_system7_0_axi_periph_M03_AXI_AWBURST),
        .s_axi_awcache(processing_system7_0_axi_periph_M03_AXI_AWCACHE),
        .s_axi_awid(processing_system7_0_axi_periph_M03_AXI_AWID),
        .s_axi_awlen(processing_system7_0_axi_periph_M03_AXI_AWLEN),
        .s_axi_awlock(processing_system7_0_axi_periph_M03_AXI_AWLOCK),
        .s_axi_awprot(processing_system7_0_axi_periph_M03_AXI_AWPROT),
        .s_axi_awready(processing_system7_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awsize(processing_system7_0_axi_periph_M03_AXI_AWSIZE),
        .s_axi_awvalid(processing_system7_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bid(processing_system7_0_axi_periph_M03_AXI_BID),
        .s_axi_bready(processing_system7_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rid(processing_system7_0_axi_periph_M03_AXI_RID),
        .s_axi_rlast(processing_system7_0_axi_periph_M03_AXI_RLAST),
        .s_axi_rready(processing_system7_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wlast(processing_system7_0_axi_periph_M03_AXI_WLAST),
        .s_axi_wready(processing_system7_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M03_AXI_WVALID));
  system_mb_bram_ctrl_2_bram_1 mb_bram_ctrl_2_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mb_bram_ctrl_2_BRAM_PORTA_ADDR}),
        .clka(mb_bram_ctrl_2_BRAM_PORTA_CLK),
        .dina(mb_bram_ctrl_2_BRAM_PORTA_DIN),
        .douta(mb_bram_ctrl_2_BRAM_PORTA_DOUT),
        .ena(mb_bram_ctrl_2_BRAM_PORTA_EN),
        .rsta(mb_bram_ctrl_2_BRAM_PORTA_RST),
        .wea(mb_bram_ctrl_2_BRAM_PORTA_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x44000000 32 > system mb_bram_ctrl_3_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_mb_bram_ctrl_3_0 mb_bram_ctrl_3
       (.bram_addr_a(mb_bram_ctrl_3_BRAM_PORTA_ADDR),
        .bram_clk_a(mb_bram_ctrl_3_BRAM_PORTA_CLK),
        .bram_en_a(mb_bram_ctrl_3_BRAM_PORTA_EN),
        .bram_rddata_a(mb_bram_ctrl_3_BRAM_PORTA_DOUT),
        .bram_rst_a(mb_bram_ctrl_3_BRAM_PORTA_RST),
        .bram_we_a(mb_bram_ctrl_3_BRAM_PORTA_WE),
        .bram_wrdata_a(mb_bram_ctrl_3_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M04_AXI_ARADDR[15:0]),
        .s_axi_arburst(processing_system7_0_axi_periph_M04_AXI_ARBURST),
        .s_axi_arcache(processing_system7_0_axi_periph_M04_AXI_ARCACHE),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arid(processing_system7_0_axi_periph_M04_AXI_ARID),
        .s_axi_arlen(processing_system7_0_axi_periph_M04_AXI_ARLEN),
        .s_axi_arlock(processing_system7_0_axi_periph_M04_AXI_ARLOCK),
        .s_axi_arprot(processing_system7_0_axi_periph_M04_AXI_ARPROT),
        .s_axi_arready(processing_system7_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arsize(processing_system7_0_axi_periph_M04_AXI_ARSIZE),
        .s_axi_arvalid(processing_system7_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M04_AXI_AWADDR[15:0]),
        .s_axi_awburst(processing_system7_0_axi_periph_M04_AXI_AWBURST),
        .s_axi_awcache(processing_system7_0_axi_periph_M04_AXI_AWCACHE),
        .s_axi_awid(processing_system7_0_axi_periph_M04_AXI_AWID),
        .s_axi_awlen(processing_system7_0_axi_periph_M04_AXI_AWLEN),
        .s_axi_awlock(processing_system7_0_axi_periph_M04_AXI_AWLOCK),
        .s_axi_awprot(processing_system7_0_axi_periph_M04_AXI_AWPROT),
        .s_axi_awready(processing_system7_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awsize(processing_system7_0_axi_periph_M04_AXI_AWSIZE),
        .s_axi_awvalid(processing_system7_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bid(processing_system7_0_axi_periph_M04_AXI_BID),
        .s_axi_bready(processing_system7_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rid(processing_system7_0_axi_periph_M04_AXI_RID),
        .s_axi_rlast(processing_system7_0_axi_periph_M04_AXI_RLAST),
        .s_axi_rready(processing_system7_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wlast(processing_system7_0_axi_periph_M04_AXI_WLAST),
        .s_axi_wready(processing_system7_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M04_AXI_WVALID));
  system_mb_bram_ctrl_3_bram_1 mb_bram_ctrl_3_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mb_bram_ctrl_3_BRAM_PORTA_ADDR}),
        .clka(mb_bram_ctrl_3_BRAM_PORTA_CLK),
        .dina(mb_bram_ctrl_3_BRAM_PORTA_DIN),
        .douta(mb_bram_ctrl_3_BRAM_PORTA_DOUT),
        .ena(mb_bram_ctrl_3_BRAM_PORTA_EN),
        .rsta(mb_bram_ctrl_3_BRAM_PORTA_RST),
        .wea(mb_bram_ctrl_3_BRAM_PORTA_WE));
  system_proc_sys_reset_142M_0 proc_sys_reset_142M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_142M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_142M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  system_proc_sys_reset_pixelclk_0 proc_sys_reset_pixelclk
       (.aux_reset_in(video_aPixelClkLckd),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(video_PixelClk));
  (* BMM_INFO_PROCESSOR = "arm > system mb_bram_ctrl_1 system mb_bram_ctrl_2 system mb_bram_ctrl_3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_CLK3(processing_system7_0_FCLK_CLK3),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0}),
        .GPIO_O(processing_system7_0_GPIO_O),
        .I2C0_SCL_I(processing_system7_0_IIC_0_SCL_I),
        .I2C0_SCL_O(processing_system7_0_IIC_0_SCL_O),
        .I2C0_SCL_T(processing_system7_0_IIC_0_SCL_T),
        .I2C0_SDA_I(processing_system7_0_IIC_0_SDA_I),
        .I2C0_SDA_O(processing_system7_0_IIC_0_SDA_O),
        .I2C0_SDA_T(processing_system7_0_IIC_0_SDA_T),
        .IRQ_F2P(concat_interrupts_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .M_AXI_GP1_ACLK(processing_system7_0_FCLK_CLK3),
        .M_AXI_GP1_ARADDR(processing_system7_0_M_AXI_GP1_ARADDR),
        .M_AXI_GP1_ARBURST(processing_system7_0_M_AXI_GP1_ARBURST),
        .M_AXI_GP1_ARCACHE(processing_system7_0_M_AXI_GP1_ARCACHE),
        .M_AXI_GP1_ARID(processing_system7_0_M_AXI_GP1_ARID),
        .M_AXI_GP1_ARLEN(processing_system7_0_M_AXI_GP1_ARLEN),
        .M_AXI_GP1_ARLOCK(processing_system7_0_M_AXI_GP1_ARLOCK),
        .M_AXI_GP1_ARPROT(processing_system7_0_M_AXI_GP1_ARPROT),
        .M_AXI_GP1_ARQOS(processing_system7_0_M_AXI_GP1_ARQOS),
        .M_AXI_GP1_ARREADY(processing_system7_0_M_AXI_GP1_ARREADY),
        .M_AXI_GP1_ARSIZE(processing_system7_0_M_AXI_GP1_ARSIZE),
        .M_AXI_GP1_ARVALID(processing_system7_0_M_AXI_GP1_ARVALID),
        .M_AXI_GP1_AWADDR(processing_system7_0_M_AXI_GP1_AWADDR),
        .M_AXI_GP1_AWBURST(processing_system7_0_M_AXI_GP1_AWBURST),
        .M_AXI_GP1_AWCACHE(processing_system7_0_M_AXI_GP1_AWCACHE),
        .M_AXI_GP1_AWID(processing_system7_0_M_AXI_GP1_AWID),
        .M_AXI_GP1_AWLEN(processing_system7_0_M_AXI_GP1_AWLEN),
        .M_AXI_GP1_AWLOCK(processing_system7_0_M_AXI_GP1_AWLOCK),
        .M_AXI_GP1_AWPROT(processing_system7_0_M_AXI_GP1_AWPROT),
        .M_AXI_GP1_AWQOS(processing_system7_0_M_AXI_GP1_AWQOS),
        .M_AXI_GP1_AWREADY(processing_system7_0_M_AXI_GP1_AWREADY),
        .M_AXI_GP1_AWSIZE(processing_system7_0_M_AXI_GP1_AWSIZE),
        .M_AXI_GP1_AWVALID(processing_system7_0_M_AXI_GP1_AWVALID),
        .M_AXI_GP1_BID(processing_system7_0_M_AXI_GP1_BID),
        .M_AXI_GP1_BREADY(processing_system7_0_M_AXI_GP1_BREADY),
        .M_AXI_GP1_BRESP(processing_system7_0_M_AXI_GP1_BRESP),
        .M_AXI_GP1_BVALID(processing_system7_0_M_AXI_GP1_BVALID),
        .M_AXI_GP1_RDATA(processing_system7_0_M_AXI_GP1_RDATA),
        .M_AXI_GP1_RID(processing_system7_0_M_AXI_GP1_RID),
        .M_AXI_GP1_RLAST(processing_system7_0_M_AXI_GP1_RLAST),
        .M_AXI_GP1_RREADY(processing_system7_0_M_AXI_GP1_RREADY),
        .M_AXI_GP1_RRESP(processing_system7_0_M_AXI_GP1_RRESP),
        .M_AXI_GP1_RVALID(processing_system7_0_M_AXI_GP1_RVALID),
        .M_AXI_GP1_WDATA(processing_system7_0_M_AXI_GP1_WDATA),
        .M_AXI_GP1_WID(processing_system7_0_M_AXI_GP1_WID),
        .M_AXI_GP1_WLAST(processing_system7_0_M_AXI_GP1_WLAST),
        .M_AXI_GP1_WREADY(processing_system7_0_M_AXI_GP1_WREADY),
        .M_AXI_GP1_WSTRB(processing_system7_0_M_AXI_GP1_WSTRB),
        .M_AXI_GP1_WVALID(processing_system7_0_M_AXI_GP1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK1),
        .S_AXI_HP0_ARADDR(axi_mem_intercon_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_mem_intercon_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_mem_intercon_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN(axi_mem_intercon_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_mem_intercon_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_mem_intercon_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_mem_intercon_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_mem_intercon_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_mem_intercon_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_mem_intercon_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(axi_mem_intercon_M00_AXI_BID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_mem_intercon_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_mem_intercon_M00_AXI_RID),
        .S_AXI_HP0_RLAST(axi_mem_intercon_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_mem_intercon_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_mem_intercon_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_mem_intercon_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_processing_system7_0_axi_periph_0 processing_system7_0_axi_periph
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_processing_system7_0_100M_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(processing_system7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(processing_system7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(processing_system7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(processing_system7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(processing_system7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(processing_system7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(processing_system7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(processing_system7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(processing_system7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(processing_system7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(processing_system7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(processing_system7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(processing_system7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(processing_system7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(processing_system7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(processing_system7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(processing_system7_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M01_AXI_araddr(processing_system7_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(processing_system7_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(processing_system7_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(processing_system7_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(processing_system7_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(processing_system7_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(processing_system7_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(processing_system7_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(processing_system7_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(processing_system7_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(processing_system7_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(processing_system7_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(processing_system7_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(processing_system7_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(processing_system7_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(processing_system7_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(processing_system7_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M02_AXI_araddr(processing_system7_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arburst(processing_system7_0_axi_periph_M02_AXI_ARBURST),
        .M02_AXI_arcache(processing_system7_0_axi_periph_M02_AXI_ARCACHE),
        .M02_AXI_arid(processing_system7_0_axi_periph_M02_AXI_ARID),
        .M02_AXI_arlen(processing_system7_0_axi_periph_M02_AXI_ARLEN),
        .M02_AXI_arlock(processing_system7_0_axi_periph_M02_AXI_ARLOCK),
        .M02_AXI_arprot(processing_system7_0_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(processing_system7_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arsize(processing_system7_0_axi_periph_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(processing_system7_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(processing_system7_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awburst(processing_system7_0_axi_periph_M02_AXI_AWBURST),
        .M02_AXI_awcache(processing_system7_0_axi_periph_M02_AXI_AWCACHE),
        .M02_AXI_awid(processing_system7_0_axi_periph_M02_AXI_AWID),
        .M02_AXI_awlen(processing_system7_0_axi_periph_M02_AXI_AWLEN),
        .M02_AXI_awlock(processing_system7_0_axi_periph_M02_AXI_AWLOCK),
        .M02_AXI_awprot(processing_system7_0_axi_periph_M02_AXI_AWPROT),
        .M02_AXI_awready(processing_system7_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awsize(processing_system7_0_axi_periph_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(processing_system7_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bid(processing_system7_0_axi_periph_M02_AXI_BID),
        .M02_AXI_bready(processing_system7_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(processing_system7_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(processing_system7_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(processing_system7_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rid(processing_system7_0_axi_periph_M02_AXI_RID),
        .M02_AXI_rlast(processing_system7_0_axi_periph_M02_AXI_RLAST),
        .M02_AXI_rready(processing_system7_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(processing_system7_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(processing_system7_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(processing_system7_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wlast(processing_system7_0_axi_periph_M02_AXI_WLAST),
        .M02_AXI_wready(processing_system7_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(processing_system7_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(processing_system7_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(processing_system7_0_FCLK_CLK0),
        .M03_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M03_AXI_araddr(processing_system7_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arburst(processing_system7_0_axi_periph_M03_AXI_ARBURST),
        .M03_AXI_arcache(processing_system7_0_axi_periph_M03_AXI_ARCACHE),
        .M03_AXI_arid(processing_system7_0_axi_periph_M03_AXI_ARID),
        .M03_AXI_arlen(processing_system7_0_axi_periph_M03_AXI_ARLEN),
        .M03_AXI_arlock(processing_system7_0_axi_periph_M03_AXI_ARLOCK),
        .M03_AXI_arprot(processing_system7_0_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(processing_system7_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arsize(processing_system7_0_axi_periph_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(processing_system7_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(processing_system7_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awburst(processing_system7_0_axi_periph_M03_AXI_AWBURST),
        .M03_AXI_awcache(processing_system7_0_axi_periph_M03_AXI_AWCACHE),
        .M03_AXI_awid(processing_system7_0_axi_periph_M03_AXI_AWID),
        .M03_AXI_awlen(processing_system7_0_axi_periph_M03_AXI_AWLEN),
        .M03_AXI_awlock(processing_system7_0_axi_periph_M03_AXI_AWLOCK),
        .M03_AXI_awprot(processing_system7_0_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(processing_system7_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awsize(processing_system7_0_axi_periph_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(processing_system7_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bid(processing_system7_0_axi_periph_M03_AXI_BID),
        .M03_AXI_bready(processing_system7_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(processing_system7_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(processing_system7_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(processing_system7_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rid(processing_system7_0_axi_periph_M03_AXI_RID),
        .M03_AXI_rlast(processing_system7_0_axi_periph_M03_AXI_RLAST),
        .M03_AXI_rready(processing_system7_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(processing_system7_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(processing_system7_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(processing_system7_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wlast(processing_system7_0_axi_periph_M03_AXI_WLAST),
        .M03_AXI_wready(processing_system7_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(processing_system7_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(processing_system7_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(processing_system7_0_FCLK_CLK0),
        .M04_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M04_AXI_araddr(processing_system7_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arburst(processing_system7_0_axi_periph_M04_AXI_ARBURST),
        .M04_AXI_arcache(processing_system7_0_axi_periph_M04_AXI_ARCACHE),
        .M04_AXI_arid(processing_system7_0_axi_periph_M04_AXI_ARID),
        .M04_AXI_arlen(processing_system7_0_axi_periph_M04_AXI_ARLEN),
        .M04_AXI_arlock(processing_system7_0_axi_periph_M04_AXI_ARLOCK),
        .M04_AXI_arprot(processing_system7_0_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arready(processing_system7_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arsize(processing_system7_0_axi_periph_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(processing_system7_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(processing_system7_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awburst(processing_system7_0_axi_periph_M04_AXI_AWBURST),
        .M04_AXI_awcache(processing_system7_0_axi_periph_M04_AXI_AWCACHE),
        .M04_AXI_awid(processing_system7_0_axi_periph_M04_AXI_AWID),
        .M04_AXI_awlen(processing_system7_0_axi_periph_M04_AXI_AWLEN),
        .M04_AXI_awlock(processing_system7_0_axi_periph_M04_AXI_AWLOCK),
        .M04_AXI_awprot(processing_system7_0_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awready(processing_system7_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awsize(processing_system7_0_axi_periph_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(processing_system7_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bid(processing_system7_0_axi_periph_M04_AXI_BID),
        .M04_AXI_bready(processing_system7_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(processing_system7_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(processing_system7_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(processing_system7_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rid(processing_system7_0_axi_periph_M04_AXI_RID),
        .M04_AXI_rlast(processing_system7_0_axi_periph_M04_AXI_RLAST),
        .M04_AXI_rready(processing_system7_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(processing_system7_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(processing_system7_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(processing_system7_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wlast(processing_system7_0_axi_periph_M04_AXI_WLAST),
        .M04_AXI_wready(processing_system7_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(processing_system7_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(processing_system7_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(processing_system7_0_FCLK_CLK0),
        .M05_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M05_AXI_araddr(S_AXI_1_ARADDR),
        .M05_AXI_arready(S_AXI_1_ARREADY),
        .M05_AXI_arvalid(S_AXI_1_ARVALID),
        .M05_AXI_awaddr(S_AXI_1_AWADDR),
        .M05_AXI_awready(S_AXI_1_AWREADY),
        .M05_AXI_awvalid(S_AXI_1_AWVALID),
        .M05_AXI_bready(S_AXI_1_BREADY),
        .M05_AXI_bresp(S_AXI_1_BRESP),
        .M05_AXI_bvalid(S_AXI_1_BVALID),
        .M05_AXI_rdata(S_AXI_1_RDATA),
        .M05_AXI_rready(S_AXI_1_RREADY),
        .M05_AXI_rresp(S_AXI_1_RRESP),
        .M05_AXI_rvalid(S_AXI_1_RVALID),
        .M05_AXI_wdata(S_AXI_1_WDATA),
        .M05_AXI_wready(S_AXI_1_WREADY),
        .M05_AXI_wstrb(S_AXI_1_WSTRB),
        .M05_AXI_wvalid(S_AXI_1_WVALID),
        .M06_ACLK(processing_system7_0_FCLK_CLK0),
        .M06_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M06_AXI_araddr(S_AXI1_1_ARADDR),
        .M06_AXI_arready(S_AXI1_1_ARREADY),
        .M06_AXI_arvalid(S_AXI1_1_ARVALID),
        .M06_AXI_awaddr(S_AXI1_1_AWADDR),
        .M06_AXI_awready(S_AXI1_1_AWREADY),
        .M06_AXI_awvalid(S_AXI1_1_AWVALID),
        .M06_AXI_bready(S_AXI1_1_BREADY),
        .M06_AXI_bresp(S_AXI1_1_BRESP),
        .M06_AXI_bvalid(S_AXI1_1_BVALID),
        .M06_AXI_rdata(S_AXI1_1_RDATA),
        .M06_AXI_rready(S_AXI1_1_RREADY),
        .M06_AXI_rresp(S_AXI1_1_RRESP),
        .M06_AXI_rvalid(S_AXI1_1_RVALID),
        .M06_AXI_wdata(S_AXI1_1_WDATA),
        .M06_AXI_wready(S_AXI1_1_WREADY),
        .M06_AXI_wstrb(S_AXI1_1_WSTRB),
        .M06_AXI_wvalid(S_AXI1_1_WVALID),
        .M07_ACLK(processing_system7_0_FCLK_CLK0),
        .M07_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M07_AXI_araddr(s00_axi_1_ARADDR),
        .M07_AXI_arprot(s00_axi_1_ARPROT),
        .M07_AXI_arready(s00_axi_1_ARREADY),
        .M07_AXI_arvalid(s00_axi_1_ARVALID),
        .M07_AXI_awaddr(s00_axi_1_AWADDR),
        .M07_AXI_awprot(s00_axi_1_AWPROT),
        .M07_AXI_awready(s00_axi_1_AWREADY),
        .M07_AXI_awvalid(s00_axi_1_AWVALID),
        .M07_AXI_bready(s00_axi_1_BREADY),
        .M07_AXI_bresp(s00_axi_1_BRESP),
        .M07_AXI_bvalid(s00_axi_1_BVALID),
        .M07_AXI_rdata(s00_axi_1_RDATA),
        .M07_AXI_rready(s00_axi_1_RREADY),
        .M07_AXI_rresp(s00_axi_1_RRESP),
        .M07_AXI_rvalid(s00_axi_1_RVALID),
        .M07_AXI_wdata(s00_axi_1_WDATA),
        .M07_AXI_wready(s00_axi_1_WREADY),
        .M07_AXI_wstrb(s00_axi_1_WSTRB),
        .M07_AXI_wvalid(s00_axi_1_WVALID),
        .M08_ACLK(processing_system7_0_FCLK_CLK0),
        .M08_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M08_AXI_araddr(ctrl_1_ARADDR),
        .M08_AXI_arready(ctrl_1_ARREADY),
        .M08_AXI_arvalid(ctrl_1_ARVALID),
        .M08_AXI_awaddr(ctrl_1_AWADDR),
        .M08_AXI_awready(ctrl_1_AWREADY),
        .M08_AXI_awvalid(ctrl_1_AWVALID),
        .M08_AXI_bready(ctrl_1_BREADY),
        .M08_AXI_bresp(ctrl_1_BRESP),
        .M08_AXI_bvalid(ctrl_1_BVALID),
        .M08_AXI_rdata(ctrl_1_RDATA),
        .M08_AXI_rready(ctrl_1_RREADY),
        .M08_AXI_rresp(ctrl_1_RRESP),
        .M08_AXI_rvalid(ctrl_1_RVALID),
        .M08_AXI_wdata(ctrl_1_WDATA),
        .M08_AXI_wready(ctrl_1_WREADY),
        .M08_AXI_wstrb(ctrl_1_WSTRB),
        .M08_AXI_wvalid(ctrl_1_WVALID),
        .M09_ACLK(processing_system7_0_FCLK_CLK0),
        .M09_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M09_AXI_araddr(ctrl1_1_ARADDR),
        .M09_AXI_arready(ctrl1_1_ARREADY),
        .M09_AXI_arvalid(ctrl1_1_ARVALID),
        .M09_AXI_awaddr(ctrl1_1_AWADDR),
        .M09_AXI_awready(ctrl1_1_AWREADY),
        .M09_AXI_awvalid(ctrl1_1_AWVALID),
        .M09_AXI_bready(ctrl1_1_BREADY),
        .M09_AXI_bresp(ctrl1_1_BRESP),
        .M09_AXI_bvalid(ctrl1_1_BVALID),
        .M09_AXI_rdata(ctrl1_1_RDATA),
        .M09_AXI_rready(ctrl1_1_RREADY),
        .M09_AXI_rresp(ctrl1_1_RRESP),
        .M09_AXI_rvalid(ctrl1_1_RVALID),
        .M09_AXI_wdata(ctrl1_1_WDATA),
        .M09_AXI_wready(ctrl1_1_WREADY),
        .M09_AXI_wstrb(ctrl1_1_WSTRB),
        .M09_AXI_wvalid(ctrl1_1_WVALID),
        .M10_ACLK(processing_system7_0_FCLK_CLK0),
        .M10_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M10_AXI_araddr(S_AXI_LITE_1_ARADDR),
        .M10_AXI_arready(S_AXI_LITE_1_ARREADY),
        .M10_AXI_arvalid(S_AXI_LITE_1_ARVALID),
        .M10_AXI_awaddr(S_AXI_LITE_1_AWADDR),
        .M10_AXI_awready(S_AXI_LITE_1_AWREADY),
        .M10_AXI_awvalid(S_AXI_LITE_1_AWVALID),
        .M10_AXI_bready(S_AXI_LITE_1_BREADY),
        .M10_AXI_bresp(S_AXI_LITE_1_BRESP),
        .M10_AXI_bvalid(S_AXI_LITE_1_BVALID),
        .M10_AXI_rdata(S_AXI_LITE_1_RDATA),
        .M10_AXI_rready(S_AXI_LITE_1_RREADY),
        .M10_AXI_rresp(S_AXI_LITE_1_RRESP),
        .M10_AXI_rvalid(S_AXI_LITE_1_RVALID),
        .M10_AXI_wdata(S_AXI_LITE_1_WDATA),
        .M10_AXI_wready(S_AXI_LITE_1_WREADY),
        .M10_AXI_wvalid(S_AXI_LITE_1_WVALID),
        .M11_ACLK(processing_system7_0_FCLK_CLK0),
        .M11_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M11_AXI_araddr(processing_system7_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arprot(processing_system7_0_axi_periph_M11_AXI_ARPROT),
        .M11_AXI_arready(processing_system7_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(processing_system7_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(processing_system7_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awprot(processing_system7_0_axi_periph_M11_AXI_AWPROT),
        .M11_AXI_awready(processing_system7_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(processing_system7_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(processing_system7_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(processing_system7_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(processing_system7_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(processing_system7_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(processing_system7_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(processing_system7_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(processing_system7_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(processing_system7_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(processing_system7_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(processing_system7_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(processing_system7_0_axi_periph_M11_AXI_WVALID),
        .M12_ACLK(processing_system7_0_FCLK_CLK0),
        .M12_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M12_AXI_araddr(processing_system7_0_axi_periph_M12_AXI_ARADDR),
        .M12_AXI_arready(processing_system7_0_axi_periph_M12_AXI_ARREADY),
        .M12_AXI_arvalid(processing_system7_0_axi_periph_M12_AXI_ARVALID),
        .M12_AXI_awaddr(processing_system7_0_axi_periph_M12_AXI_AWADDR),
        .M12_AXI_awready(processing_system7_0_axi_periph_M12_AXI_AWREADY),
        .M12_AXI_awvalid(processing_system7_0_axi_periph_M12_AXI_AWVALID),
        .M12_AXI_bready(processing_system7_0_axi_periph_M12_AXI_BREADY),
        .M12_AXI_bresp(processing_system7_0_axi_periph_M12_AXI_BRESP),
        .M12_AXI_bvalid(processing_system7_0_axi_periph_M12_AXI_BVALID),
        .M12_AXI_rdata(processing_system7_0_axi_periph_M12_AXI_RDATA),
        .M12_AXI_rready(processing_system7_0_axi_periph_M12_AXI_RREADY),
        .M12_AXI_rresp(processing_system7_0_axi_periph_M12_AXI_RRESP),
        .M12_AXI_rvalid(processing_system7_0_axi_periph_M12_AXI_RVALID),
        .M12_AXI_wdata(processing_system7_0_axi_periph_M12_AXI_WDATA),
        .M12_AXI_wready(processing_system7_0_axi_periph_M12_AXI_WREADY),
        .M12_AXI_wstrb(processing_system7_0_axi_periph_M12_AXI_WSTRB),
        .M12_AXI_wvalid(processing_system7_0_axi_periph_M12_AXI_WVALID),
        .M13_ACLK(processing_system7_0_FCLK_CLK0),
        .M13_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M13_AXI_arready(1'b0),
        .M13_AXI_awready(1'b0),
        .M13_AXI_bresp({1'b0,1'b0}),
        .M13_AXI_bvalid(1'b0),
        .M13_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M13_AXI_rresp({1'b0,1'b0}),
        .M13_AXI_rvalid(1'b0),
        .M13_AXI_wready(1'b0),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .S01_ACLK(processing_system7_0_FCLK_CLK3),
        .S01_ARESETN(rst_processing_system7_0_166M_peripheral_aresetn),
        .S01_AXI_araddr(processing_system7_0_M_AXI_GP1_ARADDR),
        .S01_AXI_arburst(processing_system7_0_M_AXI_GP1_ARBURST),
        .S01_AXI_arcache(processing_system7_0_M_AXI_GP1_ARCACHE),
        .S01_AXI_arid(processing_system7_0_M_AXI_GP1_ARID),
        .S01_AXI_arlen(processing_system7_0_M_AXI_GP1_ARLEN),
        .S01_AXI_arlock(processing_system7_0_M_AXI_GP1_ARLOCK),
        .S01_AXI_arprot(processing_system7_0_M_AXI_GP1_ARPROT),
        .S01_AXI_arqos(processing_system7_0_M_AXI_GP1_ARQOS),
        .S01_AXI_arready(processing_system7_0_M_AXI_GP1_ARREADY),
        .S01_AXI_arsize(processing_system7_0_M_AXI_GP1_ARSIZE),
        .S01_AXI_arvalid(processing_system7_0_M_AXI_GP1_ARVALID),
        .S01_AXI_awaddr(processing_system7_0_M_AXI_GP1_AWADDR),
        .S01_AXI_awburst(processing_system7_0_M_AXI_GP1_AWBURST),
        .S01_AXI_awcache(processing_system7_0_M_AXI_GP1_AWCACHE),
        .S01_AXI_awid(processing_system7_0_M_AXI_GP1_AWID),
        .S01_AXI_awlen(processing_system7_0_M_AXI_GP1_AWLEN),
        .S01_AXI_awlock(processing_system7_0_M_AXI_GP1_AWLOCK),
        .S01_AXI_awprot(processing_system7_0_M_AXI_GP1_AWPROT),
        .S01_AXI_awqos(processing_system7_0_M_AXI_GP1_AWQOS),
        .S01_AXI_awready(processing_system7_0_M_AXI_GP1_AWREADY),
        .S01_AXI_awsize(processing_system7_0_M_AXI_GP1_AWSIZE),
        .S01_AXI_awvalid(processing_system7_0_M_AXI_GP1_AWVALID),
        .S01_AXI_bid(processing_system7_0_M_AXI_GP1_BID),
        .S01_AXI_bready(processing_system7_0_M_AXI_GP1_BREADY),
        .S01_AXI_bresp(processing_system7_0_M_AXI_GP1_BRESP),
        .S01_AXI_bvalid(processing_system7_0_M_AXI_GP1_BVALID),
        .S01_AXI_rdata(processing_system7_0_M_AXI_GP1_RDATA),
        .S01_AXI_rid(processing_system7_0_M_AXI_GP1_RID),
        .S01_AXI_rlast(processing_system7_0_M_AXI_GP1_RLAST),
        .S01_AXI_rready(processing_system7_0_M_AXI_GP1_RREADY),
        .S01_AXI_rresp(processing_system7_0_M_AXI_GP1_RRESP),
        .S01_AXI_rvalid(processing_system7_0_M_AXI_GP1_RVALID),
        .S01_AXI_wdata(processing_system7_0_M_AXI_GP1_WDATA),
        .S01_AXI_wid(processing_system7_0_M_AXI_GP1_WID),
        .S01_AXI_wlast(processing_system7_0_M_AXI_GP1_WLAST),
        .S01_AXI_wready(processing_system7_0_M_AXI_GP1_WREADY),
        .S01_AXI_wstrb(processing_system7_0_M_AXI_GP1_WSTRB),
        .S01_AXI_wvalid(processing_system7_0_M_AXI_GP1_WVALID));
  system_rgbleds_gpio_0 rgbleds_gpio
       (.gpio_io_o(rgbled_gpio_GPIO_TRI_O),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M12_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arready(processing_system7_0_axi_periph_M12_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M12_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M12_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M12_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M12_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M12_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M12_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M12_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M12_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M12_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M12_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M12_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M12_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M12_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M12_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M12_AXI_WVALID));
  system_rst_processing_system7_0_100M_0 rst_processing_system7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_processing_system7_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  system_rst_processing_system7_0_166M_2 rst_processing_system7_0_166M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_processing_system7_0_166M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK3));
  system_swsleds_gpio_0 swsleds_gpio
       (.gpio2_io_o(swsleds_gpio_GPIO2_TRI_O),
        .gpio_io_i(swsleds_gpio_GPIO_TRI_I),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(processing_system7_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s_axi_arready(processing_system7_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M00_AXI_WVALID));
  video_imp_1EQPUBJ video
       (.ACLK(processing_system7_0_FCLK_CLK1),
        .ARESETN(proc_sys_reset_142M_interconnect_aresetn),
        .DDC_scl_i(dvi2rgb_0_DDC_SCL_I),
        .DDC_scl_o(dvi2rgb_0_DDC_SCL_O),
        .DDC_scl_t(dvi2rgb_0_DDC_SCL_T),
        .DDC_sda_i(dvi2rgb_0_DDC_SDA_I),
        .DDC_sda_o(dvi2rgb_0_DDC_SDA_O),
        .DDC_sda_t(dvi2rgb_0_DDC_SDA_T),
        .M00_ARESETN(proc_sys_reset_142M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .PixelClk(video_PixelClk),
        .RefClk(processing_system7_0_FCLK_CLK2),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI1_araddr(S_AXI1_1_ARADDR),
        .S_AXI1_arready(S_AXI1_1_ARREADY),
        .S_AXI1_arvalid(S_AXI1_1_ARVALID),
        .S_AXI1_awaddr(S_AXI1_1_AWADDR),
        .S_AXI1_awready(S_AXI1_1_AWREADY),
        .S_AXI1_awvalid(S_AXI1_1_AWVALID),
        .S_AXI1_bready(S_AXI1_1_BREADY),
        .S_AXI1_bresp(S_AXI1_1_BRESP),
        .S_AXI1_bvalid(S_AXI1_1_BVALID),
        .S_AXI1_rdata(S_AXI1_1_RDATA),
        .S_AXI1_rready(S_AXI1_1_RREADY),
        .S_AXI1_rresp(S_AXI1_1_RRESP),
        .S_AXI1_rvalid(S_AXI1_1_RVALID),
        .S_AXI1_wdata(S_AXI1_1_WDATA),
        .S_AXI1_wready(S_AXI1_1_WREADY),
        .S_AXI1_wstrb(S_AXI1_1_WSTRB),
        .S_AXI1_wvalid(S_AXI1_1_WVALID),
        .S_AXI_LITE_araddr(S_AXI_LITE_1_ARADDR),
        .S_AXI_LITE_arready(S_AXI_LITE_1_ARREADY),
        .S_AXI_LITE_arvalid(S_AXI_LITE_1_ARVALID),
        .S_AXI_LITE_awaddr(S_AXI_LITE_1_AWADDR),
        .S_AXI_LITE_awready(S_AXI_LITE_1_AWREADY),
        .S_AXI_LITE_awvalid(S_AXI_LITE_1_AWVALID),
        .S_AXI_LITE_bready(S_AXI_LITE_1_BREADY),
        .S_AXI_LITE_bresp(S_AXI_LITE_1_BRESP),
        .S_AXI_LITE_bvalid(S_AXI_LITE_1_BVALID),
        .S_AXI_LITE_rdata(S_AXI_LITE_1_RDATA),
        .S_AXI_LITE_rready(S_AXI_LITE_1_RREADY),
        .S_AXI_LITE_rresp(S_AXI_LITE_1_RRESP),
        .S_AXI_LITE_rvalid(S_AXI_LITE_1_RVALID),
        .S_AXI_LITE_wdata(S_AXI_LITE_1_WDATA),
        .S_AXI_LITE_wready(S_AXI_LITE_1_WREADY),
        .S_AXI_LITE_wvalid(S_AXI_LITE_1_WVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .TMDS1_clk_n(video_TMDS1_CLK_N),
        .TMDS1_clk_p(video_TMDS1_CLK_P),
        .TMDS1_data_n(video_TMDS1_DATA_N),
        .TMDS1_data_p(video_TMDS1_DATA_P),
        .TMDS_clk_n(hdmi_in_1_CLK_N),
        .TMDS_clk_p(hdmi_in_1_CLK_P),
        .TMDS_data_n(hdmi_in_1_DATA_N),
        .TMDS_data_p(hdmi_in_1_DATA_P),
        .aPixelClkLckd(video_aPixelClkLckd),
        .ctrl1_araddr(ctrl1_1_ARADDR),
        .ctrl1_arready(ctrl1_1_ARREADY),
        .ctrl1_arvalid(ctrl1_1_ARVALID),
        .ctrl1_awaddr(ctrl1_1_AWADDR),
        .ctrl1_awready(ctrl1_1_AWREADY),
        .ctrl1_awvalid(ctrl1_1_AWVALID),
        .ctrl1_bready(ctrl1_1_BREADY),
        .ctrl1_bresp(ctrl1_1_BRESP),
        .ctrl1_bvalid(ctrl1_1_BVALID),
        .ctrl1_rdata(ctrl1_1_RDATA),
        .ctrl1_rready(ctrl1_1_RREADY),
        .ctrl1_rresp(ctrl1_1_RRESP),
        .ctrl1_rvalid(ctrl1_1_RVALID),
        .ctrl1_wdata(ctrl1_1_WDATA),
        .ctrl1_wready(ctrl1_1_WREADY),
        .ctrl1_wstrb(ctrl1_1_WSTRB),
        .ctrl1_wvalid(ctrl1_1_WVALID),
        .ctrl_araddr(ctrl_1_ARADDR),
        .ctrl_arready(ctrl_1_ARREADY),
        .ctrl_arvalid(ctrl_1_ARVALID),
        .ctrl_awaddr(ctrl_1_AWADDR),
        .ctrl_awready(ctrl_1_AWREADY),
        .ctrl_awvalid(ctrl_1_AWVALID),
        .ctrl_bready(ctrl_1_BREADY),
        .ctrl_bresp(ctrl_1_BRESP),
        .ctrl_bvalid(ctrl_1_BVALID),
        .ctrl_rdata(ctrl_1_RDATA),
        .ctrl_rready(ctrl_1_RREADY),
        .ctrl_rresp(ctrl_1_RRESP),
        .ctrl_rvalid(ctrl_1_RVALID),
        .ctrl_wdata(ctrl_1_WDATA),
        .ctrl_wready(ctrl_1_WREADY),
        .ctrl_wstrb(ctrl_1_WSTRB),
        .ctrl_wvalid(ctrl_1_WVALID),
        .dout(video_dout),
        .gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .gpio_io_o1(axi_gpio_video_gpio_io_o),
        .resetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_araddr(s00_axi_1_ARADDR),
        .s00_axi_aresetn(rst_processing_system7_0_100M_peripheral_aresetn),
        .s00_axi_arprot(s00_axi_1_ARPROT),
        .s00_axi_arready(s00_axi_1_ARREADY),
        .s00_axi_arvalid(s00_axi_1_ARVALID),
        .s00_axi_awaddr(s00_axi_1_AWADDR),
        .s00_axi_awprot(s00_axi_1_AWPROT),
        .s00_axi_awready(s00_axi_1_AWREADY),
        .s00_axi_awvalid(s00_axi_1_AWVALID),
        .s00_axi_bready(s00_axi_1_BREADY),
        .s00_axi_bresp(s00_axi_1_BRESP),
        .s00_axi_bvalid(s00_axi_1_BVALID),
        .s00_axi_rdata(s00_axi_1_RDATA),
        .s00_axi_rready(s00_axi_1_RREADY),
        .s00_axi_rresp(s00_axi_1_RRESP),
        .s00_axi_rvalid(s00_axi_1_RVALID),
        .s00_axi_wdata(s00_axi_1_WDATA),
        .s00_axi_wready(s00_axi_1_WREADY),
        .s00_axi_wstrb(s00_axi_1_WSTRB),
        .s00_axi_wvalid(s00_axi_1_WVALID),
        .vid_io_in_reset(proc_sys_reset_0_peripheral_reset));
  system_xlconstant_0_2 xlconstant_0
       (.dout(xlconstant_0_dout));
  system_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  system_xlconstant_10_0 xlconstant_10
       (.dout(xlconstant_10_dout));
  system_xlconstant_11_0 xlconstant_11
       (.dout(xlconstant_11_dout));
  system_xlconstant_12_1 xlconstant_12
       (.dout(xlconstant_12_dout));
  system_xlconstant_13_0 xlconstant_13
       (.dout(xlconstant_13_dout));
  system_xlconstant_14_0 xlconstant_14
       (.dout(xlconstant_14_dout));
  system_xlconstant_1_1 xlconstant_2
       (.dout(xlconstant_2_dout));
  system_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  system_xlconstant_3_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  system_xlconstant_4_0 xlconstant_5
       (.dout(xlconstant_5_dout));
  system_xlconstant_5_0 xlconstant_6
       (.dout(xlconstant_6_dout));
  system_xlconstant_6_0 xlconstant_7
       (.dout(xlconstant_7_dout));
  system_xlconstant_8_0 xlconstant_8
       (.dout(xlconstant_8_dout));
  system_xlconstant_9_0 xlconstant_9
       (.dout(xlconstant_9_dout));
endmodule

module system_axi_mem_intercon_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire S01_ACLK_1;
  wire [0:0]S01_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire [0:0]axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_intercon_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_intercon_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_intercon_to_s01_couplers_ARLEN;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARPROT;
  wire axi_mem_intercon_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_intercon_to_s01_couplers_ARSIZE;
  wire axi_mem_intercon_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_intercon_to_s01_couplers_RDATA;
  wire axi_mem_intercon_to_s01_couplers_RLAST;
  wire axi_mem_intercon_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_intercon_to_s01_couplers_RRESP;
  wire axi_mem_intercon_to_s01_couplers_RVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_ARID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_ARQOS;
  wire m00_couplers_to_axi_mem_intercon_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_ARSIZE;
  wire m00_couplers_to_axi_mem_intercon_ARVALID;
  wire [31:0]m00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [0:0]m00_couplers_to_axi_mem_intercon_AWID;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWLEN;
  wire [1:0]m00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_intercon_AWQOS;
  wire m00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_intercon_AWSIZE;
  wire m00_couplers_to_axi_mem_intercon_AWVALID;
  wire [5:0]m00_couplers_to_axi_mem_intercon_BID;
  wire m00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_BRESP;
  wire m00_couplers_to_axi_mem_intercon_BVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_RDATA;
  wire [5:0]m00_couplers_to_axi_mem_intercon_RID;
  wire m00_couplers_to_axi_mem_intercon_RLAST;
  wire m00_couplers_to_axi_mem_intercon_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_intercon_RRESP;
  wire m00_couplers_to_axi_mem_intercon_RVALID;
  wire [63:0]m00_couplers_to_axi_mem_intercon_WDATA;
  wire [0:0]m00_couplers_to_axi_mem_intercon_WID;
  wire m00_couplers_to_axi_mem_intercon_WLAST;
  wire m00_couplers_to_axi_mem_intercon_WREADY;
  wire [7:0]m00_couplers_to_axi_mem_intercon_WSTRB;
  wire m00_couplers_to_axi_mem_intercon_WVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [127:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_mem_intercon_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_intercon_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_intercon_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_mem_intercon_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_mem_intercon_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_mem_intercon_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_intercon_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_intercon_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_intercon_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_intercon_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_mem_intercon_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_intercon_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_mem_intercon_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN[0];
  assign S01_AXI_arready = axi_mem_intercon_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_intercon_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_intercon_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_intercon_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_intercon_to_s01_couplers_RVALID;
  assign axi_mem_intercon_ACLK_net = ACLK;
  assign axi_mem_intercon_ARESETN_net = ARESETN[0];
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_intercon_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_intercon_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_intercon_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_intercon_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_intercon_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_intercon_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_intercon_to_s01_couplers_RREADY = S01_AXI_rready;
  assign m00_couplers_to_axi_mem_intercon_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_intercon_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_intercon_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_mem_intercon_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_mem_intercon_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_intercon_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_intercon_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  m00_couplers_imp_1D9ZDWS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_intercon_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_intercon_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_intercon_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_intercon_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_intercon_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_intercon_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_intercon_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_intercon_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_intercon_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_intercon_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_intercon_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_intercon_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_intercon_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_intercon_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_intercon_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_intercon_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_intercon_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_intercon_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_intercon_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_mem_intercon_WID),
        .M_AXI_wlast(m00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(axi_mem_intercon_ACLK_net),
        .S_ARESETN(axi_mem_intercon_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_117EIM5 s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
  s01_couplers_imp_B8JDWS s01_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_intercon_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_intercon_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_intercon_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_intercon_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_intercon_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_mem_intercon_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_intercon_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_intercon_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_intercon_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_intercon_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_intercon_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_intercon_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_intercon_to_s01_couplers_RVALID));
  system_xbar_6 xbar
       (.aclk(axi_mem_intercon_ACLK_net),
        .aresetn(axi_mem_intercon_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,1'b0,1'b0}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,1'b0}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[0]}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,1'b0}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize({1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[63:0]}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[0]}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,1'b0}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[1:0]}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[0]}),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({1'b1,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module system_processing_system7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arid,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awid,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rid,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arprot,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awprot,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wid,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [12:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [12:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output [0:0]M02_AXI_awvalid;
  input [12:0]M02_AXI_bid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  input [12:0]M02_AXI_rid;
  input [0:0]M02_AXI_rlast;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  output [0:0]M02_AXI_wlast;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [12:0]M03_AXI_arid;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [12:0]M03_AXI_awid;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output [0:0]M03_AXI_awvalid;
  input [12:0]M03_AXI_bid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  input [12:0]M03_AXI_rid;
  input [0:0]M03_AXI_rlast;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  output [0:0]M03_AXI_wlast;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [1:0]M04_AXI_arburst;
  output [3:0]M04_AXI_arcache;
  output [12:0]M04_AXI_arid;
  output [7:0]M04_AXI_arlen;
  output [0:0]M04_AXI_arlock;
  output [2:0]M04_AXI_arprot;
  input [0:0]M04_AXI_arready;
  output [2:0]M04_AXI_arsize;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [1:0]M04_AXI_awburst;
  output [3:0]M04_AXI_awcache;
  output [12:0]M04_AXI_awid;
  output [7:0]M04_AXI_awlen;
  output [0:0]M04_AXI_awlock;
  output [2:0]M04_AXI_awprot;
  input [0:0]M04_AXI_awready;
  output [2:0]M04_AXI_awsize;
  output [0:0]M04_AXI_awvalid;
  input [12:0]M04_AXI_bid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  input [12:0]M04_AXI_rid;
  input [0:0]M04_AXI_rlast;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  output [0:0]M04_AXI_wlast;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input [0:0]M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input [0:0]M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input [0:0]M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input [0:0]M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input [0:0]M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input [0:0]M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  output [2:0]M11_AXI_arprot;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  output [2:0]M11_AXI_awprot;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input [0:0]M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input [0:0]M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [11:0]S01_AXI_arid;
  input [3:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [11:0]S01_AXI_awid;
  input [3:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [11:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [11:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [11:0]S01_AXI_wid;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire M04_ACLK_1;
  wire [0:0]M04_ARESETN_1;
  wire M05_ACLK_1;
  wire [0:0]M05_ARESETN_1;
  wire M06_ACLK_1;
  wire [0:0]M06_ARESETN_1;
  wire M07_ACLK_1;
  wire [0:0]M07_ARESETN_1;
  wire M08_ACLK_1;
  wire [0:0]M08_ARESETN_1;
  wire M09_ACLK_1;
  wire [0:0]M09_ARESETN_1;
  wire M10_ACLK_1;
  wire [0:0]M10_ARESETN_1;
  wire M11_ACLK_1;
  wire [0:0]M11_ARESETN_1;
  wire M12_ACLK_1;
  wire [0:0]M12_ARESETN_1;
  wire M13_ACLK_1;
  wire [0:0]M13_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire S01_ACLK_1;
  wire [0:0]S01_ARESETN_1;
  wire [31:0]m00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m00_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m00_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m00_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m00_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m00_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m00_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m01_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m01_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m01_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m01_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m01_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m01_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m01_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [1:0]m02_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire [3:0]m02_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire [12:0]m02_couplers_to_processing_system7_0_axi_periph_ARID;
  wire [7:0]m02_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire [2:0]m02_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire [2:0]m02_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [1:0]m02_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire [3:0]m02_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire [12:0]m02_couplers_to_processing_system7_0_axi_periph_AWID;
  wire [7:0]m02_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire [2:0]m02_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire [2:0]m02_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire [12:0]m02_couplers_to_processing_system7_0_axi_periph_BID;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire [12:0]m02_couplers_to_processing_system7_0_axi_periph_RID;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire [0:0]m02_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [1:0]m03_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire [3:0]m03_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire [12:0]m03_couplers_to_processing_system7_0_axi_periph_ARID;
  wire [7:0]m03_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire [2:0]m03_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire [2:0]m03_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [1:0]m03_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire [3:0]m03_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire [12:0]m03_couplers_to_processing_system7_0_axi_periph_AWID;
  wire [7:0]m03_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire [2:0]m03_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire [2:0]m03_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire [12:0]m03_couplers_to_processing_system7_0_axi_periph_BID;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire [12:0]m03_couplers_to_processing_system7_0_axi_periph_RID;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire [0:0]m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [1:0]m04_couplers_to_processing_system7_0_axi_periph_ARBURST;
  wire [3:0]m04_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  wire [12:0]m04_couplers_to_processing_system7_0_axi_periph_ARID;
  wire [7:0]m04_couplers_to_processing_system7_0_axi_periph_ARLEN;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  wire [2:0]m04_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire [2:0]m04_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [1:0]m04_couplers_to_processing_system7_0_axi_periph_AWBURST;
  wire [3:0]m04_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  wire [12:0]m04_couplers_to_processing_system7_0_axi_periph_AWID;
  wire [7:0]m04_couplers_to_processing_system7_0_axi_periph_AWLEN;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  wire [2:0]m04_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire [2:0]m04_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire [12:0]m04_couplers_to_processing_system7_0_axi_periph_BID;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire [12:0]m04_couplers_to_processing_system7_0_axi_periph_RID;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_RLAST;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_WLAST;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire [0:0]m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m05_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m05_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m05_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m05_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m05_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m05_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m05_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m05_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m05_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m05_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m06_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m06_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m06_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [2:0]m07_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m07_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m07_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [2:0]m07_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m07_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m07_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m07_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m07_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m07_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m07_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m07_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m07_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m08_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m08_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m08_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m08_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m08_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m09_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m09_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m09_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m09_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m09_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m09_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m09_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m09_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m09_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m09_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m09_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m09_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m09_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m09_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m09_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m09_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m09_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m10_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m10_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m10_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m10_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m10_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m10_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m10_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m10_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m10_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m10_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m10_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m10_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m10_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m10_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m10_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m10_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m11_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire [2:0]m11_couplers_to_processing_system7_0_axi_periph_ARPROT;
  wire m11_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m11_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m11_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire [2:0]m11_couplers_to_processing_system7_0_axi_periph_AWPROT;
  wire m11_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m11_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m11_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m11_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m11_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m11_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m11_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m11_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m11_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m11_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m11_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m11_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m11_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire [31:0]m12_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m12_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m12_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire [31:0]m12_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m12_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m12_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m12_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m12_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m12_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m12_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m12_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m12_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m12_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire [31:0]m12_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m12_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire [3:0]m12_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m12_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  wire m13_couplers_to_processing_system7_0_axi_periph_ARREADY;
  wire m13_couplers_to_processing_system7_0_axi_periph_ARVALID;
  wire m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  wire m13_couplers_to_processing_system7_0_axi_periph_AWREADY;
  wire m13_couplers_to_processing_system7_0_axi_periph_AWVALID;
  wire m13_couplers_to_processing_system7_0_axi_periph_BREADY;
  wire [1:0]m13_couplers_to_processing_system7_0_axi_periph_BRESP;
  wire m13_couplers_to_processing_system7_0_axi_periph_BVALID;
  wire [31:0]m13_couplers_to_processing_system7_0_axi_periph_RDATA;
  wire m13_couplers_to_processing_system7_0_axi_periph_RREADY;
  wire [1:0]m13_couplers_to_processing_system7_0_axi_periph_RRESP;
  wire m13_couplers_to_processing_system7_0_axi_periph_RVALID;
  wire m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  wire m13_couplers_to_processing_system7_0_axi_periph_WREADY;
  wire m13_couplers_to_processing_system7_0_axi_periph_WSTRB;
  wire m13_couplers_to_processing_system7_0_axi_periph_WVALID;
  wire processing_system7_0_axi_periph_ACLK_net;
  wire [0:0]processing_system7_0_axi_periph_ARESETN_net;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_ARQOS;
  wire processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire processing_system7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_AWQOS;
  wire processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire processing_system7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_BID;
  wire processing_system7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  wire processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_RID;
  wire processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  wire processing_system7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  wire processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s00_couplers_WID;
  wire processing_system7_0_axi_periph_to_s00_couplers_WLAST;
  wire processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]processing_system7_0_axi_periph_to_s00_couplers_WSTRB;
  wire processing_system7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s01_couplers_ARADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_ARBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_ARCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s01_couplers_ARID;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_ARLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_ARLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s01_couplers_ARPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_ARQOS;
  wire processing_system7_0_axi_periph_to_s01_couplers_ARREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s01_couplers_ARSIZE;
  wire processing_system7_0_axi_periph_to_s01_couplers_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s01_couplers_AWADDR;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_AWBURST;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_AWCACHE;
  wire [11:0]processing_system7_0_axi_periph_to_s01_couplers_AWID;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_AWLEN;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_AWLOCK;
  wire [2:0]processing_system7_0_axi_periph_to_s01_couplers_AWPROT;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_AWQOS;
  wire processing_system7_0_axi_periph_to_s01_couplers_AWREADY;
  wire [2:0]processing_system7_0_axi_periph_to_s01_couplers_AWSIZE;
  wire processing_system7_0_axi_periph_to_s01_couplers_AWVALID;
  wire [11:0]processing_system7_0_axi_periph_to_s01_couplers_BID;
  wire processing_system7_0_axi_periph_to_s01_couplers_BREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_BRESP;
  wire processing_system7_0_axi_periph_to_s01_couplers_BVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s01_couplers_RDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s01_couplers_RID;
  wire processing_system7_0_axi_periph_to_s01_couplers_RLAST;
  wire processing_system7_0_axi_periph_to_s01_couplers_RREADY;
  wire [1:0]processing_system7_0_axi_periph_to_s01_couplers_RRESP;
  wire processing_system7_0_axi_periph_to_s01_couplers_RVALID;
  wire [31:0]processing_system7_0_axi_periph_to_s01_couplers_WDATA;
  wire [11:0]processing_system7_0_axi_periph_to_s01_couplers_WID;
  wire processing_system7_0_axi_periph_to_s01_couplers_WLAST;
  wire processing_system7_0_axi_periph_to_s01_couplers_WREADY;
  wire [3:0]processing_system7_0_axi_periph_to_s01_couplers_WSTRB;
  wire processing_system7_0_axi_periph_to_s01_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [12:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [12:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [11:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [11:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [25:13]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [25:13]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [12:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [12:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [12:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [12:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [25:13]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [25:13]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [12:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [12:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [38:26]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [38:26]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [12:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [12:0]xbar_to_m02_couplers_RID;
  wire [0:0]xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [51:39]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [51:39]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [12:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [12:0]xbar_to_m03_couplers_RID;
  wire [0:0]xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [64:52]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [64:52]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [12:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [12:0]xbar_to_m04_couplers_RID;
  wire [0:0]xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [77:65]xbar_to_m05_couplers_ARID;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [77:65]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [12:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [12:0]xbar_to_m05_couplers_RID;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [90:78]xbar_to_m06_couplers_ARID;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [90:78]xbar_to_m06_couplers_AWID;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [12:0]xbar_to_m06_couplers_BID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [12:0]xbar_to_m06_couplers_RID;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [103:91]xbar_to_m07_couplers_ARID;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [103:91]xbar_to_m07_couplers_AWID;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [12:0]xbar_to_m07_couplers_BID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [12:0]xbar_to_m07_couplers_RID;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [116:104]xbar_to_m08_couplers_ARID;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [35:32]xbar_to_m08_couplers_ARQOS;
  wire xbar_to_m08_couplers_ARREADY;
  wire [35:32]xbar_to_m08_couplers_ARREGION;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [116:104]xbar_to_m08_couplers_AWID;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [35:32]xbar_to_m08_couplers_AWQOS;
  wire xbar_to_m08_couplers_AWREADY;
  wire [35:32]xbar_to_m08_couplers_AWREGION;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [12:0]xbar_to_m08_couplers_BID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [12:0]xbar_to_m08_couplers_RID;
  wire xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [19:18]xbar_to_m09_couplers_ARBURST;
  wire [39:36]xbar_to_m09_couplers_ARCACHE;
  wire [129:117]xbar_to_m09_couplers_ARID;
  wire [79:72]xbar_to_m09_couplers_ARLEN;
  wire [9:9]xbar_to_m09_couplers_ARLOCK;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [39:36]xbar_to_m09_couplers_ARQOS;
  wire xbar_to_m09_couplers_ARREADY;
  wire [39:36]xbar_to_m09_couplers_ARREGION;
  wire [29:27]xbar_to_m09_couplers_ARSIZE;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [19:18]xbar_to_m09_couplers_AWBURST;
  wire [39:36]xbar_to_m09_couplers_AWCACHE;
  wire [129:117]xbar_to_m09_couplers_AWID;
  wire [79:72]xbar_to_m09_couplers_AWLEN;
  wire [9:9]xbar_to_m09_couplers_AWLOCK;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [39:36]xbar_to_m09_couplers_AWQOS;
  wire xbar_to_m09_couplers_AWREADY;
  wire [39:36]xbar_to_m09_couplers_AWREGION;
  wire [29:27]xbar_to_m09_couplers_AWSIZE;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [12:0]xbar_to_m09_couplers_BID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [12:0]xbar_to_m09_couplers_RID;
  wire xbar_to_m09_couplers_RLAST;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [9:9]xbar_to_m09_couplers_WLAST;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [21:20]xbar_to_m10_couplers_ARBURST;
  wire [43:40]xbar_to_m10_couplers_ARCACHE;
  wire [142:130]xbar_to_m10_couplers_ARID;
  wire [87:80]xbar_to_m10_couplers_ARLEN;
  wire [10:10]xbar_to_m10_couplers_ARLOCK;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire [43:40]xbar_to_m10_couplers_ARQOS;
  wire xbar_to_m10_couplers_ARREADY;
  wire [43:40]xbar_to_m10_couplers_ARREGION;
  wire [32:30]xbar_to_m10_couplers_ARSIZE;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [21:20]xbar_to_m10_couplers_AWBURST;
  wire [43:40]xbar_to_m10_couplers_AWCACHE;
  wire [142:130]xbar_to_m10_couplers_AWID;
  wire [87:80]xbar_to_m10_couplers_AWLEN;
  wire [10:10]xbar_to_m10_couplers_AWLOCK;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire [43:40]xbar_to_m10_couplers_AWQOS;
  wire xbar_to_m10_couplers_AWREADY;
  wire [43:40]xbar_to_m10_couplers_AWREGION;
  wire [32:30]xbar_to_m10_couplers_AWSIZE;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [12:0]xbar_to_m10_couplers_BID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [12:0]xbar_to_m10_couplers_RID;
  wire xbar_to_m10_couplers_RLAST;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire [10:10]xbar_to_m10_couplers_WLAST;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire [23:22]xbar_to_m11_couplers_ARBURST;
  wire [47:44]xbar_to_m11_couplers_ARCACHE;
  wire [155:143]xbar_to_m11_couplers_ARID;
  wire [95:88]xbar_to_m11_couplers_ARLEN;
  wire [11:11]xbar_to_m11_couplers_ARLOCK;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire [47:44]xbar_to_m11_couplers_ARQOS;
  wire xbar_to_m11_couplers_ARREADY;
  wire [47:44]xbar_to_m11_couplers_ARREGION;
  wire [35:33]xbar_to_m11_couplers_ARSIZE;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire [23:22]xbar_to_m11_couplers_AWBURST;
  wire [47:44]xbar_to_m11_couplers_AWCACHE;
  wire [155:143]xbar_to_m11_couplers_AWID;
  wire [95:88]xbar_to_m11_couplers_AWLEN;
  wire [11:11]xbar_to_m11_couplers_AWLOCK;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire [47:44]xbar_to_m11_couplers_AWQOS;
  wire xbar_to_m11_couplers_AWREADY;
  wire [47:44]xbar_to_m11_couplers_AWREGION;
  wire [35:33]xbar_to_m11_couplers_AWSIZE;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [12:0]xbar_to_m11_couplers_BID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [12:0]xbar_to_m11_couplers_RID;
  wire xbar_to_m11_couplers_RLAST;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire [11:11]xbar_to_m11_couplers_WLAST;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire [25:24]xbar_to_m12_couplers_ARBURST;
  wire [51:48]xbar_to_m12_couplers_ARCACHE;
  wire [168:156]xbar_to_m12_couplers_ARID;
  wire [103:96]xbar_to_m12_couplers_ARLEN;
  wire [12:12]xbar_to_m12_couplers_ARLOCK;
  wire [38:36]xbar_to_m12_couplers_ARPROT;
  wire [51:48]xbar_to_m12_couplers_ARQOS;
  wire xbar_to_m12_couplers_ARREADY;
  wire [51:48]xbar_to_m12_couplers_ARREGION;
  wire [38:36]xbar_to_m12_couplers_ARSIZE;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire [25:24]xbar_to_m12_couplers_AWBURST;
  wire [51:48]xbar_to_m12_couplers_AWCACHE;
  wire [168:156]xbar_to_m12_couplers_AWID;
  wire [103:96]xbar_to_m12_couplers_AWLEN;
  wire [12:12]xbar_to_m12_couplers_AWLOCK;
  wire [38:36]xbar_to_m12_couplers_AWPROT;
  wire [51:48]xbar_to_m12_couplers_AWQOS;
  wire xbar_to_m12_couplers_AWREADY;
  wire [51:48]xbar_to_m12_couplers_AWREGION;
  wire [38:36]xbar_to_m12_couplers_AWSIZE;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:0]xbar_to_m12_couplers_BID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [12:0]xbar_to_m12_couplers_RID;
  wire xbar_to_m12_couplers_RLAST;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire [12:12]xbar_to_m12_couplers_WLAST;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire [27:26]xbar_to_m13_couplers_ARBURST;
  wire [55:52]xbar_to_m13_couplers_ARCACHE;
  wire [181:169]xbar_to_m13_couplers_ARID;
  wire [111:104]xbar_to_m13_couplers_ARLEN;
  wire [13:13]xbar_to_m13_couplers_ARLOCK;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire [55:52]xbar_to_m13_couplers_ARQOS;
  wire xbar_to_m13_couplers_ARREADY;
  wire [55:52]xbar_to_m13_couplers_ARREGION;
  wire [41:39]xbar_to_m13_couplers_ARSIZE;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire [27:26]xbar_to_m13_couplers_AWBURST;
  wire [55:52]xbar_to_m13_couplers_AWCACHE;
  wire [181:169]xbar_to_m13_couplers_AWID;
  wire [111:104]xbar_to_m13_couplers_AWLEN;
  wire [13:13]xbar_to_m13_couplers_AWLOCK;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire [55:52]xbar_to_m13_couplers_AWQOS;
  wire xbar_to_m13_couplers_AWREADY;
  wire [55:52]xbar_to_m13_couplers_AWREGION;
  wire [41:39]xbar_to_m13_couplers_AWSIZE;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire xbar_to_m13_couplers_BID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire xbar_to_m13_couplers_RDATA;
  wire xbar_to_m13_couplers_RID;
  wire xbar_to_m13_couplers_RLAST;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire [13:13]xbar_to_m13_couplers_WLAST;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [55:0]NLW_xbar_m_axi_arqos_UNCONNECTED;
  wire [55:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [55:0]NLW_xbar_m_axi_awqos_UNCONNECTED;
  wire [55:0]NLW_xbar_m_axi_awregion_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[31:0] = m01_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr[31:0] = m02_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M02_AXI_arid[12:0] = m02_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M02_AXI_arvalid[0] = m02_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M02_AXI_awid[12:0] = m02_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M02_AXI_awvalid[0] = m02_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M02_AXI_wlast[0] = m02_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr[31:0] = m03_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M03_AXI_arid[12:0] = m03_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M03_AXI_arvalid[0] = m03_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M03_AXI_awid[12:0] = m03_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M03_AXI_awvalid[0] = m03_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M03_AXI_wlast[0] = m03_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN[0];
  assign M04_AXI_araddr[31:0] = m04_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M04_AXI_arburst[1:0] = m04_couplers_to_processing_system7_0_axi_periph_ARBURST;
  assign M04_AXI_arcache[3:0] = m04_couplers_to_processing_system7_0_axi_periph_ARCACHE;
  assign M04_AXI_arid[12:0] = m04_couplers_to_processing_system7_0_axi_periph_ARID;
  assign M04_AXI_arlen[7:0] = m04_couplers_to_processing_system7_0_axi_periph_ARLEN;
  assign M04_AXI_arlock[0] = m04_couplers_to_processing_system7_0_axi_periph_ARLOCK;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M04_AXI_arsize[2:0] = m04_couplers_to_processing_system7_0_axi_periph_ARSIZE;
  assign M04_AXI_arvalid[0] = m04_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M04_AXI_awburst[1:0] = m04_couplers_to_processing_system7_0_axi_periph_AWBURST;
  assign M04_AXI_awcache[3:0] = m04_couplers_to_processing_system7_0_axi_periph_AWCACHE;
  assign M04_AXI_awid[12:0] = m04_couplers_to_processing_system7_0_axi_periph_AWID;
  assign M04_AXI_awlen[7:0] = m04_couplers_to_processing_system7_0_axi_periph_AWLEN;
  assign M04_AXI_awlock[0] = m04_couplers_to_processing_system7_0_axi_periph_AWLOCK;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M04_AXI_awsize[2:0] = m04_couplers_to_processing_system7_0_axi_periph_AWSIZE;
  assign M04_AXI_awvalid[0] = m04_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M04_AXI_wlast[0] = m04_couplers_to_processing_system7_0_axi_periph_WLAST;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN[0];
  assign M05_AXI_araddr[31:0] = m05_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN[0];
  assign M06_AXI_araddr[31:0] = m06_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN[0];
  assign M07_AXI_araddr[31:0] = m07_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN[0];
  assign M08_AXI_araddr[31:0] = m08_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN[0];
  assign M09_AXI_araddr[31:0] = m09_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M09_AXI_rready = m09_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN[0];
  assign M10_AXI_araddr[31:0] = m10_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M10_AXI_rready = m10_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M10_AXI_wvalid = m10_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN[0];
  assign M11_AXI_araddr[31:0] = m11_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M11_AXI_arprot[2:0] = m11_couplers_to_processing_system7_0_axi_periph_ARPROT;
  assign M11_AXI_arvalid = m11_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M11_AXI_awprot[2:0] = m11_couplers_to_processing_system7_0_axi_periph_AWPROT;
  assign M11_AXI_awvalid = m11_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M11_AXI_rready = m11_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN[0];
  assign M12_AXI_araddr[31:0] = m12_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M12_AXI_rready = m12_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN[0];
  assign M13_AXI_araddr[31] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[30] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[29] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[28] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[27] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[26] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[25] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[24] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[23] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[22] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[21] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[20] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[19] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[18] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[17] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[16] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[15] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[14] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[13] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[12] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[11] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[10] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[9] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[8] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[7] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[6] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[5] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[4] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[3] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[2] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[1] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_araddr[0] = m13_couplers_to_processing_system7_0_axi_periph_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_processing_system7_0_axi_periph_ARVALID;
  assign M13_AXI_awaddr[31] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[30] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[29] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[28] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[27] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[26] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[25] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[24] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[23] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[22] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[21] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[20] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[19] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[18] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[17] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[16] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[15] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[14] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[13] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[12] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[11] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[10] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[9] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[8] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[7] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[6] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[5] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[4] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[3] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[2] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[1] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awaddr[0] = m13_couplers_to_processing_system7_0_axi_periph_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_processing_system7_0_axi_periph_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_processing_system7_0_axi_periph_BREADY;
  assign M13_AXI_rready = m13_couplers_to_processing_system7_0_axi_periph_RREADY;
  assign M13_AXI_wdata[31] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[30] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[29] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[28] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[27] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[26] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[25] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[24] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[23] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[22] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[21] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[20] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[19] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[18] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[17] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[16] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[15] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[14] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[13] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[12] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[11] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[10] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[9] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[8] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[7] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[6] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[5] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[4] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[3] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[2] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[1] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wdata[0] = m13_couplers_to_processing_system7_0_axi_periph_WDATA;
  assign M13_AXI_wstrb[3] = m13_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M13_AXI_wstrb[2] = m13_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M13_AXI_wstrb[1] = m13_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M13_AXI_wstrb[0] = m13_couplers_to_processing_system7_0_axi_periph_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_processing_system7_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = processing_system7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = processing_system7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN[0];
  assign S01_AXI_arready = processing_system7_0_axi_periph_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = processing_system7_0_axi_periph_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[11:0] = processing_system7_0_axi_periph_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = processing_system7_0_axi_periph_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = processing_system7_0_axi_periph_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = processing_system7_0_axi_periph_to_s01_couplers_RDATA;
  assign S01_AXI_rid[11:0] = processing_system7_0_axi_periph_to_s01_couplers_RID;
  assign S01_AXI_rlast = processing_system7_0_axi_periph_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = processing_system7_0_axi_periph_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = processing_system7_0_axi_periph_to_s01_couplers_RVALID;
  assign S01_AXI_wready = processing_system7_0_axi_periph_to_s01_couplers_WREADY;
  assign m00_couplers_to_processing_system7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_processing_system7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_processing_system7_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_processing_system7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_processing_system7_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_processing_system7_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_processing_system7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_processing_system7_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_processing_system7_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_processing_system7_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_processing_system7_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_processing_system7_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_processing_system7_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_processing_system7_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_processing_system7_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_processing_system7_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_processing_system7_0_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_processing_system7_0_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_processing_system7_0_axi_periph_BID = M02_AXI_bid[12:0];
  assign m02_couplers_to_processing_system7_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_processing_system7_0_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_processing_system7_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_processing_system7_0_axi_periph_RID = M02_AXI_rid[12:0];
  assign m02_couplers_to_processing_system7_0_axi_periph_RLAST = M02_AXI_rlast[0];
  assign m02_couplers_to_processing_system7_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_processing_system7_0_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_processing_system7_0_axi_periph_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_BID = M03_AXI_bid[12:0];
  assign m03_couplers_to_processing_system7_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_processing_system7_0_axi_periph_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_processing_system7_0_axi_periph_RID = M03_AXI_rid[12:0];
  assign m03_couplers_to_processing_system7_0_axi_periph_RLAST = M03_AXI_rlast[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_processing_system7_0_axi_periph_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_processing_system7_0_axi_periph_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_BID = M04_AXI_bid[12:0];
  assign m04_couplers_to_processing_system7_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_processing_system7_0_axi_periph_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_processing_system7_0_axi_periph_RID = M04_AXI_rid[12:0];
  assign m04_couplers_to_processing_system7_0_axi_periph_RLAST = M04_AXI_rlast[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_processing_system7_0_axi_periph_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_processing_system7_0_axi_periph_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_processing_system7_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_processing_system7_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_processing_system7_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_processing_system7_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_processing_system7_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_processing_system7_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_processing_system7_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_processing_system7_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_processing_system7_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_processing_system7_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_processing_system7_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_processing_system7_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_processing_system7_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_processing_system7_0_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_processing_system7_0_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_processing_system7_0_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_processing_system7_0_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_processing_system7_0_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_processing_system7_0_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_processing_system7_0_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_processing_system7_0_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_processing_system7_0_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_processing_system7_0_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_processing_system7_0_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_processing_system7_0_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_processing_system7_0_axi_periph_WREADY = M08_AXI_wready;
  assign m09_couplers_to_processing_system7_0_axi_periph_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_processing_system7_0_axi_periph_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_processing_system7_0_axi_periph_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_processing_system7_0_axi_periph_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_processing_system7_0_axi_periph_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_processing_system7_0_axi_periph_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_processing_system7_0_axi_periph_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_processing_system7_0_axi_periph_WREADY = M09_AXI_wready;
  assign m10_couplers_to_processing_system7_0_axi_periph_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_processing_system7_0_axi_periph_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_processing_system7_0_axi_periph_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_processing_system7_0_axi_periph_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_processing_system7_0_axi_periph_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_processing_system7_0_axi_periph_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_processing_system7_0_axi_periph_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_processing_system7_0_axi_periph_WREADY = M10_AXI_wready;
  assign m11_couplers_to_processing_system7_0_axi_periph_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_processing_system7_0_axi_periph_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_processing_system7_0_axi_periph_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_processing_system7_0_axi_periph_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_processing_system7_0_axi_periph_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_processing_system7_0_axi_periph_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_processing_system7_0_axi_periph_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_processing_system7_0_axi_periph_WREADY = M11_AXI_wready;
  assign m12_couplers_to_processing_system7_0_axi_periph_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_processing_system7_0_axi_periph_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_processing_system7_0_axi_periph_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_processing_system7_0_axi_periph_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_processing_system7_0_axi_periph_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_processing_system7_0_axi_periph_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_processing_system7_0_axi_periph_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_processing_system7_0_axi_periph_WREADY = M12_AXI_wready;
  assign m13_couplers_to_processing_system7_0_axi_periph_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_processing_system7_0_axi_periph_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_processing_system7_0_axi_periph_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_processing_system7_0_axi_periph_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_processing_system7_0_axi_periph_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_processing_system7_0_axi_periph_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_processing_system7_0_axi_periph_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_processing_system7_0_axi_periph_WREADY = M13_AXI_wready;
  assign processing_system7_0_axi_periph_ACLK_net = ACLK;
  assign processing_system7_0_axi_periph_ARESETN_net = ARESETN[0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign processing_system7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign processing_system7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign processing_system7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign processing_system7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign processing_system7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign processing_system7_0_axi_periph_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARID = S01_AXI_arid[11:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARLEN = S01_AXI_arlen[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign processing_system7_0_axi_periph_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWID = S01_AXI_awid[11:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWLEN = S01_AXI_awlen[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign processing_system7_0_axi_periph_to_s01_couplers_BREADY = S01_AXI_bready;
  assign processing_system7_0_axi_periph_to_s01_couplers_RREADY = S01_AXI_rready;
  assign processing_system7_0_axi_periph_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_WID = S01_AXI_wid[11:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign processing_system7_0_axi_periph_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_to_s01_couplers_WVALID = S01_AXI_wvalid;
  m00_couplers_imp_WKXF3L m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1ORP4PS m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1VD9O7M m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m02_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m02_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m02_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m02_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m02_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m02_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m02_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m02_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m02_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m02_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m02_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awready(m02_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m02_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m02_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m02_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m02_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m02_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m02_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m02_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m02_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_PPDLC3 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m03_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m03_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m03_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m03_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m03_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m03_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m03_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m03_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m03_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m03_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m03_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m03_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m03_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m03_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m03_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m03_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m03_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m03_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m03_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_18RU2BA m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arburst(m04_couplers_to_processing_system7_0_axi_periph_ARBURST),
        .M_AXI_arcache(m04_couplers_to_processing_system7_0_axi_periph_ARCACHE),
        .M_AXI_arid(m04_couplers_to_processing_system7_0_axi_periph_ARID),
        .M_AXI_arlen(m04_couplers_to_processing_system7_0_axi_periph_ARLEN),
        .M_AXI_arlock(m04_couplers_to_processing_system7_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arsize(m04_couplers_to_processing_system7_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awburst(m04_couplers_to_processing_system7_0_axi_periph_AWBURST),
        .M_AXI_awcache(m04_couplers_to_processing_system7_0_axi_periph_AWCACHE),
        .M_AXI_awid(m04_couplers_to_processing_system7_0_axi_periph_AWID),
        .M_AXI_awlen(m04_couplers_to_processing_system7_0_axi_periph_AWLEN),
        .M_AXI_awlock(m04_couplers_to_processing_system7_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awsize(m04_couplers_to_processing_system7_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(m04_couplers_to_processing_system7_0_axi_periph_BID),
        .M_AXI_bready(m04_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rid(m04_couplers_to_processing_system7_0_axi_periph_RID),
        .M_AXI_rlast(m04_couplers_to_processing_system7_0_axi_periph_RLAST),
        .M_AXI_rready(m04_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wlast(m04_couplers_to_processing_system7_0_axi_periph_WLAST),
        .M_AXI_wready(m04_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_47WDK7 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m05_couplers_ARID),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rid(xbar_to_m05_couplers_RID),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_ATGYFP m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m06_couplers_ARID),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m06_couplers_AWID),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m06_couplers_BID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rid(xbar_to_m06_couplers_RID),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_11WAABO m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m07_couplers_ARID),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m07_couplers_AWID),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m07_couplers_BID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rid(xbar_to_m07_couplers_RID),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1SWBGE m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m08_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m08_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m08_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m08_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m08_couplers_ARID),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m08_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m08_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m08_couplers_AWID),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m08_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m08_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m08_couplers_BID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rid(xbar_to_m08_couplers_RID),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_1AN18J3 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m09_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m09_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m09_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m09_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m09_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m09_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m09_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m09_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m09_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m09_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m09_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m09_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m09_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m09_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m09_couplers_ARID),
        .S_AXI_arlen(xbar_to_m09_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m09_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m09_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m09_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m09_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m09_couplers_AWID),
        .S_AXI_awlen(xbar_to_m09_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m09_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m09_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m09_couplers_BID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rid(xbar_to_m09_couplers_RID),
        .S_AXI_rlast(xbar_to_m09_couplers_RLAST),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m09_couplers_WLAST),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1VD5LO2 m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m10_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m10_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m10_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m10_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m10_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m10_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m10_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m10_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m10_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m10_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m10_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wvalid(m10_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m10_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m10_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m10_couplers_ARID),
        .S_AXI_arlen(xbar_to_m10_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m10_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m10_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m10_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m10_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m10_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m10_couplers_AWID),
        .S_AXI_awlen(xbar_to_m10_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m10_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m10_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m10_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m10_couplers_BID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rid(xbar_to_m10_couplers_RID),
        .S_AXI_rlast(xbar_to_m10_couplers_RLAST),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m10_couplers_WLAST),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_PPAXCZ m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arprot(m11_couplers_to_processing_system7_0_axi_periph_ARPROT),
        .M_AXI_arready(m11_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awprot(m11_couplers_to_processing_system7_0_axi_periph_AWPROT),
        .M_AXI_awready(m11_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m11_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m11_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m11_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m11_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m11_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m11_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m11_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m11_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m11_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m11_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m11_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m11_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m11_couplers_ARID),
        .S_AXI_arlen(xbar_to_m11_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m11_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m11_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m11_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m11_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m11_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m11_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m11_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m11_couplers_AWID),
        .S_AXI_awlen(xbar_to_m11_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m11_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m11_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m11_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m11_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m11_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m11_couplers_BID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rid(xbar_to_m11_couplers_RID),
        .S_AXI_rlast(xbar_to_m11_couplers_RLAST),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m11_couplers_WLAST),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_WKTNKH m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m12_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m12_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bready(m12_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m12_couplers_to_processing_system7_0_axi_periph_BRESP),
        .M_AXI_bvalid(m12_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m12_couplers_to_processing_system7_0_axi_periph_RDATA),
        .M_AXI_rready(m12_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m12_couplers_to_processing_system7_0_axi_periph_RRESP),
        .M_AXI_rvalid(m12_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m12_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m12_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m12_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m12_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m12_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m12_couplers_ARID),
        .S_AXI_arlen(xbar_to_m12_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m12_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m12_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m12_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m12_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m12_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m12_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m12_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m12_couplers_AWID),
        .S_AXI_awlen(xbar_to_m12_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m12_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m12_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m12_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m12_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m12_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m12_couplers_BID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rid(xbar_to_m12_couplers_RID),
        .S_AXI_rlast(xbar_to_m12_couplers_RLAST),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m12_couplers_WLAST),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_1ORMRR4 m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_processing_system7_0_axi_periph_ARADDR),
        .M_AXI_arready(m13_couplers_to_processing_system7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_processing_system7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_processing_system7_0_axi_periph_AWADDR),
        .M_AXI_awready(m13_couplers_to_processing_system7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_processing_system7_0_axi_periph_AWVALID),
        .M_AXI_bid(1'b0),
        .M_AXI_bready(m13_couplers_to_processing_system7_0_axi_periph_BREADY),
        .M_AXI_bresp(m13_couplers_to_processing_system7_0_axi_periph_BRESP[0]),
        .M_AXI_bvalid(m13_couplers_to_processing_system7_0_axi_periph_BVALID),
        .M_AXI_rdata(m13_couplers_to_processing_system7_0_axi_periph_RDATA[0]),
        .M_AXI_rid(1'b0),
        .M_AXI_rlast(1'b0),
        .M_AXI_rready(m13_couplers_to_processing_system7_0_axi_periph_RREADY),
        .M_AXI_rresp(m13_couplers_to_processing_system7_0_axi_periph_RRESP[0]),
        .M_AXI_rvalid(m13_couplers_to_processing_system7_0_axi_periph_RVALID),
        .M_AXI_wdata(m13_couplers_to_processing_system7_0_axi_periph_WDATA),
        .M_AXI_wready(m13_couplers_to_processing_system7_0_axi_periph_WREADY),
        .M_AXI_wstrb(m13_couplers_to_processing_system7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_processing_system7_0_axi_periph_WVALID),
        .S_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .S_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR[416]),
        .S_AXI_arburst(xbar_to_m13_couplers_ARBURST[26]),
        .S_AXI_arcache(xbar_to_m13_couplers_ARCACHE[52]),
        .S_AXI_arid(xbar_to_m13_couplers_ARID[169]),
        .S_AXI_arlen(xbar_to_m13_couplers_ARLEN[104]),
        .S_AXI_arlock(xbar_to_m13_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT[39]),
        .S_AXI_arqos(xbar_to_m13_couplers_ARQOS[52]),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m13_couplers_ARREGION[52]),
        .S_AXI_arsize(xbar_to_m13_couplers_ARSIZE[39]),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR[416]),
        .S_AXI_awburst(xbar_to_m13_couplers_AWBURST[26]),
        .S_AXI_awcache(xbar_to_m13_couplers_AWCACHE[52]),
        .S_AXI_awid(xbar_to_m13_couplers_AWID[169]),
        .S_AXI_awlen(xbar_to_m13_couplers_AWLEN[104]),
        .S_AXI_awlock(xbar_to_m13_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT[39]),
        .S_AXI_awqos(xbar_to_m13_couplers_AWQOS[52]),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m13_couplers_AWREGION[52]),
        .S_AXI_awsize(xbar_to_m13_couplers_AWSIZE[39]),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m13_couplers_BID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rid(xbar_to_m13_couplers_RID),
        .S_AXI_rlast(xbar_to_m13_couplers_RLAST),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA[416]),
        .S_AXI_wlast(xbar_to_m13_couplers_WLAST),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB[52]),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  s00_couplers_imp_IK3G2O s00_couplers
       (.M_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .M_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(processing_system7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(processing_system7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(processing_system7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(processing_system7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(processing_system7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(processing_system7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(processing_system7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(processing_system7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(processing_system7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(processing_system7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(processing_system7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(processing_system7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(processing_system7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(processing_system7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(processing_system7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(processing_system7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(processing_system7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(processing_system7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(processing_system7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(processing_system7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(processing_system7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(processing_system7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(processing_system7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(processing_system7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(processing_system7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(processing_system7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(processing_system7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(processing_system7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(processing_system7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(processing_system7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(processing_system7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(processing_system7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(processing_system7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(processing_system7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(processing_system7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(processing_system7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(processing_system7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(processing_system7_0_axi_periph_to_s00_couplers_WVALID));
  s01_couplers_imp_1TMQ10X s01_couplers
       (.M_ACLK(processing_system7_0_axi_periph_ACLK_net),
        .M_ARESETN(processing_system7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(processing_system7_0_axi_periph_to_s01_couplers_ARADDR),
        .S_AXI_arburst(processing_system7_0_axi_periph_to_s01_couplers_ARBURST),
        .S_AXI_arcache(processing_system7_0_axi_periph_to_s01_couplers_ARCACHE),
        .S_AXI_arid(processing_system7_0_axi_periph_to_s01_couplers_ARID),
        .S_AXI_arlen(processing_system7_0_axi_periph_to_s01_couplers_ARLEN),
        .S_AXI_arlock(processing_system7_0_axi_periph_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(processing_system7_0_axi_periph_to_s01_couplers_ARPROT),
        .S_AXI_arqos(processing_system7_0_axi_periph_to_s01_couplers_ARQOS),
        .S_AXI_arready(processing_system7_0_axi_periph_to_s01_couplers_ARREADY),
        .S_AXI_arsize(processing_system7_0_axi_periph_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(processing_system7_0_axi_periph_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(processing_system7_0_axi_periph_to_s01_couplers_AWADDR),
        .S_AXI_awburst(processing_system7_0_axi_periph_to_s01_couplers_AWBURST),
        .S_AXI_awcache(processing_system7_0_axi_periph_to_s01_couplers_AWCACHE),
        .S_AXI_awid(processing_system7_0_axi_periph_to_s01_couplers_AWID),
        .S_AXI_awlen(processing_system7_0_axi_periph_to_s01_couplers_AWLEN),
        .S_AXI_awlock(processing_system7_0_axi_periph_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(processing_system7_0_axi_periph_to_s01_couplers_AWPROT),
        .S_AXI_awqos(processing_system7_0_axi_periph_to_s01_couplers_AWQOS),
        .S_AXI_awready(processing_system7_0_axi_periph_to_s01_couplers_AWREADY),
        .S_AXI_awsize(processing_system7_0_axi_periph_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(processing_system7_0_axi_periph_to_s01_couplers_AWVALID),
        .S_AXI_bid(processing_system7_0_axi_periph_to_s01_couplers_BID),
        .S_AXI_bready(processing_system7_0_axi_periph_to_s01_couplers_BREADY),
        .S_AXI_bresp(processing_system7_0_axi_periph_to_s01_couplers_BRESP),
        .S_AXI_bvalid(processing_system7_0_axi_periph_to_s01_couplers_BVALID),
        .S_AXI_rdata(processing_system7_0_axi_periph_to_s01_couplers_RDATA),
        .S_AXI_rid(processing_system7_0_axi_periph_to_s01_couplers_RID),
        .S_AXI_rlast(processing_system7_0_axi_periph_to_s01_couplers_RLAST),
        .S_AXI_rready(processing_system7_0_axi_periph_to_s01_couplers_RREADY),
        .S_AXI_rresp(processing_system7_0_axi_periph_to_s01_couplers_RRESP),
        .S_AXI_rvalid(processing_system7_0_axi_periph_to_s01_couplers_RVALID),
        .S_AXI_wdata(processing_system7_0_axi_periph_to_s01_couplers_WDATA),
        .S_AXI_wid(processing_system7_0_axi_periph_to_s01_couplers_WID),
        .S_AXI_wlast(processing_system7_0_axi_periph_to_s01_couplers_WLAST),
        .S_AXI_wready(processing_system7_0_axi_periph_to_s01_couplers_WREADY),
        .S_AXI_wstrb(processing_system7_0_axi_periph_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(processing_system7_0_axi_periph_to_s01_couplers_WVALID));
  system_xbar_4 xbar
       (.aclk(processing_system7_0_axi_periph_ACLK_net),
        .aresetn(processing_system7_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m13_couplers_ARBURST,xbar_to_m12_couplers_ARBURST,xbar_to_m11_couplers_ARBURST,xbar_to_m10_couplers_ARBURST,xbar_to_m09_couplers_ARBURST,xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m13_couplers_ARCACHE,xbar_to_m12_couplers_ARCACHE,xbar_to_m11_couplers_ARCACHE,xbar_to_m10_couplers_ARCACHE,xbar_to_m09_couplers_ARCACHE,xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m13_couplers_ARID,xbar_to_m12_couplers_ARID,xbar_to_m11_couplers_ARID,xbar_to_m10_couplers_ARID,xbar_to_m09_couplers_ARID,xbar_to_m08_couplers_ARID,xbar_to_m07_couplers_ARID,xbar_to_m06_couplers_ARID,xbar_to_m05_couplers_ARID,xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m13_couplers_ARLEN,xbar_to_m12_couplers_ARLEN,xbar_to_m11_couplers_ARLEN,xbar_to_m10_couplers_ARLEN,xbar_to_m09_couplers_ARLEN,xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m13_couplers_ARLOCK,xbar_to_m12_couplers_ARLOCK,xbar_to_m11_couplers_ARLOCK,xbar_to_m10_couplers_ARLOCK,xbar_to_m09_couplers_ARLOCK,xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m13_couplers_ARPROT,xbar_to_m12_couplers_ARPROT,xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m13_couplers_ARQOS,xbar_to_m12_couplers_ARQOS,xbar_to_m11_couplers_ARQOS,xbar_to_m10_couplers_ARQOS,xbar_to_m09_couplers_ARQOS,xbar_to_m08_couplers_ARQOS,xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,NLW_xbar_m_axi_arqos_UNCONNECTED[19:8],xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m13_couplers_ARREGION,xbar_to_m12_couplers_ARREGION,xbar_to_m11_couplers_ARREGION,xbar_to_m10_couplers_ARREGION,xbar_to_m09_couplers_ARREGION,xbar_to_m08_couplers_ARREGION,xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[19:8],xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m13_couplers_ARSIZE,xbar_to_m12_couplers_ARSIZE,xbar_to_m11_couplers_ARSIZE,xbar_to_m10_couplers_ARSIZE,xbar_to_m09_couplers_ARSIZE,xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m13_couplers_AWBURST,xbar_to_m12_couplers_AWBURST,xbar_to_m11_couplers_AWBURST,xbar_to_m10_couplers_AWBURST,xbar_to_m09_couplers_AWBURST,xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m13_couplers_AWCACHE,xbar_to_m12_couplers_AWCACHE,xbar_to_m11_couplers_AWCACHE,xbar_to_m10_couplers_AWCACHE,xbar_to_m09_couplers_AWCACHE,xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m13_couplers_AWID,xbar_to_m12_couplers_AWID,xbar_to_m11_couplers_AWID,xbar_to_m10_couplers_AWID,xbar_to_m09_couplers_AWID,xbar_to_m08_couplers_AWID,xbar_to_m07_couplers_AWID,xbar_to_m06_couplers_AWID,xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m13_couplers_AWLEN,xbar_to_m12_couplers_AWLEN,xbar_to_m11_couplers_AWLEN,xbar_to_m10_couplers_AWLEN,xbar_to_m09_couplers_AWLEN,xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m13_couplers_AWLOCK,xbar_to_m12_couplers_AWLOCK,xbar_to_m11_couplers_AWLOCK,xbar_to_m10_couplers_AWLOCK,xbar_to_m09_couplers_AWLOCK,xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m13_couplers_AWPROT,xbar_to_m12_couplers_AWPROT,xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m13_couplers_AWQOS,xbar_to_m12_couplers_AWQOS,xbar_to_m11_couplers_AWQOS,xbar_to_m10_couplers_AWQOS,xbar_to_m09_couplers_AWQOS,xbar_to_m08_couplers_AWQOS,xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,NLW_xbar_m_axi_awqos_UNCONNECTED[19:8],xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m13_couplers_AWREGION,xbar_to_m12_couplers_AWREGION,xbar_to_m11_couplers_AWREGION,xbar_to_m10_couplers_AWREGION,xbar_to_m09_couplers_AWREGION,xbar_to_m08_couplers_AWREGION,xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[19:8],xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m13_couplers_AWSIZE,xbar_to_m12_couplers_AWSIZE,xbar_to_m11_couplers_AWSIZE,xbar_to_m10_couplers_AWSIZE,xbar_to_m09_couplers_AWSIZE,xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m13_couplers_BID,xbar_to_m12_couplers_BID,xbar_to_m11_couplers_BID,xbar_to_m10_couplers_BID,xbar_to_m09_couplers_BID,xbar_to_m08_couplers_BID,xbar_to_m07_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m13_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m13_couplers_RID,xbar_to_m12_couplers_RID,xbar_to_m11_couplers_RID,xbar_to_m10_couplers_RID,xbar_to_m09_couplers_RID,xbar_to_m08_couplers_RID,xbar_to_m07_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m05_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m13_couplers_RLAST,xbar_to_m12_couplers_RLAST,xbar_to_m11_couplers_RLAST,xbar_to_m10_couplers_RLAST,xbar_to_m09_couplers_RLAST,xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m13_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m13_couplers_WLAST,xbar_to_m12_couplers_WLAST,xbar_to_m11_couplers_WLAST,xbar_to_m10_couplers_WLAST,xbar_to_m09_couplers_WLAST,xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s01_couplers_to_xbar_ARID,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s01_couplers_to_xbar_AWID,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module video_imp_1EQPUBJ
   (ACLK,
    ARESETN,
    DDC_scl_i,
    DDC_scl_o,
    DDC_scl_t,
    DDC_sda_i,
    DDC_sda_o,
    DDC_sda_t,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    PixelClk,
    RefClk,
    S00_ACLK,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    TMDS1_clk_n,
    TMDS1_clk_p,
    TMDS1_data_n,
    TMDS1_data_p,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    aPixelClkLckd,
    ctrl1_araddr,
    ctrl1_arready,
    ctrl1_arvalid,
    ctrl1_awaddr,
    ctrl1_awready,
    ctrl1_awvalid,
    ctrl1_bready,
    ctrl1_bresp,
    ctrl1_bvalid,
    ctrl1_rdata,
    ctrl1_rready,
    ctrl1_rresp,
    ctrl1_rvalid,
    ctrl1_wdata,
    ctrl1_wready,
    ctrl1_wstrb,
    ctrl1_wvalid,
    ctrl_araddr,
    ctrl_arready,
    ctrl_arvalid,
    ctrl_awaddr,
    ctrl_awready,
    ctrl_awvalid,
    ctrl_bready,
    ctrl_bresp,
    ctrl_bvalid,
    ctrl_rdata,
    ctrl_rready,
    ctrl_rresp,
    ctrl_rvalid,
    ctrl_wdata,
    ctrl_wready,
    ctrl_wstrb,
    ctrl_wvalid,
    dout,
    gpio_io_o,
    gpio_io_o1,
    resetn,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_arprot,
    s00_axi_arready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awready,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_rready,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_wdata,
    s00_axi_wready,
    s00_axi_wstrb,
    s00_axi_wvalid,
    vid_io_in_reset);
  input ACLK;
  input [0:0]ARESETN;
  input DDC_scl_i;
  output DDC_scl_o;
  output DDC_scl_t;
  input DDC_sda_i;
  output DDC_sda_o;
  output DDC_sda_t;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output PixelClk;
  input RefClk;
  input S00_ACLK;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [31:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [31:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output TMDS1_clk_n;
  output TMDS1_clk_p;
  output [2:0]TMDS1_data_n;
  output [2:0]TMDS1_data_p;
  input TMDS_clk_n;
  input TMDS_clk_p;
  input [2:0]TMDS_data_n;
  input [2:0]TMDS_data_p;
  output aPixelClkLckd;
  input [31:0]ctrl1_araddr;
  output ctrl1_arready;
  input ctrl1_arvalid;
  input [31:0]ctrl1_awaddr;
  output ctrl1_awready;
  input ctrl1_awvalid;
  input ctrl1_bready;
  output [1:0]ctrl1_bresp;
  output ctrl1_bvalid;
  output [31:0]ctrl1_rdata;
  input ctrl1_rready;
  output [1:0]ctrl1_rresp;
  output ctrl1_rvalid;
  input [31:0]ctrl1_wdata;
  output ctrl1_wready;
  input [3:0]ctrl1_wstrb;
  input ctrl1_wvalid;
  input [31:0]ctrl_araddr;
  output ctrl_arready;
  input ctrl_arvalid;
  input [31:0]ctrl_awaddr;
  output ctrl_awready;
  input ctrl_awvalid;
  input ctrl_bready;
  output [1:0]ctrl_bresp;
  output ctrl_bvalid;
  output [31:0]ctrl_rdata;
  input ctrl_rready;
  output [1:0]ctrl_rresp;
  output ctrl_rvalid;
  input [31:0]ctrl_wdata;
  output ctrl_wready;
  input [3:0]ctrl_wstrb;
  input ctrl_wvalid;
  output [5:0]dout;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_o1;
  input [0:0]resetn;
  input [31:0]s00_axi_araddr;
  input [0:0]s00_axi_aresetn;
  input [2:0]s00_axi_arprot;
  output s00_axi_arready;
  input s00_axi_arvalid;
  input [31:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  output s00_axi_awready;
  input s00_axi_awvalid;
  input s00_axi_bready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  input s00_axi_rready;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input [31:0]s00_axi_wdata;
  output s00_axi_wready;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input [0:0]vid_io_in_reset;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [2:0]Conn1_DATA_N;
  wire [2:0]Conn1_DATA_P;
  wire [31:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire Conn3_ARREADY;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire Conn3_AWREADY;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [31:0]Conn3_RDATA;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [31:0]Conn3_WDATA;
  wire Conn3_WREADY;
  wire [3:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [31:0]Conn4_ARADDR;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [31:0]Conn4_AWADDR;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire Conn4_WVALID;
  wire Net;
  wire [0:0]Net1;
  wire RefClk_1;
  wire aclk_1;
  wire axi_dynclk_0_LOCKED_O;
  wire axi_dynclk_0_PXL_CLK_5X_O;
  wire axi_dynclk_0_PXL_CLK_O;
  wire [0:0]axi_gpio_video_gpio_io_o;
  wire axi_gpio_video_ip2intc_irpt;
  wire [31:0]axi_mem_intercon_M00_AXI_ARADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_ARBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_ARCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_ARID;
  wire [3:0]axi_mem_intercon_M00_AXI_ARLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_ARPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_ARQOS;
  wire axi_mem_intercon_M00_AXI_ARREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_ARSIZE;
  wire axi_mem_intercon_M00_AXI_ARVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_M00_AXI_BID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_RDATA;
  wire [5:0]axi_mem_intercon_M00_AXI_RID;
  wire axi_mem_intercon_M00_AXI_RLAST;
  wire axi_mem_intercon_M00_AXI_RREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_RRESP;
  wire axi_mem_intercon_M00_AXI_RVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_M00_AXI_WID;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire [23:0]axi_vdma_0_M_AXIS_MM2S_TDATA;
  wire axi_vdma_0_M_AXIS_MM2S_TLAST;
  wire axi_vdma_0_M_AXIS_MM2S_TREADY;
  wire [0:0]axi_vdma_0_M_AXIS_MM2S_TUSER;
  wire axi_vdma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_vdma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_vdma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARPROT;
  wire axi_vdma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_vdma_0_M_AXI_MM2S_ARSIZE;
  wire axi_vdma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_vdma_0_M_AXI_MM2S_RDATA;
  wire axi_vdma_0_M_AXI_MM2S_RLAST;
  wire axi_vdma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_vdma_0_M_AXI_MM2S_RRESP;
  wire axi_vdma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_vdma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWPROT;
  wire axi_vdma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_vdma_0_M_AXI_S2MM_AWSIZE;
  wire axi_vdma_0_M_AXI_S2MM_AWVALID;
  wire axi_vdma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_vdma_0_M_AXI_S2MM_BRESP;
  wire axi_vdma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_vdma_0_M_AXI_S2MM_WDATA;
  wire axi_vdma_0_M_AXI_S2MM_WLAST;
  wire axi_vdma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_vdma_0_M_AXI_S2MM_WSTRB;
  wire axi_vdma_0_M_AXI_S2MM_WVALID;
  wire axi_vdma_0_mm2s_introut;
  wire axi_vdma_0_s2mm_introut;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire dvi2rgb_0_PixelClk;
  wire dvi2rgb_0_RGB_ACTIVE_VIDEO;
  wire [23:0]dvi2rgb_0_RGB_DATA;
  wire dvi2rgb_0_RGB_HSYNC;
  wire dvi2rgb_0_RGB_VSYNC;
  wire dvi2rgb_0_aPixelClkLckd;
  wire hdmi_in_1_CLK_N;
  wire hdmi_in_1_CLK_P;
  wire [2:0]hdmi_in_1_DATA_N;
  wire [2:0]hdmi_in_1_DATA_P;
  wire [0:0]hdmi_out_hpd_video_gpio_io_o;
  wire hdmi_out_hpd_video_ip2intc_irpt;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M06_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M06_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M06_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M06_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_BRESP;
  wire processing_system7_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_RDATA;
  wire processing_system7_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M06_AXI_RRESP;
  wire processing_system7_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M06_AXI_WDATA;
  wire processing_system7_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M06_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M06_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_ARADDR;
  wire processing_system7_0_axi_periph_M07_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M07_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_AWADDR;
  wire processing_system7_0_axi_periph_M07_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M07_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_BRESP;
  wire processing_system7_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_RDATA;
  wire processing_system7_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M07_AXI_RRESP;
  wire processing_system7_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M07_AXI_WDATA;
  wire processing_system7_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M07_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M07_AXI_WVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_ARADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_ARPROT;
  wire processing_system7_0_axi_periph_M08_AXI_ARREADY;
  wire processing_system7_0_axi_periph_M08_AXI_ARVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_AWADDR;
  wire [2:0]processing_system7_0_axi_periph_M08_AXI_AWPROT;
  wire processing_system7_0_axi_periph_M08_AXI_AWREADY;
  wire processing_system7_0_axi_periph_M08_AXI_AWVALID;
  wire processing_system7_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_BRESP;
  wire processing_system7_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_RDATA;
  wire processing_system7_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]processing_system7_0_axi_periph_M08_AXI_RRESP;
  wire processing_system7_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]processing_system7_0_axi_periph_M08_AXI_WDATA;
  wire processing_system7_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]processing_system7_0_axi_periph_M08_AXI_WSTRB;
  wire processing_system7_0_axi_periph_M08_AXI_WVALID;
  wire [0:0]resetn_1;
  wire [0:0]rst_processing_system7_0_100M_interconnect_aresetn;
  wire [0:0]rst_processing_system7_0_100M_peripheral_aresetn;
  wire v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO;
  wire [23:0]v_axi4s_vid_out_0_vid_io_out_DATA;
  wire v_axi4s_vid_out_0_vid_io_out_HSYNC;
  wire v_axi4s_vid_out_0_vid_io_out_VSYNC;
  wire v_tc_0_irq;
  wire v_tc_0_vtiming_out_ACTIVE_VIDEO;
  wire v_tc_0_vtiming_out_HBLANK;
  wire v_tc_0_vtiming_out_HSYNC;
  wire v_tc_0_vtiming_out_VBLANK;
  wire v_tc_0_vtiming_out_VSYNC;
  wire v_tc_1_irq;
  wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  wire v_vid_in_axi4s_0_video_out_TLAST;
  wire v_vid_in_axi4s_0_video_out_TREADY;
  wire v_vid_in_axi4s_0_video_out_TUSER;
  wire v_vid_in_axi4s_0_video_out_TVALID;
  wire v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO;
  wire v_vid_in_axi4s_0_vtiming_out_HSYNC;
  wire v_vid_in_axi4s_0_vtiming_out_VSYNC;
  wire [0:0]vid_io_in_reset_1;
  wire [5:0]xlconcat_0_dout;

  assign Conn2_ARADDR = ctrl_araddr[31:0];
  assign Conn2_ARVALID = ctrl_arvalid;
  assign Conn2_AWADDR = ctrl_awaddr[31:0];
  assign Conn2_AWVALID = ctrl_awvalid;
  assign Conn2_BREADY = ctrl_bready;
  assign Conn2_RREADY = ctrl_rready;
  assign Conn2_WDATA = ctrl_wdata[31:0];
  assign Conn2_WSTRB = ctrl_wstrb[3:0];
  assign Conn2_WVALID = ctrl_wvalid;
  assign Conn3_ARADDR = ctrl1_araddr[31:0];
  assign Conn3_ARVALID = ctrl1_arvalid;
  assign Conn3_AWADDR = ctrl1_awaddr[31:0];
  assign Conn3_AWVALID = ctrl1_awvalid;
  assign Conn3_BREADY = ctrl1_bready;
  assign Conn3_RREADY = ctrl1_rready;
  assign Conn3_WDATA = ctrl1_wdata[31:0];
  assign Conn3_WSTRB = ctrl1_wstrb[3:0];
  assign Conn3_WVALID = ctrl1_wvalid;
  assign Conn4_ARADDR = S_AXI_LITE_araddr[31:0];
  assign Conn4_ARVALID = S_AXI_LITE_arvalid;
  assign Conn4_AWADDR = S_AXI_LITE_awaddr[31:0];
  assign Conn4_AWVALID = S_AXI_LITE_awvalid;
  assign Conn4_BREADY = S_AXI_LITE_bready;
  assign Conn4_RREADY = S_AXI_LITE_rready;
  assign Conn4_WDATA = S_AXI_LITE_wdata[31:0];
  assign Conn4_WVALID = S_AXI_LITE_wvalid;
  assign DDC_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign DDC_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign DDC_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign DDC_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign M00_AXI_araddr[31:0] = axi_mem_intercon_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = axi_mem_intercon_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = axi_mem_intercon_M00_AXI_ARCACHE;
  assign M00_AXI_arid[0] = axi_mem_intercon_M00_AXI_ARID;
  assign M00_AXI_arlen[3:0] = axi_mem_intercon_M00_AXI_ARLEN;
  assign M00_AXI_arlock[1:0] = axi_mem_intercon_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = axi_mem_intercon_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = axi_mem_intercon_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = axi_mem_intercon_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = axi_mem_intercon_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = axi_mem_intercon_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = axi_mem_intercon_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = axi_mem_intercon_M00_AXI_AWCACHE;
  assign M00_AXI_awid[0] = axi_mem_intercon_M00_AXI_AWID;
  assign M00_AXI_awlen[3:0] = axi_mem_intercon_M00_AXI_AWLEN;
  assign M00_AXI_awlock[1:0] = axi_mem_intercon_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = axi_mem_intercon_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = axi_mem_intercon_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = axi_mem_intercon_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = axi_mem_intercon_M00_AXI_AWVALID;
  assign M00_AXI_bready = axi_mem_intercon_M00_AXI_BREADY;
  assign M00_AXI_rready = axi_mem_intercon_M00_AXI_RREADY;
  assign M00_AXI_wdata[63:0] = axi_mem_intercon_M00_AXI_WDATA;
  assign M00_AXI_wid[0] = axi_mem_intercon_M00_AXI_WID;
  assign M00_AXI_wlast = axi_mem_intercon_M00_AXI_WLAST;
  assign M00_AXI_wstrb[7:0] = axi_mem_intercon_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = axi_mem_intercon_M00_AXI_WVALID;
  assign Net = S00_ACLK;
  assign Net1 = s00_axi_aresetn[0];
  assign PixelClk = dvi2rgb_0_PixelClk;
  assign RefClk_1 = RefClk;
  assign S_AXI1_arready = processing_system7_0_axi_periph_M07_AXI_ARREADY;
  assign S_AXI1_awready = processing_system7_0_axi_periph_M07_AXI_AWREADY;
  assign S_AXI1_bresp[1:0] = processing_system7_0_axi_periph_M07_AXI_BRESP;
  assign S_AXI1_bvalid = processing_system7_0_axi_periph_M07_AXI_BVALID;
  assign S_AXI1_rdata[31:0] = processing_system7_0_axi_periph_M07_AXI_RDATA;
  assign S_AXI1_rresp[1:0] = processing_system7_0_axi_periph_M07_AXI_RRESP;
  assign S_AXI1_rvalid = processing_system7_0_axi_periph_M07_AXI_RVALID;
  assign S_AXI1_wready = processing_system7_0_axi_periph_M07_AXI_WREADY;
  assign S_AXI_LITE_arready = Conn4_ARREADY;
  assign S_AXI_LITE_awready = Conn4_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = Conn4_BRESP;
  assign S_AXI_LITE_bvalid = Conn4_BVALID;
  assign S_AXI_LITE_rdata[31:0] = Conn4_RDATA;
  assign S_AXI_LITE_rresp[1:0] = Conn4_RRESP;
  assign S_AXI_LITE_rvalid = Conn4_RVALID;
  assign S_AXI_LITE_wready = Conn4_WREADY;
  assign S_AXI_arready = processing_system7_0_axi_periph_M06_AXI_ARREADY;
  assign S_AXI_awready = processing_system7_0_axi_periph_M06_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = processing_system7_0_axi_periph_M06_AXI_BRESP;
  assign S_AXI_bvalid = processing_system7_0_axi_periph_M06_AXI_BVALID;
  assign S_AXI_rdata[31:0] = processing_system7_0_axi_periph_M06_AXI_RDATA;
  assign S_AXI_rresp[1:0] = processing_system7_0_axi_periph_M06_AXI_RRESP;
  assign S_AXI_rvalid = processing_system7_0_axi_periph_M06_AXI_RVALID;
  assign S_AXI_wready = processing_system7_0_axi_periph_M06_AXI_WREADY;
  assign TMDS1_clk_n = Conn1_CLK_N;
  assign TMDS1_clk_p = Conn1_CLK_P;
  assign TMDS1_data_n[2:0] = Conn1_DATA_N;
  assign TMDS1_data_p[2:0] = Conn1_DATA_P;
  assign aPixelClkLckd = dvi2rgb_0_aPixelClkLckd;
  assign aclk_1 = ACLK;
  assign axi_mem_intercon_M00_AXI_ARREADY = M00_AXI_arready;
  assign axi_mem_intercon_M00_AXI_AWREADY = M00_AXI_awready;
  assign axi_mem_intercon_M00_AXI_BID = M00_AXI_bid[5:0];
  assign axi_mem_intercon_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign axi_mem_intercon_M00_AXI_BVALID = M00_AXI_bvalid;
  assign axi_mem_intercon_M00_AXI_RDATA = M00_AXI_rdata[63:0];
  assign axi_mem_intercon_M00_AXI_RID = M00_AXI_rid[5:0];
  assign axi_mem_intercon_M00_AXI_RLAST = M00_AXI_rlast;
  assign axi_mem_intercon_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign axi_mem_intercon_M00_AXI_RVALID = M00_AXI_rvalid;
  assign axi_mem_intercon_M00_AXI_WREADY = M00_AXI_wready;
  assign ctrl1_arready = Conn3_ARREADY;
  assign ctrl1_awready = Conn3_AWREADY;
  assign ctrl1_bresp[1:0] = Conn3_BRESP;
  assign ctrl1_bvalid = Conn3_BVALID;
  assign ctrl1_rdata[31:0] = Conn3_RDATA;
  assign ctrl1_rresp[1:0] = Conn3_RRESP;
  assign ctrl1_rvalid = Conn3_RVALID;
  assign ctrl1_wready = Conn3_WREADY;
  assign ctrl_arready = Conn2_ARREADY;
  assign ctrl_awready = Conn2_AWREADY;
  assign ctrl_bresp[1:0] = Conn2_BRESP;
  assign ctrl_bvalid = Conn2_BVALID;
  assign ctrl_rdata[31:0] = Conn2_RDATA;
  assign ctrl_rresp[1:0] = Conn2_RRESP;
  assign ctrl_rvalid = Conn2_RVALID;
  assign ctrl_wready = Conn2_WREADY;
  assign dout[5:0] = xlconcat_0_dout;
  assign dvi2rgb_0_DDC_SCL_I = DDC_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = DDC_sda_i;
  assign gpio_io_o[0] = hdmi_out_hpd_video_gpio_io_o;
  assign gpio_io_o1[0] = axi_gpio_video_gpio_io_o;
  assign hdmi_in_1_CLK_N = TMDS_clk_n;
  assign hdmi_in_1_CLK_P = TMDS_clk_p;
  assign hdmi_in_1_DATA_N = TMDS_data_n[2:0];
  assign hdmi_in_1_DATA_P = TMDS_data_p[2:0];
  assign processing_system7_0_axi_periph_M06_AXI_ARADDR = S_AXI_araddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_ARVALID = S_AXI_arvalid;
  assign processing_system7_0_axi_periph_M06_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_AWVALID = S_AXI_awvalid;
  assign processing_system7_0_axi_periph_M06_AXI_BREADY = S_AXI_bready;
  assign processing_system7_0_axi_periph_M06_AXI_RREADY = S_AXI_rready;
  assign processing_system7_0_axi_periph_M06_AXI_WDATA = S_AXI_wdata[31:0];
  assign processing_system7_0_axi_periph_M06_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign processing_system7_0_axi_periph_M06_AXI_WVALID = S_AXI_wvalid;
  assign processing_system7_0_axi_periph_M07_AXI_ARADDR = S_AXI1_araddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_ARVALID = S_AXI1_arvalid;
  assign processing_system7_0_axi_periph_M07_AXI_AWADDR = S_AXI1_awaddr[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_AWVALID = S_AXI1_awvalid;
  assign processing_system7_0_axi_periph_M07_AXI_BREADY = S_AXI1_bready;
  assign processing_system7_0_axi_periph_M07_AXI_RREADY = S_AXI1_rready;
  assign processing_system7_0_axi_periph_M07_AXI_WDATA = S_AXI1_wdata[31:0];
  assign processing_system7_0_axi_periph_M07_AXI_WSTRB = S_AXI1_wstrb[3:0];
  assign processing_system7_0_axi_periph_M07_AXI_WVALID = S_AXI1_wvalid;
  assign processing_system7_0_axi_periph_M08_AXI_ARADDR = s00_axi_araddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARPROT = s00_axi_arprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_ARVALID = s00_axi_arvalid;
  assign processing_system7_0_axi_periph_M08_AXI_AWADDR = s00_axi_awaddr[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWPROT = s00_axi_awprot[2:0];
  assign processing_system7_0_axi_periph_M08_AXI_AWVALID = s00_axi_awvalid;
  assign processing_system7_0_axi_periph_M08_AXI_BREADY = s00_axi_bready;
  assign processing_system7_0_axi_periph_M08_AXI_RREADY = s00_axi_rready;
  assign processing_system7_0_axi_periph_M08_AXI_WDATA = s00_axi_wdata[31:0];
  assign processing_system7_0_axi_periph_M08_AXI_WSTRB = s00_axi_wstrb[3:0];
  assign processing_system7_0_axi_periph_M08_AXI_WVALID = s00_axi_wvalid;
  assign resetn_1 = resetn[0];
  assign rst_processing_system7_0_100M_interconnect_aresetn = ARESETN[0];
  assign rst_processing_system7_0_100M_peripheral_aresetn = M00_ARESETN[0];
  assign s00_axi_arready = processing_system7_0_axi_periph_M08_AXI_ARREADY;
  assign s00_axi_awready = processing_system7_0_axi_periph_M08_AXI_AWREADY;
  assign s00_axi_bresp[1:0] = processing_system7_0_axi_periph_M08_AXI_BRESP;
  assign s00_axi_bvalid = processing_system7_0_axi_periph_M08_AXI_BVALID;
  assign s00_axi_rdata[31:0] = processing_system7_0_axi_periph_M08_AXI_RDATA;
  assign s00_axi_rresp[1:0] = processing_system7_0_axi_periph_M08_AXI_RRESP;
  assign s00_axi_rvalid = processing_system7_0_axi_periph_M08_AXI_RVALID;
  assign s00_axi_wready = processing_system7_0_axi_periph_M08_AXI_WREADY;
  assign vid_io_in_reset_1 = vid_io_in_reset[0];
  system_axi_dynclk_0_0 axi_dynclk_0
       (.LOCKED_O(axi_dynclk_0_LOCKED_O),
        .PXL_CLK_5X_O(axi_dynclk_0_PXL_CLK_5X_O),
        .PXL_CLK_O(axi_dynclk_0_PXL_CLK_O),
        .REF_CLK_I(Net),
        .s00_axi_aclk(Net),
        .s00_axi_araddr(processing_system7_0_axi_periph_M08_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot(processing_system7_0_axi_periph_M08_AXI_ARPROT),
        .s00_axi_arready(processing_system7_0_axi_periph_M08_AXI_ARREADY),
        .s00_axi_arvalid(processing_system7_0_axi_periph_M08_AXI_ARVALID),
        .s00_axi_awaddr(processing_system7_0_axi_periph_M08_AXI_AWADDR[4:0]),
        .s00_axi_awprot(processing_system7_0_axi_periph_M08_AXI_AWPROT),
        .s00_axi_awready(processing_system7_0_axi_periph_M08_AXI_AWREADY),
        .s00_axi_awvalid(processing_system7_0_axi_periph_M08_AXI_AWVALID),
        .s00_axi_bready(processing_system7_0_axi_periph_M08_AXI_BREADY),
        .s00_axi_bresp(processing_system7_0_axi_periph_M08_AXI_BRESP),
        .s00_axi_bvalid(processing_system7_0_axi_periph_M08_AXI_BVALID),
        .s00_axi_rdata(processing_system7_0_axi_periph_M08_AXI_RDATA),
        .s00_axi_rready(processing_system7_0_axi_periph_M08_AXI_RREADY),
        .s00_axi_rresp(processing_system7_0_axi_periph_M08_AXI_RRESP),
        .s00_axi_rvalid(processing_system7_0_axi_periph_M08_AXI_RVALID),
        .s00_axi_wdata(processing_system7_0_axi_periph_M08_AXI_WDATA),
        .s00_axi_wready(processing_system7_0_axi_periph_M08_AXI_WREADY),
        .s00_axi_wstrb(processing_system7_0_axi_periph_M08_AXI_WSTRB),
        .s00_axi_wvalid(processing_system7_0_axi_periph_M08_AXI_WVALID));
  system_axi_gpio_video_0 axi_gpio_video
       (.gpio2_io_i(dvi2rgb_0_aPixelClkLckd),
        .gpio_io_o(axi_gpio_video_gpio_io_o),
        .ip2intc_irpt(axi_gpio_video_ip2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(processing_system7_0_axi_periph_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(processing_system7_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M07_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M07_AXI_WVALID));
  system_axi_mem_intercon_1 axi_mem_intercon
       (.ACLK(aclk_1),
        .ARESETN(rst_processing_system7_0_100M_interconnect_aresetn),
        .M00_ACLK(aclk_1),
        .M00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_mem_intercon_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_intercon_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_intercon_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_intercon_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_intercon_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_intercon_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_intercon_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_intercon_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_intercon_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_intercon_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_intercon_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_intercon_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_intercon_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_intercon_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_intercon_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_intercon_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_intercon_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(aclk_1),
        .S00_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S00_AXI_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .S00_AXI_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .S00_AXI_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .S01_ACLK(aclk_1),
        .S01_ARESETN(rst_processing_system7_0_100M_peripheral_aresetn),
        .S01_AXI_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID));
  system_axi_vdma_0_0 axi_vdma_0
       (.axi_resetn(Net1),
        .m_axi_mm2s_aclk(aclk_1),
        .m_axi_mm2s_araddr(axi_vdma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_vdma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_vdma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_vdma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_vdma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_vdma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_vdma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_vdma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_vdma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_vdma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_vdma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_vdma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_vdma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(aclk_1),
        .m_axi_s2mm_awaddr(axi_vdma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_vdma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_vdma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_vdma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_vdma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_vdma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_vdma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_vdma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_vdma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_vdma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_vdma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_vdma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_vdma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_vdma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_vdma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_vdma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_aclk(axi_dynclk_0_PXL_CLK_O),
        .m_axis_mm2s_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .m_axis_mm2s_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_vdma_0_mm2s_introut),
        .s2mm_introut(axi_vdma_0_s2mm_introut),
        .s_axi_lite_aclk(Net),
        .s_axi_lite_araddr(Conn4_ARADDR[8:0]),
        .s_axi_lite_arready(Conn4_ARREADY),
        .s_axi_lite_arvalid(Conn4_ARVALID),
        .s_axi_lite_awaddr(Conn4_AWADDR[8:0]),
        .s_axi_lite_awready(Conn4_AWREADY),
        .s_axi_lite_awvalid(Conn4_AWVALID),
        .s_axi_lite_bready(Conn4_BREADY),
        .s_axi_lite_bresp(Conn4_BRESP),
        .s_axi_lite_bvalid(Conn4_BVALID),
        .s_axi_lite_rdata(Conn4_RDATA),
        .s_axi_lite_rready(Conn4_RREADY),
        .s_axi_lite_rresp(Conn4_RRESP),
        .s_axi_lite_rvalid(Conn4_RVALID),
        .s_axi_lite_wdata(Conn4_WDATA),
        .s_axi_lite_wready(Conn4_WREADY),
        .s_axi_lite_wvalid(Conn4_WVALID),
        .s_axis_s2mm_aclk(aclk_1),
        .s_axis_s2mm_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .s_axis_s2mm_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .s_axis_s2mm_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .s_axis_s2mm_tvalid(v_vid_in_axi4s_0_video_out_TVALID));
  system_dvi2rgb_0_0 dvi2rgb_0
       (.DDC_SCL_I(dvi2rgb_0_DDC_SCL_I),
        .DDC_SCL_O(dvi2rgb_0_DDC_SCL_O),
        .DDC_SCL_T(dvi2rgb_0_DDC_SCL_T),
        .DDC_SDA_I(dvi2rgb_0_DDC_SDA_I),
        .DDC_SDA_O(dvi2rgb_0_DDC_SDA_O),
        .DDC_SDA_T(dvi2rgb_0_DDC_SDA_T),
        .PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(RefClk_1),
        .TMDS_Clk_n(hdmi_in_1_CLK_N),
        .TMDS_Clk_p(hdmi_in_1_CLK_P),
        .TMDS_Data_n(hdmi_in_1_DATA_N),
        .TMDS_Data_p(hdmi_in_1_DATA_P),
        .aPixelClkLckd(dvi2rgb_0_aPixelClkLckd),
        .aRst_n(Net1),
        .pRst_n(1'b1),
        .vid_pData(dvi2rgb_0_RGB_DATA),
        .vid_pHSync(dvi2rgb_0_RGB_HSYNC),
        .vid_pVDE(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_pVSync(dvi2rgb_0_RGB_VSYNC));
  system_hdmi_out_hpd_video_0 hdmi_out_hpd_video
       (.gpio_io_o(hdmi_out_hpd_video_gpio_io_o),
        .ip2intc_irpt(hdmi_out_hpd_video_ip2intc_irpt),
        .s_axi_aclk(Net),
        .s_axi_araddr(processing_system7_0_axi_periph_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(processing_system7_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(processing_system7_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(processing_system7_0_axi_periph_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(processing_system7_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(processing_system7_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(processing_system7_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(processing_system7_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(processing_system7_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(processing_system7_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(processing_system7_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(processing_system7_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(processing_system7_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(processing_system7_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(processing_system7_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(processing_system7_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(processing_system7_0_axi_periph_M06_AXI_WVALID));
  system_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(axi_dynclk_0_PXL_CLK_O),
        .SerialClk(axi_dynclk_0_PXL_CLK_5X_O),
        .TMDS_Clk_n(Conn1_CLK_N),
        .TMDS_Clk_p(Conn1_CLK_P),
        .TMDS_Data_n(Conn1_DATA_N),
        .TMDS_Data_p(Conn1_DATA_P),
        .aRst_n(axi_dynclk_0_LOCKED_O),
        .vid_pData(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_pHSync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_pVDE(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_pVSync(v_axi4s_vid_out_0_vid_io_out_VSYNC));
  system_v_axi4s_vid_out_0_0 v_axi4s_vid_out_0
       (.aclk(axi_dynclk_0_PXL_CLK_O),
        .aclken(1'b1),
        .aresetn(1'b1),
        .fid(1'b0),
        .s_axis_video_tdata(axi_vdma_0_M_AXIS_MM2S_TDATA),
        .s_axis_video_tlast(axi_vdma_0_M_AXIS_MM2S_TLAST),
        .s_axis_video_tready(axi_vdma_0_M_AXIS_MM2S_TREADY),
        .s_axis_video_tuser(axi_vdma_0_M_AXIS_MM2S_TUSER),
        .s_axis_video_tvalid(axi_vdma_0_M_AXIS_MM2S_TVALID),
        .vid_active_video(v_axi4s_vid_out_0_vid_io_out_ACTIVE_VIDEO),
        .vid_data(v_axi4s_vid_out_0_vid_io_out_DATA),
        .vid_hsync(v_axi4s_vid_out_0_vid_io_out_HSYNC),
        .vid_io_out_ce(1'b1),
        .vid_vsync(v_axi4s_vid_out_0_vid_io_out_VSYNC),
        .vtg_active_video(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .vtg_field_id(1'b0),
        .vtg_hblank(v_tc_0_vtiming_out_HBLANK),
        .vtg_hsync(v_tc_0_vtiming_out_HSYNC),
        .vtg_vblank(v_tc_0_vtiming_out_VBLANK),
        .vtg_vsync(v_tc_0_vtiming_out_VSYNC));
  system_v_tc_0_0 v_tc_0
       (.active_video_out(v_tc_0_vtiming_out_ACTIVE_VIDEO),
        .clk(axi_dynclk_0_PXL_CLK_O),
        .clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(1'b1),
        .hblank_out(v_tc_0_vtiming_out_HBLANK),
        .hsync_out(v_tc_0_vtiming_out_HSYNC),
        .irq(v_tc_0_irq),
        .resetn(1'b1),
        .s_axi_aclk(Net),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(Conn2_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR[8:0]),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID),
        .vblank_out(v_tc_0_vtiming_out_VBLANK),
        .vsync_out(v_tc_0_vtiming_out_VSYNC));
  system_v_tc_1_0 v_tc_1
       (.active_video_in(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .clk(dvi2rgb_0_PixelClk),
        .clken(1'b1),
        .det_clken(1'b1),
        .hsync_in(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .irq(v_tc_1_irq),
        .resetn(resetn_1),
        .s_axi_aclk(Net),
        .s_axi_aclken(1'b1),
        .s_axi_araddr(Conn3_ARADDR[8:0]),
        .s_axi_aresetn(Net1),
        .s_axi_arready(Conn3_ARREADY),
        .s_axi_arvalid(Conn3_ARVALID),
        .s_axi_awaddr(Conn3_AWADDR[8:0]),
        .s_axi_awready(Conn3_AWREADY),
        .s_axi_awvalid(Conn3_AWVALID),
        .s_axi_bready(Conn3_BREADY),
        .s_axi_bresp(Conn3_BRESP),
        .s_axi_bvalid(Conn3_BVALID),
        .s_axi_rdata(Conn3_RDATA),
        .s_axi_rready(Conn3_RREADY),
        .s_axi_rresp(Conn3_RRESP),
        .s_axi_rvalid(Conn3_RVALID),
        .s_axi_wdata(Conn3_WDATA),
        .s_axi_wready(Conn3_WREADY),
        .s_axi_wstrb(Conn3_WSTRB),
        .s_axi_wvalid(Conn3_WVALID),
        .vsync_in(v_vid_in_axi4s_0_vtiming_out_VSYNC));
  system_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(aclk_1),
        .aclken(1'b1),
        .aresetn(1'b1),
        .axis_enable(1'b1),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(dvi2rgb_0_RGB_ACTIVE_VIDEO),
        .vid_data(dvi2rgb_0_RGB_DATA),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(dvi2rgb_0_RGB_HSYNC),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(dvi2rgb_0_PixelClk),
        .vid_io_in_reset(vid_io_in_reset_1),
        .vid_vblank(1'b0),
        .vid_vsync(dvi2rgb_0_RGB_VSYNC),
        .vtd_active_video(v_vid_in_axi4s_0_vtiming_out_ACTIVE_VIDEO),
        .vtd_hsync(v_vid_in_axi4s_0_vtiming_out_HSYNC),
        .vtd_vsync(v_vid_in_axi4s_0_vtiming_out_VSYNC));
  system_xlconcat_0_0 xlconcat_0
       (.In0(axi_vdma_0_s2mm_introut),
        .In1(axi_vdma_0_mm2s_introut),
        .In2(v_tc_0_irq),
        .In3(v_tc_1_irq),
        .In4(axi_gpio_video_ip2intc_irpt),
        .In5(hdmi_out_hpd_video_ip2intc_irpt),
        .dout(xlconcat_0_dout));
endmodule
