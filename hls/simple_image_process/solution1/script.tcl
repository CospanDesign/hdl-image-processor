############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_image_process
set_top simple
add_files simple_image_process/src/simple.c
add_files -tb simple_image_process/test/out.gold.dat
add_files -tb simple_image_process/test/simple_test.c
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./simple_image_process/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
