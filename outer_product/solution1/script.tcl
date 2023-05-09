############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project processing_elements
set_top outer_product_opt
add_files processing_elements/src/matrix_multiplier.cpp
add_files processing_elements/src/matrix_multiplier.h
add_files processing_elements/src/outer_product.cpp
add_files processing_elements/src/outer_product.h
add_files -tb processing_elements/src/outer_product_tb.cpp
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./processing_elements/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
