############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj
set_top image_filter
add_files top.cpp
add_files -tb images/test_1080p.bmp
add_files -tb opencv_top.cpp
add_files -tb test.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 150MHz -name default
config_schedule -verbose
#source "./prj/solution1/directives.tcl"
csim_design -O
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
