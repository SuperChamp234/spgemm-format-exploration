############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project row_product
set_top row_product
add_files row_product/src/mmio.cpp
add_files row_product/src/mmio.h
add_files row_product/src/row_product.cpp
add_files row_product/src/row_product.hpp
add_files -tb row_product/src/row_product_tb.cpp
open_solution "row_product_1"
set_part {xc7a35ticsg324-1l} -tool vivado
create_clock -period 10 -name default
#source "./row_product/row_product_1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
