############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project row_product
set_top row_product
add_files row_product/src/row_product.hpp
add_files row_product/src/row_product.cpp
add_files -tb row_product/src/row_product_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "row_product_test" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./row_product/row_product_test/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
