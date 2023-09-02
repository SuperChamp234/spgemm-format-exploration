# Set project name and top-level function/module
open_project row_product
set_top row_product

# Add source files to the project
add_files src/row_product.cpp
add_files src/row_product.hpp

# Open Solution
open_solution "row_product_test" -flow_target vivado

# Add testbench files and set compilation flags
add_files -tb src/row_product_tb.cpp -cflags "-Wno-unknown-pragmas"

# Set target FPGA part
set_part {xc7z020-clg484-1}

# Create clock constraint
create_clock -period 10 -name default

# Source directives for synthesis
source "./row_product_test/directives.tcl"

# Simulate design
cosim_design

close_project