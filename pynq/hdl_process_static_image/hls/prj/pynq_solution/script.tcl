############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj
set_top image_filter
add_files top.cpp
add_files -tb test_1080p.bmp
add_files -tb opencv_top.cpp
add_files -tb test.cpp
open_solution "pynq_solution"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 142.857142857MHz -name default
config_schedule -verbose
#source "./prj/pynq_solution/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
