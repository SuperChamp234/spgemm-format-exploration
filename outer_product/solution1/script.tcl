############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project outer_product
set_top outer_product
add_files outer_product/src/outer_product.cpp
add_files mmio.h
add_files mmio.cpp
add_files outer_product.h
add_files -tb outer_product/src/outer_product_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xa7a12t-csg325-1Q}
create_clock -period 10 -name default
#source "./outer_product/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
