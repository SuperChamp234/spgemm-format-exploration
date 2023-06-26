############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project outer_product
set_top outer_product
add_files outer_product/src/mmio.cpp
add_files outer_product/src/mmio.h
add_files outer_product/src/outer_product.cpp
add_files outer_product/src/outer_product.h
add_files -tb outer_product/src/outer_product_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./outer_product/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
