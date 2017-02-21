############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset opencv_cpp
set_top opencv_cpp
add_files source/opencv_demo.cpp
add_files source/top.cpp
add_files -tb images/result_1080p_golden.bmp
add_files -tb images/test_1080p.bmp
add_files -tb test/test_opencv_demo.cpp
open_solution -reset "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./opencv_cpp/solution1/directives.tcl"
csim_design -compiler gcc
exit
