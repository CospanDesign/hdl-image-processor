############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_cpp
set_top simple_cpp
add_files simple_cpp/source/simple.cpp
add_files simple_cpp/include/simple.h
add_files -tb simple_cpp/include/simple.h
add_files -tb simple_cpp/test/test_simple.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./simple_cpp/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
