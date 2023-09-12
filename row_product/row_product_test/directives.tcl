############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name row_product "row_product"
set_directive_bind_storage -type ram_1wnr -impl bram "row_product" extracted_row
set_directive_bind_storage -type ram_1wnr -impl bram "row_product" buffer_row
