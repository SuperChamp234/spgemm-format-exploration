# This script segment is generated automatically by AutoPilot

set id 1
set name row_product_mul_32s_32s_48_2_1
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 1
set in1_width 32
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 48
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename Multiplier
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name z_rowptr \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_z_rowptr \
    op interface \
    ports { m_axi_z_rowptr_AWVALID { O 1 bit } m_axi_z_rowptr_AWREADY { I 1 bit } m_axi_z_rowptr_AWADDR { O 64 vector } m_axi_z_rowptr_AWID { O 1 vector } m_axi_z_rowptr_AWLEN { O 32 vector } m_axi_z_rowptr_AWSIZE { O 3 vector } m_axi_z_rowptr_AWBURST { O 2 vector } m_axi_z_rowptr_AWLOCK { O 2 vector } m_axi_z_rowptr_AWCACHE { O 4 vector } m_axi_z_rowptr_AWPROT { O 3 vector } m_axi_z_rowptr_AWQOS { O 4 vector } m_axi_z_rowptr_AWREGION { O 4 vector } m_axi_z_rowptr_AWUSER { O 1 vector } m_axi_z_rowptr_WVALID { O 1 bit } m_axi_z_rowptr_WREADY { I 1 bit } m_axi_z_rowptr_WDATA { O 32 vector } m_axi_z_rowptr_WSTRB { O 4 vector } m_axi_z_rowptr_WLAST { O 1 bit } m_axi_z_rowptr_WID { O 1 vector } m_axi_z_rowptr_WUSER { O 1 vector } m_axi_z_rowptr_ARVALID { O 1 bit } m_axi_z_rowptr_ARREADY { I 1 bit } m_axi_z_rowptr_ARADDR { O 64 vector } m_axi_z_rowptr_ARID { O 1 vector } m_axi_z_rowptr_ARLEN { O 32 vector } m_axi_z_rowptr_ARSIZE { O 3 vector } m_axi_z_rowptr_ARBURST { O 2 vector } m_axi_z_rowptr_ARLOCK { O 2 vector } m_axi_z_rowptr_ARCACHE { O 4 vector } m_axi_z_rowptr_ARPROT { O 3 vector } m_axi_z_rowptr_ARQOS { O 4 vector } m_axi_z_rowptr_ARREGION { O 4 vector } m_axi_z_rowptr_ARUSER { O 1 vector } m_axi_z_rowptr_RVALID { I 1 bit } m_axi_z_rowptr_RREADY { O 1 bit } m_axi_z_rowptr_RDATA { I 32 vector } m_axi_z_rowptr_RLAST { I 1 bit } m_axi_z_rowptr_RID { I 1 vector } m_axi_z_rowptr_RUSER { I 1 vector } m_axi_z_rowptr_RRESP { I 2 vector } m_axi_z_rowptr_BVALID { I 1 bit } m_axi_z_rowptr_BREADY { O 1 bit } m_axi_z_rowptr_BRESP { I 2 vector } m_axi_z_rowptr_BID { I 1 vector } m_axi_z_rowptr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name x_rowptr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_rowptr \
    op interface \
    ports { m_axi_x_rowptr_AWVALID { O 1 bit } m_axi_x_rowptr_AWREADY { I 1 bit } m_axi_x_rowptr_AWADDR { O 64 vector } m_axi_x_rowptr_AWID { O 1 vector } m_axi_x_rowptr_AWLEN { O 32 vector } m_axi_x_rowptr_AWSIZE { O 3 vector } m_axi_x_rowptr_AWBURST { O 2 vector } m_axi_x_rowptr_AWLOCK { O 2 vector } m_axi_x_rowptr_AWCACHE { O 4 vector } m_axi_x_rowptr_AWPROT { O 3 vector } m_axi_x_rowptr_AWQOS { O 4 vector } m_axi_x_rowptr_AWREGION { O 4 vector } m_axi_x_rowptr_AWUSER { O 1 vector } m_axi_x_rowptr_WVALID { O 1 bit } m_axi_x_rowptr_WREADY { I 1 bit } m_axi_x_rowptr_WDATA { O 32 vector } m_axi_x_rowptr_WSTRB { O 4 vector } m_axi_x_rowptr_WLAST { O 1 bit } m_axi_x_rowptr_WID { O 1 vector } m_axi_x_rowptr_WUSER { O 1 vector } m_axi_x_rowptr_ARVALID { O 1 bit } m_axi_x_rowptr_ARREADY { I 1 bit } m_axi_x_rowptr_ARADDR { O 64 vector } m_axi_x_rowptr_ARID { O 1 vector } m_axi_x_rowptr_ARLEN { O 32 vector } m_axi_x_rowptr_ARSIZE { O 3 vector } m_axi_x_rowptr_ARBURST { O 2 vector } m_axi_x_rowptr_ARLOCK { O 2 vector } m_axi_x_rowptr_ARCACHE { O 4 vector } m_axi_x_rowptr_ARPROT { O 3 vector } m_axi_x_rowptr_ARQOS { O 4 vector } m_axi_x_rowptr_ARREGION { O 4 vector } m_axi_x_rowptr_ARUSER { O 1 vector } m_axi_x_rowptr_RVALID { I 1 bit } m_axi_x_rowptr_RREADY { O 1 bit } m_axi_x_rowptr_RDATA { I 32 vector } m_axi_x_rowptr_RLAST { I 1 bit } m_axi_x_rowptr_RID { I 1 vector } m_axi_x_rowptr_RUSER { I 1 vector } m_axi_x_rowptr_RRESP { I 2 vector } m_axi_x_rowptr_BVALID { I 1 bit } m_axi_x_rowptr_BREADY { O 1 bit } m_axi_x_rowptr_BRESP { I 2 vector } m_axi_x_rowptr_BID { I 1 vector } m_axi_x_rowptr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name x_colind \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_colind \
    op interface \
    ports { m_axi_x_colind_AWVALID { O 1 bit } m_axi_x_colind_AWREADY { I 1 bit } m_axi_x_colind_AWADDR { O 64 vector } m_axi_x_colind_AWID { O 1 vector } m_axi_x_colind_AWLEN { O 32 vector } m_axi_x_colind_AWSIZE { O 3 vector } m_axi_x_colind_AWBURST { O 2 vector } m_axi_x_colind_AWLOCK { O 2 vector } m_axi_x_colind_AWCACHE { O 4 vector } m_axi_x_colind_AWPROT { O 3 vector } m_axi_x_colind_AWQOS { O 4 vector } m_axi_x_colind_AWREGION { O 4 vector } m_axi_x_colind_AWUSER { O 1 vector } m_axi_x_colind_WVALID { O 1 bit } m_axi_x_colind_WREADY { I 1 bit } m_axi_x_colind_WDATA { O 32 vector } m_axi_x_colind_WSTRB { O 4 vector } m_axi_x_colind_WLAST { O 1 bit } m_axi_x_colind_WID { O 1 vector } m_axi_x_colind_WUSER { O 1 vector } m_axi_x_colind_ARVALID { O 1 bit } m_axi_x_colind_ARREADY { I 1 bit } m_axi_x_colind_ARADDR { O 64 vector } m_axi_x_colind_ARID { O 1 vector } m_axi_x_colind_ARLEN { O 32 vector } m_axi_x_colind_ARSIZE { O 3 vector } m_axi_x_colind_ARBURST { O 2 vector } m_axi_x_colind_ARLOCK { O 2 vector } m_axi_x_colind_ARCACHE { O 4 vector } m_axi_x_colind_ARPROT { O 3 vector } m_axi_x_colind_ARQOS { O 4 vector } m_axi_x_colind_ARREGION { O 4 vector } m_axi_x_colind_ARUSER { O 1 vector } m_axi_x_colind_RVALID { I 1 bit } m_axi_x_colind_RREADY { O 1 bit } m_axi_x_colind_RDATA { I 32 vector } m_axi_x_colind_RLAST { I 1 bit } m_axi_x_colind_RID { I 1 vector } m_axi_x_colind_RUSER { I 1 vector } m_axi_x_colind_RRESP { I 2 vector } m_axi_x_colind_BVALID { I 1 bit } m_axi_x_colind_BREADY { O 1 bit } m_axi_x_colind_BRESP { I 2 vector } m_axi_x_colind_BID { I 1 vector } m_axi_x_colind_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name x_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_data \
    op interface \
    ports { m_axi_x_data_AWVALID { O 1 bit } m_axi_x_data_AWREADY { I 1 bit } m_axi_x_data_AWADDR { O 64 vector } m_axi_x_data_AWID { O 1 vector } m_axi_x_data_AWLEN { O 32 vector } m_axi_x_data_AWSIZE { O 3 vector } m_axi_x_data_AWBURST { O 2 vector } m_axi_x_data_AWLOCK { O 2 vector } m_axi_x_data_AWCACHE { O 4 vector } m_axi_x_data_AWPROT { O 3 vector } m_axi_x_data_AWQOS { O 4 vector } m_axi_x_data_AWREGION { O 4 vector } m_axi_x_data_AWUSER { O 1 vector } m_axi_x_data_WVALID { O 1 bit } m_axi_x_data_WREADY { I 1 bit } m_axi_x_data_WDATA { O 32 vector } m_axi_x_data_WSTRB { O 4 vector } m_axi_x_data_WLAST { O 1 bit } m_axi_x_data_WID { O 1 vector } m_axi_x_data_WUSER { O 1 vector } m_axi_x_data_ARVALID { O 1 bit } m_axi_x_data_ARREADY { I 1 bit } m_axi_x_data_ARADDR { O 64 vector } m_axi_x_data_ARID { O 1 vector } m_axi_x_data_ARLEN { O 32 vector } m_axi_x_data_ARSIZE { O 3 vector } m_axi_x_data_ARBURST { O 2 vector } m_axi_x_data_ARLOCK { O 2 vector } m_axi_x_data_ARCACHE { O 4 vector } m_axi_x_data_ARPROT { O 3 vector } m_axi_x_data_ARQOS { O 4 vector } m_axi_x_data_ARREGION { O 4 vector } m_axi_x_data_ARUSER { O 1 vector } m_axi_x_data_RVALID { I 1 bit } m_axi_x_data_RREADY { O 1 bit } m_axi_x_data_RDATA { I 32 vector } m_axi_x_data_RLAST { I 1 bit } m_axi_x_data_RID { I 1 vector } m_axi_x_data_RUSER { I 1 vector } m_axi_x_data_RRESP { I 2 vector } m_axi_x_data_BVALID { I 1 bit } m_axi_x_data_BREADY { O 1 bit } m_axi_x_data_BRESP { I 2 vector } m_axi_x_data_BID { I 1 vector } m_axi_x_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name y_rowptr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_rowptr \
    op interface \
    ports { m_axi_y_rowptr_AWVALID { O 1 bit } m_axi_y_rowptr_AWREADY { I 1 bit } m_axi_y_rowptr_AWADDR { O 64 vector } m_axi_y_rowptr_AWID { O 1 vector } m_axi_y_rowptr_AWLEN { O 32 vector } m_axi_y_rowptr_AWSIZE { O 3 vector } m_axi_y_rowptr_AWBURST { O 2 vector } m_axi_y_rowptr_AWLOCK { O 2 vector } m_axi_y_rowptr_AWCACHE { O 4 vector } m_axi_y_rowptr_AWPROT { O 3 vector } m_axi_y_rowptr_AWQOS { O 4 vector } m_axi_y_rowptr_AWREGION { O 4 vector } m_axi_y_rowptr_AWUSER { O 1 vector } m_axi_y_rowptr_WVALID { O 1 bit } m_axi_y_rowptr_WREADY { I 1 bit } m_axi_y_rowptr_WDATA { O 32 vector } m_axi_y_rowptr_WSTRB { O 4 vector } m_axi_y_rowptr_WLAST { O 1 bit } m_axi_y_rowptr_WID { O 1 vector } m_axi_y_rowptr_WUSER { O 1 vector } m_axi_y_rowptr_ARVALID { O 1 bit } m_axi_y_rowptr_ARREADY { I 1 bit } m_axi_y_rowptr_ARADDR { O 64 vector } m_axi_y_rowptr_ARID { O 1 vector } m_axi_y_rowptr_ARLEN { O 32 vector } m_axi_y_rowptr_ARSIZE { O 3 vector } m_axi_y_rowptr_ARBURST { O 2 vector } m_axi_y_rowptr_ARLOCK { O 2 vector } m_axi_y_rowptr_ARCACHE { O 4 vector } m_axi_y_rowptr_ARPROT { O 3 vector } m_axi_y_rowptr_ARQOS { O 4 vector } m_axi_y_rowptr_ARREGION { O 4 vector } m_axi_y_rowptr_ARUSER { O 1 vector } m_axi_y_rowptr_RVALID { I 1 bit } m_axi_y_rowptr_RREADY { O 1 bit } m_axi_y_rowptr_RDATA { I 32 vector } m_axi_y_rowptr_RLAST { I 1 bit } m_axi_y_rowptr_RID { I 1 vector } m_axi_y_rowptr_RUSER { I 1 vector } m_axi_y_rowptr_RRESP { I 2 vector } m_axi_y_rowptr_BVALID { I 1 bit } m_axi_y_rowptr_BREADY { O 1 bit } m_axi_y_rowptr_BRESP { I 2 vector } m_axi_y_rowptr_BID { I 1 vector } m_axi_y_rowptr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name y_colind \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_colind \
    op interface \
    ports { m_axi_y_colind_AWVALID { O 1 bit } m_axi_y_colind_AWREADY { I 1 bit } m_axi_y_colind_AWADDR { O 64 vector } m_axi_y_colind_AWID { O 1 vector } m_axi_y_colind_AWLEN { O 32 vector } m_axi_y_colind_AWSIZE { O 3 vector } m_axi_y_colind_AWBURST { O 2 vector } m_axi_y_colind_AWLOCK { O 2 vector } m_axi_y_colind_AWCACHE { O 4 vector } m_axi_y_colind_AWPROT { O 3 vector } m_axi_y_colind_AWQOS { O 4 vector } m_axi_y_colind_AWREGION { O 4 vector } m_axi_y_colind_AWUSER { O 1 vector } m_axi_y_colind_WVALID { O 1 bit } m_axi_y_colind_WREADY { I 1 bit } m_axi_y_colind_WDATA { O 32 vector } m_axi_y_colind_WSTRB { O 4 vector } m_axi_y_colind_WLAST { O 1 bit } m_axi_y_colind_WID { O 1 vector } m_axi_y_colind_WUSER { O 1 vector } m_axi_y_colind_ARVALID { O 1 bit } m_axi_y_colind_ARREADY { I 1 bit } m_axi_y_colind_ARADDR { O 64 vector } m_axi_y_colind_ARID { O 1 vector } m_axi_y_colind_ARLEN { O 32 vector } m_axi_y_colind_ARSIZE { O 3 vector } m_axi_y_colind_ARBURST { O 2 vector } m_axi_y_colind_ARLOCK { O 2 vector } m_axi_y_colind_ARCACHE { O 4 vector } m_axi_y_colind_ARPROT { O 3 vector } m_axi_y_colind_ARQOS { O 4 vector } m_axi_y_colind_ARREGION { O 4 vector } m_axi_y_colind_ARUSER { O 1 vector } m_axi_y_colind_RVALID { I 1 bit } m_axi_y_colind_RREADY { O 1 bit } m_axi_y_colind_RDATA { I 32 vector } m_axi_y_colind_RLAST { I 1 bit } m_axi_y_colind_RID { I 1 vector } m_axi_y_colind_RUSER { I 1 vector } m_axi_y_colind_RRESP { I 2 vector } m_axi_y_colind_BVALID { I 1 bit } m_axi_y_colind_BREADY { O 1 bit } m_axi_y_colind_BRESP { I 2 vector } m_axi_y_colind_BID { I 1 vector } m_axi_y_colind_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name y_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_data \
    op interface \
    ports { m_axi_y_data_AWVALID { O 1 bit } m_axi_y_data_AWREADY { I 1 bit } m_axi_y_data_AWADDR { O 64 vector } m_axi_y_data_AWID { O 1 vector } m_axi_y_data_AWLEN { O 32 vector } m_axi_y_data_AWSIZE { O 3 vector } m_axi_y_data_AWBURST { O 2 vector } m_axi_y_data_AWLOCK { O 2 vector } m_axi_y_data_AWCACHE { O 4 vector } m_axi_y_data_AWPROT { O 3 vector } m_axi_y_data_AWQOS { O 4 vector } m_axi_y_data_AWREGION { O 4 vector } m_axi_y_data_AWUSER { O 1 vector } m_axi_y_data_WVALID { O 1 bit } m_axi_y_data_WREADY { I 1 bit } m_axi_y_data_WDATA { O 32 vector } m_axi_y_data_WSTRB { O 4 vector } m_axi_y_data_WLAST { O 1 bit } m_axi_y_data_WID { O 1 vector } m_axi_y_data_WUSER { O 1 vector } m_axi_y_data_ARVALID { O 1 bit } m_axi_y_data_ARREADY { I 1 bit } m_axi_y_data_ARADDR { O 64 vector } m_axi_y_data_ARID { O 1 vector } m_axi_y_data_ARLEN { O 32 vector } m_axi_y_data_ARSIZE { O 3 vector } m_axi_y_data_ARBURST { O 2 vector } m_axi_y_data_ARLOCK { O 2 vector } m_axi_y_data_ARCACHE { O 4 vector } m_axi_y_data_ARPROT { O 3 vector } m_axi_y_data_ARQOS { O 4 vector } m_axi_y_data_ARREGION { O 4 vector } m_axi_y_data_ARUSER { O 1 vector } m_axi_y_data_RVALID { I 1 bit } m_axi_y_data_RREADY { O 1 bit } m_axi_y_data_RDATA { I 32 vector } m_axi_y_data_RLAST { I 1 bit } m_axi_y_data_RID { I 1 vector } m_axi_y_data_RUSER { I 1 vector } m_axi_y_data_RRESP { I 2 vector } m_axi_y_data_BVALID { I 1 bit } m_axi_y_data_BREADY { O 1 bit } m_axi_y_data_BRESP { I 2 vector } m_axi_y_data_BID { I 1 vector } m_axi_y_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name z_colind \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_z_colind \
    op interface \
    ports { m_axi_z_colind_AWVALID { O 1 bit } m_axi_z_colind_AWREADY { I 1 bit } m_axi_z_colind_AWADDR { O 64 vector } m_axi_z_colind_AWID { O 1 vector } m_axi_z_colind_AWLEN { O 32 vector } m_axi_z_colind_AWSIZE { O 3 vector } m_axi_z_colind_AWBURST { O 2 vector } m_axi_z_colind_AWLOCK { O 2 vector } m_axi_z_colind_AWCACHE { O 4 vector } m_axi_z_colind_AWPROT { O 3 vector } m_axi_z_colind_AWQOS { O 4 vector } m_axi_z_colind_AWREGION { O 4 vector } m_axi_z_colind_AWUSER { O 1 vector } m_axi_z_colind_WVALID { O 1 bit } m_axi_z_colind_WREADY { I 1 bit } m_axi_z_colind_WDATA { O 32 vector } m_axi_z_colind_WSTRB { O 4 vector } m_axi_z_colind_WLAST { O 1 bit } m_axi_z_colind_WID { O 1 vector } m_axi_z_colind_WUSER { O 1 vector } m_axi_z_colind_ARVALID { O 1 bit } m_axi_z_colind_ARREADY { I 1 bit } m_axi_z_colind_ARADDR { O 64 vector } m_axi_z_colind_ARID { O 1 vector } m_axi_z_colind_ARLEN { O 32 vector } m_axi_z_colind_ARSIZE { O 3 vector } m_axi_z_colind_ARBURST { O 2 vector } m_axi_z_colind_ARLOCK { O 2 vector } m_axi_z_colind_ARCACHE { O 4 vector } m_axi_z_colind_ARPROT { O 3 vector } m_axi_z_colind_ARQOS { O 4 vector } m_axi_z_colind_ARREGION { O 4 vector } m_axi_z_colind_ARUSER { O 1 vector } m_axi_z_colind_RVALID { I 1 bit } m_axi_z_colind_RREADY { O 1 bit } m_axi_z_colind_RDATA { I 32 vector } m_axi_z_colind_RLAST { I 1 bit } m_axi_z_colind_RID { I 1 vector } m_axi_z_colind_RUSER { I 1 vector } m_axi_z_colind_RRESP { I 2 vector } m_axi_z_colind_BVALID { I 1 bit } m_axi_z_colind_BREADY { O 1 bit } m_axi_z_colind_BRESP { I 2 vector } m_axi_z_colind_BID { I 1 vector } m_axi_z_colind_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name z_data \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_z_data \
    op interface \
    ports { m_axi_z_data_AWVALID { O 1 bit } m_axi_z_data_AWREADY { I 1 bit } m_axi_z_data_AWADDR { O 64 vector } m_axi_z_data_AWID { O 1 vector } m_axi_z_data_AWLEN { O 32 vector } m_axi_z_data_AWSIZE { O 3 vector } m_axi_z_data_AWBURST { O 2 vector } m_axi_z_data_AWLOCK { O 2 vector } m_axi_z_data_AWCACHE { O 4 vector } m_axi_z_data_AWPROT { O 3 vector } m_axi_z_data_AWQOS { O 4 vector } m_axi_z_data_AWREGION { O 4 vector } m_axi_z_data_AWUSER { O 1 vector } m_axi_z_data_WVALID { O 1 bit } m_axi_z_data_WREADY { I 1 bit } m_axi_z_data_WDATA { O 32 vector } m_axi_z_data_WSTRB { O 4 vector } m_axi_z_data_WLAST { O 1 bit } m_axi_z_data_WID { O 1 vector } m_axi_z_data_WUSER { O 1 vector } m_axi_z_data_ARVALID { O 1 bit } m_axi_z_data_ARREADY { I 1 bit } m_axi_z_data_ARADDR { O 64 vector } m_axi_z_data_ARID { O 1 vector } m_axi_z_data_ARLEN { O 32 vector } m_axi_z_data_ARSIZE { O 3 vector } m_axi_z_data_ARBURST { O 2 vector } m_axi_z_data_ARLOCK { O 2 vector } m_axi_z_data_ARCACHE { O 4 vector } m_axi_z_data_ARPROT { O 3 vector } m_axi_z_data_ARQOS { O 4 vector } m_axi_z_data_ARREGION { O 4 vector } m_axi_z_data_ARUSER { O 1 vector } m_axi_z_data_RVALID { I 1 bit } m_axi_z_data_RREADY { O 1 bit } m_axi_z_data_RDATA { I 32 vector } m_axi_z_data_RLAST { I 1 bit } m_axi_z_data_RID { I 1 vector } m_axi_z_data_RUSER { I 1 vector } m_axi_z_data_RRESP { I 2 vector } m_axi_z_data_BVALID { I 1 bit } m_axi_z_data_BREADY { O 1 bit } m_axi_z_data_BRESP { I 2 vector } m_axi_z_data_BID { I 1 vector } m_axi_z_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


