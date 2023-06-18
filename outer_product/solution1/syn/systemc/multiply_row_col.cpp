// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "multiply_row_col.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic multiply_row_col::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic multiply_row_col::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> multiply_row_col::ap_ST_fsm_state1 = "1";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state2 = "10";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state3 = "100";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state4 = "1000";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state5 = "10000";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state6 = "100000";
const sc_lv<7> multiply_row_col::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> multiply_row_col::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> multiply_row_col::ap_const_lv32_1 = "1";
const sc_lv<1> multiply_row_col::ap_const_lv1_0 = "0";
const sc_lv<32> multiply_row_col::ap_const_lv32_2 = "10";
const sc_lv<32> multiply_row_col::ap_const_lv32_3 = "11";
const sc_lv<32> multiply_row_col::ap_const_lv32_4 = "100";
const sc_lv<32> multiply_row_col::ap_const_lv32_5 = "101";
const sc_lv<3> multiply_row_col::ap_const_lv3_0 = "000";
const sc_lv<1> multiply_row_col::ap_const_lv1_1 = "1";
const sc_lv<32> multiply_row_col::ap_const_lv32_6 = "110";
const sc_lv<64> multiply_row_col::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<3> multiply_row_col::ap_const_lv3_4 = "100";
const sc_lv<3> multiply_row_col::ap_const_lv3_1 = "1";
const sc_lv<3> multiply_row_col::ap_const_lv3_5 = "101";
const sc_lv<32> multiply_row_col::ap_const_lv32_10 = "10000";
const sc_lv<32> multiply_row_col::ap_const_lv32_2F = "101111";
const bool multiply_row_col::ap_const_boolean_1 = true;

multiply_row_col::multiply_row_col(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_agg_result_colind_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_2_fu_213_p1 );

    SC_METHOD(thread_agg_result_colind_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_agg_result_colind_d0);
    sensitive << ( j_reg_126 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_agg_result_colind_we0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_1_fu_208_p2 );

    SC_METHOD(thread_agg_result_data_V_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_2_fu_213_p1 );

    SC_METHOD(thread_agg_result_data_V_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_agg_result_data_V_d0);
    sensitive << ( prod_V_reg_274 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_agg_result_data_V_we0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_1_fu_208_p2 );

    SC_METHOD(thread_agg_result_rowptr_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_8_fu_186_p1 );

    SC_METHOD(thread_agg_result_rowptr_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_agg_result_rowptr_d0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( z_idx_fu_36 );

    SC_METHOD(thread_agg_result_rowptr_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_169_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_148_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_148_p2 );

    SC_METHOD(thread_col_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_160_p1 );

    SC_METHOD(thread_col_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_exitcond1_fu_148_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_exitcond_fu_169_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( j_reg_126 );

    SC_METHOD(thread_i_2_fu_154_p2);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_j_1_fu_175_p2);
    sensitive << ( j_reg_126 );

    SC_METHOD(thread_r_V_fu_193_p0);
    sensitive << ( tmp_6_cast_reg_251 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_r_V_fu_193_p1);
    sensitive << ( row_V_load_reg_269 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_r_V_fu_193_p2);
    sensitive << ( r_V_fu_193_p0 );
    sensitive << ( r_V_fu_193_p1 );

    SC_METHOD(thread_row_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_9_fu_181_p1 );

    SC_METHOD(thread_row_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_1_fu_208_p2);
    sensitive << ( prod_V_reg_274 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_tmp_2_fu_213_p0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( z_idx_fu_36 );

    SC_METHOD(thread_tmp_2_fu_213_p1);
    sensitive << ( tmp_2_fu_213_p0 );

    SC_METHOD(thread_tmp_6_cast_fu_165_p1);
    sensitive << ( col_V_q0 );

    SC_METHOD(thread_tmp_8_fu_186_p1);
    sensitive << ( i_2_reg_240 );

    SC_METHOD(thread_tmp_9_fu_181_p1);
    sensitive << ( j_reg_126 );

    SC_METHOD(thread_tmp_fu_160_p1);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_z_idx_1_fu_219_p0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( z_idx_fu_36 );

    SC_METHOD(thread_z_idx_1_fu_219_p2);
    sensitive << ( z_idx_1_fu_219_p0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond1_fu_148_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_169_p2 );

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "multiply_row_col_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, agg_result_rowptr_address0, "(port)agg_result_rowptr_address0");
    sc_trace(mVcdFile, agg_result_rowptr_ce0, "(port)agg_result_rowptr_ce0");
    sc_trace(mVcdFile, agg_result_rowptr_we0, "(port)agg_result_rowptr_we0");
    sc_trace(mVcdFile, agg_result_rowptr_d0, "(port)agg_result_rowptr_d0");
    sc_trace(mVcdFile, agg_result_colind_address0, "(port)agg_result_colind_address0");
    sc_trace(mVcdFile, agg_result_colind_ce0, "(port)agg_result_colind_ce0");
    sc_trace(mVcdFile, agg_result_colind_we0, "(port)agg_result_colind_we0");
    sc_trace(mVcdFile, agg_result_colind_d0, "(port)agg_result_colind_d0");
    sc_trace(mVcdFile, agg_result_data_V_address0, "(port)agg_result_data_V_address0");
    sc_trace(mVcdFile, agg_result_data_V_ce0, "(port)agg_result_data_V_ce0");
    sc_trace(mVcdFile, agg_result_data_V_we0, "(port)agg_result_data_V_we0");
    sc_trace(mVcdFile, agg_result_data_V_d0, "(port)agg_result_data_V_d0");
    sc_trace(mVcdFile, row_V_address0, "(port)row_V_address0");
    sc_trace(mVcdFile, row_V_ce0, "(port)row_V_ce0");
    sc_trace(mVcdFile, row_V_q0, "(port)row_V_q0");
    sc_trace(mVcdFile, col_V_address0, "(port)col_V_address0");
    sc_trace(mVcdFile, col_V_ce0, "(port)col_V_ce0");
    sc_trace(mVcdFile, col_V_q0, "(port)col_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_2_fu_154_p2, "i_2_fu_154_p2");
    sc_trace(mVcdFile, i_2_reg_240, "i_2_reg_240");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, exitcond1_fu_148_p2, "exitcond1_fu_148_p2");
    sc_trace(mVcdFile, tmp_6_cast_fu_165_p1, "tmp_6_cast_fu_165_p1");
    sc_trace(mVcdFile, tmp_6_cast_reg_251, "tmp_6_cast_reg_251");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, j_1_fu_175_p2, "j_1_fu_175_p2");
    sc_trace(mVcdFile, j_1_reg_259, "j_1_reg_259");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_169_p2, "exitcond_fu_169_p2");
    sc_trace(mVcdFile, row_V_load_reg_269, "row_V_load_reg_269");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, prod_V_reg_274, "prod_V_reg_274");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, i_reg_115, "i_reg_115");
    sc_trace(mVcdFile, j_reg_126, "j_reg_126");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_fu_160_p1, "tmp_fu_160_p1");
    sc_trace(mVcdFile, tmp_9_fu_181_p1, "tmp_9_fu_181_p1");
    sc_trace(mVcdFile, tmp_8_fu_186_p1, "tmp_8_fu_186_p1");
    sc_trace(mVcdFile, tmp_2_fu_213_p1, "tmp_2_fu_213_p1");
    sc_trace(mVcdFile, tmp_1_fu_208_p2, "tmp_1_fu_208_p2");
    sc_trace(mVcdFile, z_idx_fu_36, "z_idx_fu_36");
    sc_trace(mVcdFile, z_idx_1_fu_219_p2, "z_idx_1_fu_219_p2");
    sc_trace(mVcdFile, r_V_fu_193_p0, "r_V_fu_193_p0");
    sc_trace(mVcdFile, r_V_fu_193_p1, "r_V_fu_193_p1");
    sc_trace(mVcdFile, r_V_fu_193_p2, "r_V_fu_193_p2");
    sc_trace(mVcdFile, tmp_2_fu_213_p0, "tmp_2_fu_213_p0");
    sc_trace(mVcdFile, z_idx_1_fu_219_p0, "z_idx_1_fu_219_p0");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

multiply_row_col::~multiply_row_col() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void multiply_row_col::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_169_p2.read(), ap_const_lv1_1))) {
        i_reg_115 = i_2_reg_240.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_115 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        j_reg_126 = j_1_reg_259.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_126 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_fu_208_p2.read()))) {
        z_idx_fu_36 = z_idx_1_fu_219_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        z_idx_fu_36 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_2_reg_240 = i_2_fu_154_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_1_reg_259 = j_1_fu_175_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        prod_V_reg_274 = r_V_fu_193_p2.read().range(47, 16);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        row_V_load_reg_269 = row_V_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        tmp_6_cast_reg_251 = tmp_6_cast_fu_165_p1.read();
    }
}

void multiply_row_col::thread_agg_result_colind_address0() {
    agg_result_colind_address0 =  (sc_lv<5>) (tmp_2_fu_213_p1.read());
}

void multiply_row_col::thread_agg_result_colind_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        agg_result_colind_ce0 = ap_const_logic_1;
    } else {
        agg_result_colind_ce0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_agg_result_colind_d0() {
    agg_result_colind_d0 = j_reg_126.read();
}

void multiply_row_col::thread_agg_result_colind_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_fu_208_p2.read()))) {
        agg_result_colind_we0 = ap_const_logic_1;
    } else {
        agg_result_colind_we0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_agg_result_data_V_address0() {
    agg_result_data_V_address0 =  (sc_lv<5>) (tmp_2_fu_213_p1.read());
}

void multiply_row_col::thread_agg_result_data_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        agg_result_data_V_ce0 = ap_const_logic_1;
    } else {
        agg_result_data_V_ce0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_agg_result_data_V_d0() {
    agg_result_data_V_d0 = prod_V_reg_274.read();
}

void multiply_row_col::thread_agg_result_data_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_fu_208_p2.read()))) {
        agg_result_data_V_we0 = ap_const_logic_1;
    } else {
        agg_result_data_V_we0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_agg_result_rowptr_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        agg_result_rowptr_address0 =  (sc_lv<3>) (tmp_8_fu_186_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        agg_result_rowptr_address0 =  (sc_lv<3>) (ap_const_lv64_0);
    } else {
        agg_result_rowptr_address0 = "XXX";
    }
}

void multiply_row_col::thread_agg_result_rowptr_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)))) {
        agg_result_rowptr_ce0 = ap_const_logic_1;
    } else {
        agg_result_rowptr_ce0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_agg_result_rowptr_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        agg_result_rowptr_d0 = z_idx_fu_36.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        agg_result_rowptr_d0 = ap_const_lv32_0;
    } else {
        agg_result_rowptr_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void multiply_row_col::thread_agg_result_rowptr_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_169_p2.read(), ap_const_lv1_1)))) {
        agg_result_rowptr_we0 = ap_const_logic_1;
    } else {
        agg_result_rowptr_we0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void multiply_row_col::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void multiply_row_col::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void multiply_row_col::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void multiply_row_col::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void multiply_row_col::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void multiply_row_col::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void multiply_row_col::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond1_fu_148_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void multiply_row_col::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void multiply_row_col::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_148_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void multiply_row_col::thread_col_V_address0() {
    col_V_address0 =  (sc_lv<2>) (tmp_fu_160_p1.read());
}

void multiply_row_col::thread_col_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        col_V_ce0 = ap_const_logic_1;
    } else {
        col_V_ce0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_exitcond1_fu_148_p2() {
    exitcond1_fu_148_p2 = (!i_reg_115.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_115.read() == ap_const_lv3_4);
}

void multiply_row_col::thread_exitcond_fu_169_p2() {
    exitcond_fu_169_p2 = (!j_reg_126.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_126.read() == ap_const_lv3_5);
}

void multiply_row_col::thread_i_2_fu_154_p2() {
    i_2_fu_154_p2 = (!i_reg_115.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_reg_115.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void multiply_row_col::thread_j_1_fu_175_p2() {
    j_1_fu_175_p2 = (!j_reg_126.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_reg_126.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void multiply_row_col::thread_r_V_fu_193_p0() {
    r_V_fu_193_p0 =  (sc_lv<32>) (tmp_6_cast_reg_251.read());
}

void multiply_row_col::thread_r_V_fu_193_p1() {
    r_V_fu_193_p1 = row_V_load_reg_269.read();
}

void multiply_row_col::thread_r_V_fu_193_p2() {
    r_V_fu_193_p2 = (!r_V_fu_193_p0.read().is_01() || !r_V_fu_193_p1.read().is_01())? sc_lv<48>(): sc_bigint<32>(r_V_fu_193_p0.read()) * sc_bigint<32>(r_V_fu_193_p1.read());
}

void multiply_row_col::thread_row_V_address0() {
    row_V_address0 =  (sc_lv<3>) (tmp_9_fu_181_p1.read());
}

void multiply_row_col::thread_row_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        row_V_ce0 = ap_const_logic_1;
    } else {
        row_V_ce0 = ap_const_logic_0;
    }
}

void multiply_row_col::thread_tmp_1_fu_208_p2() {
    tmp_1_fu_208_p2 = (!prod_V_reg_274.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(prod_V_reg_274.read() == ap_const_lv32_0);
}

void multiply_row_col::thread_tmp_2_fu_213_p0() {
    tmp_2_fu_213_p0 = z_idx_fu_36.read();
}

void multiply_row_col::thread_tmp_2_fu_213_p1() {
    tmp_2_fu_213_p1 = esl_sext<64,32>(tmp_2_fu_213_p0.read());
}

void multiply_row_col::thread_tmp_6_cast_fu_165_p1() {
    tmp_6_cast_fu_165_p1 = esl_sext<48,32>(col_V_q0.read());
}

void multiply_row_col::thread_tmp_8_fu_186_p1() {
    tmp_8_fu_186_p1 = esl_zext<64,3>(i_2_reg_240.read());
}

void multiply_row_col::thread_tmp_9_fu_181_p1() {
    tmp_9_fu_181_p1 = esl_zext<64,3>(j_reg_126.read());
}

void multiply_row_col::thread_tmp_fu_160_p1() {
    tmp_fu_160_p1 = esl_zext<64,3>(i_reg_115.read());
}

void multiply_row_col::thread_z_idx_1_fu_219_p0() {
    z_idx_1_fu_219_p0 = z_idx_fu_36.read();
}

void multiply_row_col::thread_z_idx_1_fu_219_p2() {
    z_idx_1_fu_219_p2 = (!z_idx_1_fu_219_p0.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(z_idx_1_fu_219_p0.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void multiply_row_col::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond1_fu_148_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_169_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}

