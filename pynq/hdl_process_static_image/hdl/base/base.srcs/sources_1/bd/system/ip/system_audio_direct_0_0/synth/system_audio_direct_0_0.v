// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:audio_direct:1.0
// IP Revision: 3

(* X_CORE_INFO = "audio_direct,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "system_audio_direct_0_0,audio_direct,{}" *)
(* CORE_GENERATION_INFO = "system_audio_direct_0_0,audio_direct,{x_ipProduct=Vivado 2016.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=audio_direct,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_audio_direct_0_0 (
  clk_i,
  en_i,
  pdm_audio_i,
  pdm_m_clk_o,
  pwm_audio_o,
  done_o,
  pwm_audio_shutdown
);

input wire clk_i;
input wire en_i;
input wire pdm_audio_i;
output wire pdm_m_clk_o;
output wire pwm_audio_o;
output wire done_o;
output wire pwm_audio_shutdown;

  audio_direct inst (
    .clk_i(clk_i),
    .en_i(en_i),
    .pdm_audio_i(pdm_audio_i),
    .pdm_m_clk_o(pdm_m_clk_o),
    .pwm_audio_o(pwm_audio_o),
    .done_o(done_o),
    .pwm_audio_shutdown(pwm_audio_shutdown)
  );
endmodule
