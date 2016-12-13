/***************************************************************************

*   © Copyright 2013 Xilinx, Inc. All rights reserved. 

*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 

*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 

*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 

*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.

***************************************************************************/
#include "top.h"

void image_filter(AXI_STREAM& video_in, AXI_STREAM& video_out, int rows, int cols) {
    //Create AXI streaming interfaces for the core
#pragma HLS INTERFACE axis port=video_in bundle=INPUT_STREAM
#pragma HLS INTERFACE axis port=video_out bundle=OUTPUT_STREAM

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

    IMAGE_C2 img_0(rows, cols);
    IMAGE_C2 img_1(rows, cols);
    IMAGE_C2 img_1_(rows, cols);
    IMAGE_C1 img_1_Y(rows, cols);
    IMAGE_C1 img_1_UV(rows, cols);
    IMAGE_C2 img_2(rows, cols);
    IMAGE_C1 mask(rows, cols);
    IMAGE_C1 dmask(rows, cols);
    PIXEL_C2 color(255,0);
#pragma HLS dataflow
#pragma HLS stream depth=20000 variable=img_1_.data_stream
    hls::AXIvideo2Mat(video_in, img_0);
    hls::Duplicate(img_0, img_1, img_1_);
    hls::Split(img_1, img_1_Y, img_1_UV);
    hls::Consume(img_1_UV);
    hls::FASTX(img_1_Y, mask, 20, true);
    hls::Dilate(mask, dmask);
    hls::PaintMask(img_1_, dmask, img_2, color);
    hls::Mat2AXIvideo(img_2, video_out);
}
