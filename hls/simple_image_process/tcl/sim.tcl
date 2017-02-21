############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset simple_image_process
set_top simple
add_files src/simple.c
add_files -tb test/out.gold.dat
add_files -tb test/simple_test.c
open_solution -reset "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./simple_image_process/solution1/directives.tcl"
csim_design -compiler gcc
exit
