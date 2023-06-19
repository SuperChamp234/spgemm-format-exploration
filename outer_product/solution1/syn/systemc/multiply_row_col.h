// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _multiply_row_col_HH_
#define _multiply_row_col_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mult.h"

namespace ap_rtl {

struct multiply_row_col : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > agg_result_colind_address0;
    sc_out< sc_logic > agg_result_colind_ce0;
    sc_out< sc_logic > agg_result_colind_we0;
    sc_out< sc_lv<5> > agg_result_colind_d0;
    sc_out< sc_lv<5> > agg_result_data_V_address0;
    sc_out< sc_logic > agg_result_data_V_ce0;
    sc_out< sc_logic > agg_result_data_V_we0;
    sc_out< sc_lv<32> > agg_result_data_V_d0;
    sc_out< sc_lv<3> > row_V_address0;
    sc_out< sc_logic > row_V_ce0;
    sc_in< sc_lv<32> > row_V_q0;
    sc_out< sc_lv<3> > row_V_address1;
    sc_out< sc_logic > row_V_ce1;
    sc_in< sc_lv<32> > row_V_q1;
    sc_in< sc_lv<32> > col_0_V_read;
    sc_in< sc_lv<32> > col_1_V_read;
    sc_in< sc_lv<32> > col_2_V_read;
    sc_in< sc_lv<32> > col_3_V_read;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;


    // Module declarations
    multiply_row_col(sc_module_name name);
    SC_HAS_PROCESS(multiply_row_col);

    ~multiply_row_col();

    sc_trace_file* mVcdFile;

    mult* grp_mult_fu_692;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage19;
    sc_signal< bool > ap_block_state20_pp0_stage19_iter0;
    sc_signal< bool > ap_block_pp0_stage19_11001;
    sc_signal< sc_lv<3> > agg_result_rowptr_1_reg_520;
    sc_signal< sc_lv<4> > agg_result_rowptr_2_reg_573;
    sc_signal< sc_lv<4> > agg_result_rowptr_3_reg_628;
    sc_signal< sc_lv<5> > z_idx_2_3_3_reg_671;
    sc_signal< sc_lv<32> > grp_mult_fu_692_ap_return;
    sc_signal< sc_lv<32> > reg_698;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state3_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state23_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<1> > or_cond_reg_1148;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state4_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<1> > or_cond7_reg_1180;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state5_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<1> > or_cond8_reg_1218;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_state6_pp0_stage5_iter0;
    sc_signal< bool > ap_block_pp0_stage5_11001;
    sc_signal< sc_lv<1> > or_cond9_reg_1250;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_state7_pp0_stage6_iter0;
    sc_signal< bool > ap_block_pp0_stage6_11001;
    sc_signal< sc_lv<1> > or_cond1_reg_1271;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_state8_pp0_stage7_iter0;
    sc_signal< bool > ap_block_pp0_stage7_11001;
    sc_signal< sc_lv<1> > or_cond2_reg_1298;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage8;
    sc_signal< bool > ap_block_state9_pp0_stage8_iter0;
    sc_signal< bool > ap_block_pp0_stage8_11001;
    sc_signal< sc_lv<1> > or_cond3_reg_1312;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage9;
    sc_signal< bool > ap_block_state10_pp0_stage9_iter0;
    sc_signal< bool > ap_block_pp0_stage9_11001;
    sc_signal< sc_lv<1> > or_cond4_reg_1331;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage10;
    sc_signal< bool > ap_block_state11_pp0_stage10_iter0;
    sc_signal< bool > ap_block_pp0_stage10_11001;
    sc_signal< sc_lv<1> > or_cond5_reg_1345;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage11;
    sc_signal< bool > ap_block_state12_pp0_stage11_iter0;
    sc_signal< bool > ap_block_pp0_stage11_11001;
    sc_signal< sc_lv<1> > or_cond6_reg_1359;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage12;
    sc_signal< bool > ap_block_state13_pp0_stage12_iter0;
    sc_signal< bool > ap_block_pp0_stage12_11001;
    sc_signal< sc_lv<1> > or_cond10_reg_1386;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage13;
    sc_signal< bool > ap_block_state14_pp0_stage13_iter0;
    sc_signal< bool > ap_block_pp0_stage13_11001;
    sc_signal< sc_lv<1> > or_cond11_reg_1400;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage14;
    sc_signal< bool > ap_block_state15_pp0_stage14_iter0;
    sc_signal< bool > ap_block_pp0_stage14_11001;
    sc_signal< sc_lv<1> > or_cond12_reg_1414;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage15;
    sc_signal< bool > ap_block_state16_pp0_stage15_iter0;
    sc_signal< bool > ap_block_pp0_stage15_11001;
    sc_signal< sc_lv<1> > or_cond13_reg_1428;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage16;
    sc_signal< bool > ap_block_state17_pp0_stage16_iter0;
    sc_signal< bool > ap_block_pp0_stage16_11001;
    sc_signal< sc_lv<1> > or_cond14_reg_1442;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage17;
    sc_signal< bool > ap_block_state18_pp0_stage17_iter0;
    sc_signal< bool > ap_block_pp0_stage17_11001;
    sc_signal< sc_lv<1> > or_cond15_reg_1466;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage18;
    sc_signal< bool > ap_block_state19_pp0_stage18_iter0;
    sc_signal< bool > ap_block_pp0_stage18_11001;
    sc_signal< sc_lv<1> > or_cond16_reg_1480;
    sc_signal< sc_lv<1> > or_cond17_reg_1484;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > or_cond18_reg_1488;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state22_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > or_cond19_reg_1492;
    sc_signal< sc_lv<32> > col_0_V_read_1_reg_1123;
    sc_signal< sc_lv<32> > row_V_load_reg_1128;
    sc_signal< sc_lv<1> > tmp_9_fu_703_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_1133;
    sc_signal< sc_lv<1> > tmp_s_fu_709_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_1140;
    sc_signal< sc_lv<1> > or_cond_fu_715_p2;
    sc_signal< sc_lv<32> > row_V_load_1_reg_1152;
    sc_signal< sc_lv<2> > z_idx_2_cast4_fu_721_p1;
    sc_signal< sc_lv<1> > tmp_9_0_1_fu_725_p2;
    sc_signal< sc_lv<1> > tmp_9_0_1_reg_1173;
    sc_signal< sc_lv<1> > or_cond7_fu_730_p2;
    sc_signal< sc_lv<64> > tmp_1_0_s_fu_735_p1;
    sc_signal< sc_lv<64> > tmp_1_0_s_reg_1184;
    sc_signal< sc_lv<2> > z_idx_3_0_1_fu_740_p3;
    sc_signal< sc_lv<32> > row_V_load_2_reg_1194;
    sc_signal< sc_lv<32> > row_V_load_3_reg_1200;
    sc_signal< sc_lv<1> > tmp_9_0_2_fu_748_p2;
    sc_signal< sc_lv<1> > tmp_9_0_2_reg_1211;
    sc_signal< sc_lv<1> > or_cond8_fu_753_p2;
    sc_signal< sc_lv<64> > tmp_1_0_2_fu_758_p1;
    sc_signal< sc_lv<64> > tmp_1_0_2_reg_1222;
    sc_signal< sc_lv<2> > z_idx_3_0_2_fu_763_p2;
    sc_signal< sc_lv<32> > row_V_load_4_reg_1232;
    sc_signal< sc_lv<3> > z_idx_2_0_2_cast3_fu_769_p1;
    sc_signal< sc_lv<1> > tmp_9_0_3_fu_773_p2;
    sc_signal< sc_lv<1> > tmp_9_0_3_reg_1243;
    sc_signal< sc_lv<1> > or_cond9_fu_778_p2;
    sc_signal< sc_lv<64> > tmp_1_0_3_fu_783_p1;
    sc_signal< sc_lv<64> > tmp_1_0_3_reg_1254;
    sc_signal< sc_lv<3> > z_idx_3_0_3_fu_788_p2;
    sc_signal< sc_lv<1> > tmp_9_0_4_fu_794_p2;
    sc_signal< sc_lv<1> > tmp_9_0_4_reg_1264;
    sc_signal< sc_lv<1> > or_cond1_fu_799_p2;
    sc_signal< sc_lv<64> > tmp_1_0_4_fu_804_p1;
    sc_signal< sc_lv<64> > tmp_1_0_4_reg_1275;
    sc_signal< sc_lv<3> > z_idx_3_0_4_fu_809_p2;
    sc_signal< sc_lv<32> > col_1_V_read_1_reg_1285;
    sc_signal< sc_lv<1> > tmp_1_fu_815_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_1290;
    sc_signal< sc_lv<1> > or_cond2_fu_821_p2;
    sc_signal< sc_lv<64> > tmp_1_1_fu_826_p1;
    sc_signal< sc_lv<64> > tmp_1_1_reg_1302;
    sc_signal< sc_lv<3> > z_idx_3_1_fu_831_p2;
    sc_signal< sc_lv<1> > or_cond3_fu_837_p2;
    sc_signal< sc_lv<64> > tmp_1_1_1_fu_841_p1;
    sc_signal< sc_lv<64> > tmp_1_1_1_reg_1316;
    sc_signal< sc_lv<3> > z_idx_3_1_1_fu_846_p2;
    sc_signal< sc_lv<4> > z_idx_2_1_1_cast2_fu_852_p1;
    sc_signal< sc_lv<1> > or_cond4_fu_856_p2;
    sc_signal< sc_lv<64> > tmp_1_1_2_fu_860_p1;
    sc_signal< sc_lv<64> > tmp_1_1_2_reg_1335;
    sc_signal< sc_lv<4> > z_idx_3_1_2_fu_865_p2;
    sc_signal< sc_lv<1> > or_cond5_fu_871_p2;
    sc_signal< sc_lv<64> > tmp_1_1_3_fu_875_p1;
    sc_signal< sc_lv<64> > tmp_1_1_3_reg_1349;
    sc_signal< sc_lv<4> > z_idx_3_1_3_fu_880_p2;
    sc_signal< sc_lv<1> > or_cond6_fu_886_p2;
    sc_signal< sc_lv<64> > tmp_1_1_4_fu_890_p1;
    sc_signal< sc_lv<64> > tmp_1_1_4_reg_1363;
    sc_signal< sc_lv<4> > z_idx_3_1_4_fu_895_p2;
    sc_signal< sc_lv<32> > col_2_V_read_1_reg_1373;
    sc_signal< sc_lv<1> > tmp_2_fu_901_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_1378;
    sc_signal< sc_lv<1> > or_cond10_fu_907_p2;
    sc_signal< sc_lv<64> > tmp_1_2_fu_912_p1;
    sc_signal< sc_lv<64> > tmp_1_2_reg_1390;
    sc_signal< sc_lv<4> > z_idx_3_2_fu_917_p2;
    sc_signal< sc_lv<1> > or_cond11_fu_923_p2;
    sc_signal< sc_lv<64> > tmp_1_2_1_fu_927_p1;
    sc_signal< sc_lv<64> > tmp_1_2_1_reg_1404;
    sc_signal< sc_lv<4> > z_idx_3_2_1_fu_932_p2;
    sc_signal< sc_lv<1> > or_cond12_fu_938_p2;
    sc_signal< sc_lv<64> > tmp_1_2_2_fu_942_p1;
    sc_signal< sc_lv<64> > tmp_1_2_2_reg_1418;
    sc_signal< sc_lv<4> > z_idx_3_2_2_fu_947_p2;
    sc_signal< sc_lv<1> > or_cond13_fu_953_p2;
    sc_signal< sc_lv<64> > tmp_1_2_3_fu_957_p1;
    sc_signal< sc_lv<64> > tmp_1_2_3_reg_1432;
    sc_signal< sc_lv<4> > z_idx_3_2_3_fu_962_p2;
    sc_signal< sc_lv<1> > or_cond14_fu_968_p2;
    sc_signal< sc_lv<64> > tmp_1_2_4_fu_972_p1;
    sc_signal< sc_lv<64> > tmp_1_2_4_reg_1446;
    sc_signal< sc_lv<4> > z_idx_3_2_4_fu_977_p2;
    sc_signal< sc_lv<32> > col_3_V_read_1_reg_1456;
    sc_signal< sc_lv<5> > agg_result_rowptr_3_s_fu_983_p1;
    sc_signal< sc_lv<1> > or_cond15_fu_993_p2;
    sc_signal< sc_lv<64> > tmp_1_3_fu_998_p1;
    sc_signal< sc_lv<64> > tmp_1_3_reg_1470;
    sc_signal< sc_lv<5> > z_idx_3_3_fu_1003_p2;
    sc_signal< sc_lv<1> > or_cond16_fu_1009_p2;
    sc_signal< sc_lv<1> > or_cond17_fu_1014_p2;
    sc_signal< sc_lv<1> > or_cond18_fu_1019_p2;
    sc_signal< sc_lv<1> > or_cond19_fu_1024_p2;
    sc_signal< sc_lv<64> > tmp_1_3_1_fu_1029_p1;
    sc_signal< sc_lv<64> > tmp_1_3_1_reg_1496;
    sc_signal< sc_lv<5> > z_idx_3_3_1_fu_1034_p2;
    sc_signal< sc_lv<64> > tmp_1_3_2_fu_1040_p1;
    sc_signal< sc_lv<64> > tmp_1_3_2_reg_1506;
    sc_signal< sc_lv<5> > z_idx_3_3_2_fu_1045_p2;
    sc_signal< sc_lv<64> > tmp_1_3_3_fu_1051_p1;
    sc_signal< sc_lv<64> > tmp_1_3_3_reg_1516;
    sc_signal< sc_lv<5> > z_idx_3_3_3_fu_1056_p2;
    sc_signal< sc_lv<64> > tmp_1_3_4_fu_1062_p1;
    sc_signal< sc_lv<64> > tmp_1_3_4_reg_1526;
    sc_signal< sc_lv<5> > z_idx_3_3_4_fu_1067_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage19_subdone;
    sc_signal< sc_lv<32> > ap_port_reg_col_0_V_read;
    sc_signal< sc_lv<32> > ap_port_reg_col_1_V_read;
    sc_signal< sc_lv<32> > ap_port_reg_col_2_V_read;
    sc_signal< sc_lv<32> > ap_port_reg_col_3_V_read;
    sc_signal< sc_logic > grp_mult_fu_692_ap_ready;
    sc_signal< sc_lv<32> > grp_mult_fu_692_a_V;
    sc_signal< sc_lv<32> > grp_mult_fu_692_b_V;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_z_idx_2_reg_477;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter0_z_idx_2_0_1_reg_490;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter0_z_idx_2_0_2_reg_500;
    sc_signal< sc_lv<3> > ap_phi_reg_pp0_iter0_z_idx_2_0_3_reg_510;
    sc_signal< sc_lv<3> > ap_phi_reg_pp0_iter0_agg_result_rowptr_1_reg_520;
    sc_signal< sc_lv<3> > ap_phi_reg_pp0_iter0_z_idx_2_1_reg_531;
    sc_signal< sc_lv<3> > ap_phi_reg_pp0_iter0_z_idx_2_1_1_reg_542;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_1_2_reg_552;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_1_3_reg_562;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_agg_result_rowptr_2_reg_573;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_2_reg_584;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_2_1_reg_595;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_2_2_reg_606;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_z_idx_2_2_3_reg_617;
    sc_signal< sc_lv<4> > ap_phi_reg_pp0_iter0_agg_result_rowptr_3_reg_628;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter0_z_idx_2_3_reg_639;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter0_z_idx_2_3_1_reg_649;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter0_z_idx_2_3_2_reg_660;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter0_z_idx_2_3_3_reg_671;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter1_z_idx_2_3_3_reg_671;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter0_agg_result_rowptr_4_reg_682;
    sc_signal< sc_lv<5> > ap_phi_reg_pp0_iter1_agg_result_rowptr_4_reg_682;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< bool > ap_block_pp0_stage5;
    sc_signal< bool > ap_block_pp0_stage6;
    sc_signal< bool > ap_block_pp0_stage7;
    sc_signal< bool > ap_block_pp0_stage8;
    sc_signal< bool > ap_block_pp0_stage9;
    sc_signal< bool > ap_block_pp0_stage10;
    sc_signal< bool > ap_block_pp0_stage11;
    sc_signal< bool > ap_block_pp0_stage12;
    sc_signal< bool > ap_block_pp0_stage13;
    sc_signal< bool > ap_block_pp0_stage14;
    sc_signal< bool > ap_block_pp0_stage15;
    sc_signal< bool > ap_block_pp0_stage16;
    sc_signal< bool > ap_block_pp0_stage17;
    sc_signal< bool > ap_block_pp0_stage18;
    sc_signal< bool > ap_block_pp0_stage19;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > tmp_3_fu_987_p2;
    sc_signal< sc_lv<32> > agg_result_rowptr_1_s_fu_1073_p1;
    sc_signal< sc_lv<32> > agg_result_rowptr_2_s_fu_1077_p1;
    sc_signal< sc_lv<32> > agg_result_rowptr_3_1_fu_1081_p1;
    sc_signal< sc_lv<32> > agg_result_rowptr_4_s_fu_1085_p1;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_idle_pp0_1to1;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< bool > ap_block_pp0_stage7_subdone;
    sc_signal< bool > ap_block_pp0_stage8_subdone;
    sc_signal< bool > ap_block_pp0_stage9_subdone;
    sc_signal< bool > ap_block_pp0_stage10_subdone;
    sc_signal< bool > ap_block_pp0_stage11_subdone;
    sc_signal< bool > ap_block_pp0_stage12_subdone;
    sc_signal< bool > ap_block_pp0_stage13_subdone;
    sc_signal< bool > ap_block_pp0_stage14_subdone;
    sc_signal< bool > ap_block_pp0_stage15_subdone;
    sc_signal< bool > ap_block_pp0_stage16_subdone;
    sc_signal< bool > ap_block_pp0_stage17_subdone;
    sc_signal< bool > ap_block_pp0_stage18_subdone;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_197;
    sc_signal< bool > ap_condition_272;
    sc_signal< bool > ap_condition_347;
    sc_signal< bool > ap_condition_152;
    sc_signal< bool > ap_condition_167;
    sc_signal< bool > ap_condition_182;
    sc_signal< bool > ap_condition_227;
    sc_signal< bool > ap_condition_242;
    sc_signal< bool > ap_condition_257;
    sc_signal< bool > ap_condition_212;
    sc_signal< bool > ap_condition_302;
    sc_signal< bool > ap_condition_317;
    sc_signal< bool > ap_condition_332;
    sc_signal< bool > ap_condition_287;
    sc_signal< bool > ap_condition_377;
    sc_signal< bool > ap_condition_392;
    sc_signal< bool > ap_condition_362;
    sc_signal< bool > ap_condition_440;
    sc_signal< bool > ap_condition_66;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_fsm_pp0_stage0;
    static const sc_lv<20> ap_ST_fsm_pp0_stage1;
    static const sc_lv<20> ap_ST_fsm_pp0_stage2;
    static const sc_lv<20> ap_ST_fsm_pp0_stage3;
    static const sc_lv<20> ap_ST_fsm_pp0_stage4;
    static const sc_lv<20> ap_ST_fsm_pp0_stage5;
    static const sc_lv<20> ap_ST_fsm_pp0_stage6;
    static const sc_lv<20> ap_ST_fsm_pp0_stage7;
    static const sc_lv<20> ap_ST_fsm_pp0_stage8;
    static const sc_lv<20> ap_ST_fsm_pp0_stage9;
    static const sc_lv<20> ap_ST_fsm_pp0_stage10;
    static const sc_lv<20> ap_ST_fsm_pp0_stage11;
    static const sc_lv<20> ap_ST_fsm_pp0_stage12;
    static const sc_lv<20> ap_ST_fsm_pp0_stage13;
    static const sc_lv<20> ap_ST_fsm_pp0_stage14;
    static const sc_lv<20> ap_ST_fsm_pp0_stage15;
    static const sc_lv<20> ap_ST_fsm_pp0_stage16;
    static const sc_lv<20> ap_ST_fsm_pp0_stage17;
    static const sc_lv<20> ap_ST_fsm_pp0_stage18;
    static const sc_lv<20> ap_ST_fsm_pp0_stage19;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_agg_result_colind_address0();
    void thread_agg_result_colind_ce0();
    void thread_agg_result_colind_d0();
    void thread_agg_result_colind_we0();
    void thread_agg_result_data_V_address0();
    void thread_agg_result_data_V_ce0();
    void thread_agg_result_data_V_d0();
    void thread_agg_result_data_V_we0();
    void thread_agg_result_rowptr_1_s_fu_1073_p1();
    void thread_agg_result_rowptr_2_s_fu_1077_p1();
    void thread_agg_result_rowptr_3_1_fu_1081_p1();
    void thread_agg_result_rowptr_3_s_fu_983_p1();
    void thread_agg_result_rowptr_4_s_fu_1085_p1();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage10();
    void thread_ap_CS_fsm_pp0_stage11();
    void thread_ap_CS_fsm_pp0_stage12();
    void thread_ap_CS_fsm_pp0_stage13();
    void thread_ap_CS_fsm_pp0_stage14();
    void thread_ap_CS_fsm_pp0_stage15();
    void thread_ap_CS_fsm_pp0_stage16();
    void thread_ap_CS_fsm_pp0_stage17();
    void thread_ap_CS_fsm_pp0_stage18();
    void thread_ap_CS_fsm_pp0_stage19();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_pp0_stage8();
    void thread_ap_CS_fsm_pp0_stage9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage10();
    void thread_ap_block_pp0_stage10_11001();
    void thread_ap_block_pp0_stage10_subdone();
    void thread_ap_block_pp0_stage11();
    void thread_ap_block_pp0_stage11_11001();
    void thread_ap_block_pp0_stage11_subdone();
    void thread_ap_block_pp0_stage12();
    void thread_ap_block_pp0_stage12_11001();
    void thread_ap_block_pp0_stage12_subdone();
    void thread_ap_block_pp0_stage13();
    void thread_ap_block_pp0_stage13_11001();
    void thread_ap_block_pp0_stage13_subdone();
    void thread_ap_block_pp0_stage14();
    void thread_ap_block_pp0_stage14_11001();
    void thread_ap_block_pp0_stage14_subdone();
    void thread_ap_block_pp0_stage15();
    void thread_ap_block_pp0_stage15_11001();
    void thread_ap_block_pp0_stage15_subdone();
    void thread_ap_block_pp0_stage16();
    void thread_ap_block_pp0_stage16_11001();
    void thread_ap_block_pp0_stage16_subdone();
    void thread_ap_block_pp0_stage17();
    void thread_ap_block_pp0_stage17_11001();
    void thread_ap_block_pp0_stage17_subdone();
    void thread_ap_block_pp0_stage18();
    void thread_ap_block_pp0_stage18_11001();
    void thread_ap_block_pp0_stage18_subdone();
    void thread_ap_block_pp0_stage19();
    void thread_ap_block_pp0_stage19_11001();
    void thread_ap_block_pp0_stage19_subdone();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5();
    void thread_ap_block_pp0_stage5_11001();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6();
    void thread_ap_block_pp0_stage6_11001();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_pp0_stage7();
    void thread_ap_block_pp0_stage7_11001();
    void thread_ap_block_pp0_stage7_subdone();
    void thread_ap_block_pp0_stage8();
    void thread_ap_block_pp0_stage8_11001();
    void thread_ap_block_pp0_stage8_subdone();
    void thread_ap_block_pp0_stage9();
    void thread_ap_block_pp0_stage9_11001();
    void thread_ap_block_pp0_stage9_subdone();
    void thread_ap_block_state10_pp0_stage9_iter0();
    void thread_ap_block_state11_pp0_stage10_iter0();
    void thread_ap_block_state12_pp0_stage11_iter0();
    void thread_ap_block_state13_pp0_stage12_iter0();
    void thread_ap_block_state14_pp0_stage13_iter0();
    void thread_ap_block_state15_pp0_stage14_iter0();
    void thread_ap_block_state16_pp0_stage15_iter0();
    void thread_ap_block_state17_pp0_stage16_iter0();
    void thread_ap_block_state18_pp0_stage17_iter0();
    void thread_ap_block_state19_pp0_stage18_iter0();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state20_pp0_stage19_iter0();
    void thread_ap_block_state21_pp0_stage0_iter1();
    void thread_ap_block_state22_pp0_stage1_iter1();
    void thread_ap_block_state23_pp0_stage2_iter1();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state3_pp0_stage2_iter0();
    void thread_ap_block_state4_pp0_stage3_iter0();
    void thread_ap_block_state5_pp0_stage4_iter0();
    void thread_ap_block_state6_pp0_stage5_iter0();
    void thread_ap_block_state7_pp0_stage6_iter0();
    void thread_ap_block_state8_pp0_stage7_iter0();
    void thread_ap_block_state9_pp0_stage8_iter0();
    void thread_ap_condition_152();
    void thread_ap_condition_167();
    void thread_ap_condition_182();
    void thread_ap_condition_197();
    void thread_ap_condition_212();
    void thread_ap_condition_227();
    void thread_ap_condition_242();
    void thread_ap_condition_257();
    void thread_ap_condition_272();
    void thread_ap_condition_287();
    void thread_ap_condition_302();
    void thread_ap_condition_317();
    void thread_ap_condition_332();
    void thread_ap_condition_347();
    void thread_ap_condition_362();
    void thread_ap_condition_377();
    void thread_ap_condition_392();
    void thread_ap_condition_440();
    void thread_ap_condition_66();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_idle_pp0_1to1();
    void thread_ap_phi_reg_pp0_iter0_agg_result_rowptr_4_reg_682();
    void thread_ap_phi_reg_pp0_iter0_z_idx_2_3_3_reg_671();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_grp_mult_fu_692_a_V();
    void thread_grp_mult_fu_692_b_V();
    void thread_or_cond10_fu_907_p2();
    void thread_or_cond11_fu_923_p2();
    void thread_or_cond12_fu_938_p2();
    void thread_or_cond13_fu_953_p2();
    void thread_or_cond14_fu_968_p2();
    void thread_or_cond15_fu_993_p2();
    void thread_or_cond16_fu_1009_p2();
    void thread_or_cond17_fu_1014_p2();
    void thread_or_cond18_fu_1019_p2();
    void thread_or_cond19_fu_1024_p2();
    void thread_or_cond1_fu_799_p2();
    void thread_or_cond2_fu_821_p2();
    void thread_or_cond3_fu_837_p2();
    void thread_or_cond4_fu_856_p2();
    void thread_or_cond5_fu_871_p2();
    void thread_or_cond6_fu_886_p2();
    void thread_or_cond7_fu_730_p2();
    void thread_or_cond8_fu_753_p2();
    void thread_or_cond9_fu_778_p2();
    void thread_or_cond_fu_715_p2();
    void thread_row_V_address0();
    void thread_row_V_address1();
    void thread_row_V_ce0();
    void thread_row_V_ce1();
    void thread_tmp_1_0_2_fu_758_p1();
    void thread_tmp_1_0_3_fu_783_p1();
    void thread_tmp_1_0_4_fu_804_p1();
    void thread_tmp_1_0_s_fu_735_p1();
    void thread_tmp_1_1_1_fu_841_p1();
    void thread_tmp_1_1_2_fu_860_p1();
    void thread_tmp_1_1_3_fu_875_p1();
    void thread_tmp_1_1_4_fu_890_p1();
    void thread_tmp_1_1_fu_826_p1();
    void thread_tmp_1_2_1_fu_927_p1();
    void thread_tmp_1_2_2_fu_942_p1();
    void thread_tmp_1_2_3_fu_957_p1();
    void thread_tmp_1_2_4_fu_972_p1();
    void thread_tmp_1_2_fu_912_p1();
    void thread_tmp_1_3_1_fu_1029_p1();
    void thread_tmp_1_3_2_fu_1040_p1();
    void thread_tmp_1_3_3_fu_1051_p1();
    void thread_tmp_1_3_4_fu_1062_p1();
    void thread_tmp_1_3_fu_998_p1();
    void thread_tmp_1_fu_815_p2();
    void thread_tmp_2_fu_901_p2();
    void thread_tmp_3_fu_987_p2();
    void thread_tmp_9_0_1_fu_725_p2();
    void thread_tmp_9_0_2_fu_748_p2();
    void thread_tmp_9_0_3_fu_773_p2();
    void thread_tmp_9_0_4_fu_794_p2();
    void thread_tmp_9_fu_703_p2();
    void thread_tmp_s_fu_709_p2();
    void thread_z_idx_2_0_2_cast3_fu_769_p1();
    void thread_z_idx_2_1_1_cast2_fu_852_p1();
    void thread_z_idx_2_cast4_fu_721_p1();
    void thread_z_idx_3_0_1_fu_740_p3();
    void thread_z_idx_3_0_2_fu_763_p2();
    void thread_z_idx_3_0_3_fu_788_p2();
    void thread_z_idx_3_0_4_fu_809_p2();
    void thread_z_idx_3_1_1_fu_846_p2();
    void thread_z_idx_3_1_2_fu_865_p2();
    void thread_z_idx_3_1_3_fu_880_p2();
    void thread_z_idx_3_1_4_fu_895_p2();
    void thread_z_idx_3_1_fu_831_p2();
    void thread_z_idx_3_2_1_fu_932_p2();
    void thread_z_idx_3_2_2_fu_947_p2();
    void thread_z_idx_3_2_3_fu_962_p2();
    void thread_z_idx_3_2_4_fu_977_p2();
    void thread_z_idx_3_2_fu_917_p2();
    void thread_z_idx_3_3_1_fu_1034_p2();
    void thread_z_idx_3_3_2_fu_1045_p2();
    void thread_z_idx_3_3_3_fu_1056_p2();
    void thread_z_idx_3_3_4_fu_1067_p2();
    void thread_z_idx_3_3_fu_1003_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
