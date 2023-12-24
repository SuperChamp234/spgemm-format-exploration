# This script segment is generated automatically by AutoPilot

# FIFO definition:
set ID 21
set FifoName outer_product_fifo_w32_d2_S_x
set InstName colind1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 22
set FifoName outer_product_fifo_w32_d2_S_x
set InstName colind2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 23
set FifoName outer_product_fifo_w32_d2_S_x
set InstName data1_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 24
set FifoName outer_product_fifo_w32_d2_S_x
set InstName data2_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 25
set FifoName outer_product_fifo_w32_d2_S_x
set InstName merged_colind_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition:
set ID 26
set FifoName outer_product_fifo_w32_d2_S_x
set InstName merged_data_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 2
set DataWd 32
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 0
set EmptyThresh 0
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name csr2_rowptr \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename csr2_rowptr \
    op interface \
    ports { csr2_rowptr_address0 { O 3 vector } csr2_rowptr_ce0 { O 1 bit } csr2_rowptr_q0 { I 32 vector } csr2_rowptr_address1 { O 3 vector } csr2_rowptr_ce1 { O 1 bit } csr2_rowptr_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'csr2_rowptr'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name csr2_colind \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename csr2_colind \
    op interface \
    ports { csr2_colind_address0 { O 5 vector } csr2_colind_ce0 { O 1 bit } csr2_colind_q0 { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'csr2_colind'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name csr2_data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename csr2_data \
    op interface \
    ports { csr2_data_address0 { O 5 vector } csr2_data_ce0 { O 1 bit } csr2_data_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'csr2_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name out_csr_rowptr \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_csr_rowptr \
    op interface \
    ports { out_csr_rowptr_address0 { O 3 vector } out_csr_rowptr_ce0 { O 1 bit } out_csr_rowptr_we0 { O 1 bit } out_csr_rowptr_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_csr_rowptr'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name out_csr_colind \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_csr_colind \
    op interface \
    ports { out_csr_colind_address0 { O 5 vector } out_csr_colind_ce0 { O 1 bit } out_csr_colind_we0 { O 1 bit } out_csr_colind_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_csr_colind'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name out_csr_data \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_csr_data \
    op interface \
    ports { out_csr_data_address0 { O 5 vector } out_csr_data_ce0 { O 1 bit } out_csr_data_we0 { O 1 bit } out_csr_data_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_csr_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name z_rowptr \
    type other \
    dir I \
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
    id 28 \
    name z_colind \
    type other \
    dir I \
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
    id 29 \
    name z_data \
    type other \
    dir I \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


