#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_x "../tv/cdatafile/c.row_product.autotvin_x.dat"
#define AUTOTB_TVOUT_x "../tv/cdatafile/c.row_product.autotvout_x.dat"
// wrapc file define:
#define AUTOTB_TVIN_y "../tv/cdatafile/c.row_product.autotvin_y.dat"
#define AUTOTB_TVOUT_y "../tv/cdatafile/c.row_product.autotvout_y.dat"
// wrapc file define:
#define AUTOTB_TVOUT_return "../tv/cdatafile/c.row_product.autotvout_ap_return.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_x "../tv/rtldatafile/rtl.row_product.autotvout_x.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_y "../tv/rtldatafile/rtl.row_product.autotvout_y.dat"
#define AUTOTB_TVOUT_PC_return "../tv/rtldatafile/rtl.row_product.autotvout_ap_return.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  x_depth = 0;
  y_depth = 0;
  return_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{x " << x_depth << "}\n";
  total_list << "{y " << y_depth << "}\n";
  total_list << "{ap_return " << return_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int x_depth;
    int y_depth;
    int return_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s108__ { char data[264]; };
struct __cosim_s148__ { char data[328]; };
extern "C" void row_product_hw_stub_wrapper(__cosim_s108__*, __cosim_s108__*, __cosim_s148__*);

extern "C" void  apatb_row_product_hw(__cosim_s108__* ap_return, __cosim_s108__* __xlx_apatb_param_x, __cosim_s148__* __xlx_apatb_param_y) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_return);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<2112> > return_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "return");
  
            // push token into output port buffer
            if (AESL_token != "") {
              return_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {((long long*)ap_return)[0*33+0] = return_pc_buffer[0].range(63,0).to_int64();
((long long*)ap_return)[0*33+1] = return_pc_buffer[0].range(127,64).to_int64();
((long long*)ap_return)[0*33+2] = return_pc_buffer[0].range(191,128).to_int64();
((long long*)ap_return)[0*33+3] = return_pc_buffer[0].range(255,192).to_int64();
((long long*)ap_return)[0*33+4] = return_pc_buffer[0].range(319,256).to_int64();
((long long*)ap_return)[0*33+5] = return_pc_buffer[0].range(383,320).to_int64();
((long long*)ap_return)[0*33+6] = return_pc_buffer[0].range(447,384).to_int64();
((long long*)ap_return)[0*33+7] = return_pc_buffer[0].range(511,448).to_int64();
((long long*)ap_return)[0*33+8] = return_pc_buffer[0].range(575,512).to_int64();
((long long*)ap_return)[0*33+9] = return_pc_buffer[0].range(639,576).to_int64();
((long long*)ap_return)[0*33+10] = return_pc_buffer[0].range(703,640).to_int64();
((long long*)ap_return)[0*33+11] = return_pc_buffer[0].range(767,704).to_int64();
((long long*)ap_return)[0*33+12] = return_pc_buffer[0].range(831,768).to_int64();
((long long*)ap_return)[0*33+13] = return_pc_buffer[0].range(895,832).to_int64();
((long long*)ap_return)[0*33+14] = return_pc_buffer[0].range(959,896).to_int64();
((long long*)ap_return)[0*33+15] = return_pc_buffer[0].range(1023,960).to_int64();
((long long*)ap_return)[0*33+16] = return_pc_buffer[0].range(1087,1024).to_int64();
((long long*)ap_return)[0*33+17] = return_pc_buffer[0].range(1151,1088).to_int64();
((long long*)ap_return)[0*33+18] = return_pc_buffer[0].range(1215,1152).to_int64();
((long long*)ap_return)[0*33+19] = return_pc_buffer[0].range(1279,1216).to_int64();
((long long*)ap_return)[0*33+20] = return_pc_buffer[0].range(1343,1280).to_int64();
((long long*)ap_return)[0*33+21] = return_pc_buffer[0].range(1407,1344).to_int64();
((long long*)ap_return)[0*33+22] = return_pc_buffer[0].range(1471,1408).to_int64();
((long long*)ap_return)[0*33+23] = return_pc_buffer[0].range(1535,1472).to_int64();
((long long*)ap_return)[0*33+24] = return_pc_buffer[0].range(1599,1536).to_int64();
((long long*)ap_return)[0*33+25] = return_pc_buffer[0].range(1663,1600).to_int64();
((long long*)ap_return)[0*33+26] = return_pc_buffer[0].range(1727,1664).to_int64();
((long long*)ap_return)[0*33+27] = return_pc_buffer[0].range(1791,1728).to_int64();
((long long*)ap_return)[0*33+28] = return_pc_buffer[0].range(1855,1792).to_int64();
((long long*)ap_return)[0*33+29] = return_pc_buffer[0].range(1919,1856).to_int64();
((long long*)ap_return)[0*33+30] = return_pc_buffer[0].range(1983,1920).to_int64();
((long long*)ap_return)[0*33+31] = return_pc_buffer[0].range(2047,1984).to_int64();
((long long*)ap_return)[0*33+32] = return_pc_buffer[0].range(2111,2048).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//x
aesl_fh.touch(AUTOTB_TVIN_x);
aesl_fh.touch(AUTOTB_TVOUT_x);
//y
aesl_fh.touch(AUTOTB_TVIN_y);
aesl_fh.touch(AUTOTB_TVOUT_y);
CodeState = DUMP_INPUTS;
// print x Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data());
  {
    sc_bv<2112> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_x)[0*33+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_x)[0*33+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_x)[0*33+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_x)[0*33+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_x)[0*33+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_x)[0*33+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_x)[0*33+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_x)[0*33+7];
__xlx_tmp_lv.range(575,512) = ((long long*)__xlx_apatb_param_x)[0*33+8];
__xlx_tmp_lv.range(639,576) = ((long long*)__xlx_apatb_param_x)[0*33+9];
__xlx_tmp_lv.range(703,640) = ((long long*)__xlx_apatb_param_x)[0*33+10];
__xlx_tmp_lv.range(767,704) = ((long long*)__xlx_apatb_param_x)[0*33+11];
__xlx_tmp_lv.range(831,768) = ((long long*)__xlx_apatb_param_x)[0*33+12];
__xlx_tmp_lv.range(895,832) = ((long long*)__xlx_apatb_param_x)[0*33+13];
__xlx_tmp_lv.range(959,896) = ((long long*)__xlx_apatb_param_x)[0*33+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)__xlx_apatb_param_x)[0*33+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)__xlx_apatb_param_x)[0*33+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)__xlx_apatb_param_x)[0*33+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)__xlx_apatb_param_x)[0*33+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)__xlx_apatb_param_x)[0*33+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)__xlx_apatb_param_x)[0*33+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)__xlx_apatb_param_x)[0*33+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)__xlx_apatb_param_x)[0*33+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)__xlx_apatb_param_x)[0*33+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)__xlx_apatb_param_x)[0*33+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)__xlx_apatb_param_x)[0*33+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)__xlx_apatb_param_x)[0*33+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)__xlx_apatb_param_x)[0*33+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)__xlx_apatb_param_x)[0*33+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)__xlx_apatb_param_x)[0*33+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)__xlx_apatb_param_x)[0*33+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)__xlx_apatb_param_x)[0*33+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)__xlx_apatb_param_x)[0*33+32];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.x_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x, __xlx_sprintf_buffer.data());
}
// print y Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data());
  {
    sc_bv<2624> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_y)[0*41+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_y)[0*41+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_y)[0*41+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_y)[0*41+3];
__xlx_tmp_lv.range(319,256) = ((long long*)__xlx_apatb_param_y)[0*41+4];
__xlx_tmp_lv.range(383,320) = ((long long*)__xlx_apatb_param_y)[0*41+5];
__xlx_tmp_lv.range(447,384) = ((long long*)__xlx_apatb_param_y)[0*41+6];
__xlx_tmp_lv.range(511,448) = ((long long*)__xlx_apatb_param_y)[0*41+7];
__xlx_tmp_lv.range(575,512) = ((long long*)__xlx_apatb_param_y)[0*41+8];
__xlx_tmp_lv.range(639,576) = ((long long*)__xlx_apatb_param_y)[0*41+9];
__xlx_tmp_lv.range(703,640) = ((long long*)__xlx_apatb_param_y)[0*41+10];
__xlx_tmp_lv.range(767,704) = ((long long*)__xlx_apatb_param_y)[0*41+11];
__xlx_tmp_lv.range(831,768) = ((long long*)__xlx_apatb_param_y)[0*41+12];
__xlx_tmp_lv.range(895,832) = ((long long*)__xlx_apatb_param_y)[0*41+13];
__xlx_tmp_lv.range(959,896) = ((long long*)__xlx_apatb_param_y)[0*41+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)__xlx_apatb_param_y)[0*41+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)__xlx_apatb_param_y)[0*41+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)__xlx_apatb_param_y)[0*41+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)__xlx_apatb_param_y)[0*41+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)__xlx_apatb_param_y)[0*41+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)__xlx_apatb_param_y)[0*41+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)__xlx_apatb_param_y)[0*41+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)__xlx_apatb_param_y)[0*41+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)__xlx_apatb_param_y)[0*41+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)__xlx_apatb_param_y)[0*41+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)__xlx_apatb_param_y)[0*41+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)__xlx_apatb_param_y)[0*41+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)__xlx_apatb_param_y)[0*41+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)__xlx_apatb_param_y)[0*41+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)__xlx_apatb_param_y)[0*41+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)__xlx_apatb_param_y)[0*41+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)__xlx_apatb_param_y)[0*41+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)__xlx_apatb_param_y)[0*41+32];
__xlx_tmp_lv.range(2175,2112) = ((long long*)__xlx_apatb_param_y)[0*41+33];
__xlx_tmp_lv.range(2239,2176) = ((long long*)__xlx_apatb_param_y)[0*41+34];
__xlx_tmp_lv.range(2303,2240) = ((long long*)__xlx_apatb_param_y)[0*41+35];
__xlx_tmp_lv.range(2367,2304) = ((long long*)__xlx_apatb_param_y)[0*41+36];
__xlx_tmp_lv.range(2431,2368) = ((long long*)__xlx_apatb_param_y)[0*41+37];
__xlx_tmp_lv.range(2495,2432) = ((long long*)__xlx_apatb_param_y)[0*41+38];
__xlx_tmp_lv.range(2559,2496) = ((long long*)__xlx_apatb_param_y)[0*41+39];
__xlx_tmp_lv.range(2623,2560) = ((long long*)__xlx_apatb_param_y)[0*41+40];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.y_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
row_product_hw_stub_wrapper(ap_return, __xlx_apatb_param_x, __xlx_apatb_param_y);
CodeState = DUMP_OUTPUTS;
// print return Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
  sc_bv<2112> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)ap_return)[0*33+0];
__xlx_tmp_lv.range(127,64) = ((long long*)ap_return)[0*33+1];
__xlx_tmp_lv.range(191,128) = ((long long*)ap_return)[0*33+2];
__xlx_tmp_lv.range(255,192) = ((long long*)ap_return)[0*33+3];
__xlx_tmp_lv.range(319,256) = ((long long*)ap_return)[0*33+4];
__xlx_tmp_lv.range(383,320) = ((long long*)ap_return)[0*33+5];
__xlx_tmp_lv.range(447,384) = ((long long*)ap_return)[0*33+6];
__xlx_tmp_lv.range(511,448) = ((long long*)ap_return)[0*33+7];
__xlx_tmp_lv.range(575,512) = ((long long*)ap_return)[0*33+8];
__xlx_tmp_lv.range(639,576) = ((long long*)ap_return)[0*33+9];
__xlx_tmp_lv.range(703,640) = ((long long*)ap_return)[0*33+10];
__xlx_tmp_lv.range(767,704) = ((long long*)ap_return)[0*33+11];
__xlx_tmp_lv.range(831,768) = ((long long*)ap_return)[0*33+12];
__xlx_tmp_lv.range(895,832) = ((long long*)ap_return)[0*33+13];
__xlx_tmp_lv.range(959,896) = ((long long*)ap_return)[0*33+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)ap_return)[0*33+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)ap_return)[0*33+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)ap_return)[0*33+17];
__xlx_tmp_lv.range(1215,1152) = ((long long*)ap_return)[0*33+18];
__xlx_tmp_lv.range(1279,1216) = ((long long*)ap_return)[0*33+19];
__xlx_tmp_lv.range(1343,1280) = ((long long*)ap_return)[0*33+20];
__xlx_tmp_lv.range(1407,1344) = ((long long*)ap_return)[0*33+21];
__xlx_tmp_lv.range(1471,1408) = ((long long*)ap_return)[0*33+22];
__xlx_tmp_lv.range(1535,1472) = ((long long*)ap_return)[0*33+23];
__xlx_tmp_lv.range(1599,1536) = ((long long*)ap_return)[0*33+24];
__xlx_tmp_lv.range(1663,1600) = ((long long*)ap_return)[0*33+25];
__xlx_tmp_lv.range(1727,1664) = ((long long*)ap_return)[0*33+26];
__xlx_tmp_lv.range(1791,1728) = ((long long*)ap_return)[0*33+27];
__xlx_tmp_lv.range(1855,1792) = ((long long*)ap_return)[0*33+28];
__xlx_tmp_lv.range(1919,1856) = ((long long*)ap_return)[0*33+29];
__xlx_tmp_lv.range(1983,1920) = ((long long*)ap_return)[0*33+30];
__xlx_tmp_lv.range(2047,1984) = ((long long*)ap_return)[0*33+31];
__xlx_tmp_lv.range(2111,2048) = ((long long*)ap_return)[0*33+32];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data()); 
  
  tcl_file.set_num(1, &tcl_file.return_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_return, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
