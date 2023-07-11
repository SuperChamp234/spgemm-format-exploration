create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/leoh/Documents/spgemm-format-exploration/row_product/row_product_test/syn/verilog/row_product_ap_dadd_5_full_dsp_64_ip.tcl"
source "/home/leoh/Documents/spgemm-format-exploration/row_product/row_product_test/syn/verilog/row_product_ap_dmul_5_max_dsp_64_ip.tcl"
source "/home/leoh/Documents/spgemm-format-exploration/row_product/row_product_test/syn/verilog/row_product_ap_dcmp_0_no_dsp_64_ip.tcl"
