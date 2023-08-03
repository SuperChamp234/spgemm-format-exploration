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
#define AUTOTB_TVIN_x_rowptr "../tv/cdatafile/c.row_product.autotvin_x_rowptr.dat"
#define AUTOTB_TVOUT_x_rowptr "../tv/cdatafile/c.row_product.autotvout_x_rowptr.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_colind "../tv/cdatafile/c.row_product.autotvin_x_colind.dat"
#define AUTOTB_TVOUT_x_colind "../tv/cdatafile/c.row_product.autotvout_x_colind.dat"
// wrapc file define:
#define AUTOTB_TVIN_x_data "../tv/cdatafile/c.row_product.autotvin_x_data.dat"
#define AUTOTB_TVOUT_x_data "../tv/cdatafile/c.row_product.autotvout_x_data.dat"
// wrapc file define:
#define AUTOTB_TVIN_y_rowptr "../tv/cdatafile/c.row_product.autotvin_y_rowptr.dat"
#define AUTOTB_TVOUT_y_rowptr "../tv/cdatafile/c.row_product.autotvout_y_rowptr.dat"
// wrapc file define:
#define AUTOTB_TVIN_y_colind "../tv/cdatafile/c.row_product.autotvin_y_colind.dat"
#define AUTOTB_TVOUT_y_colind "../tv/cdatafile/c.row_product.autotvout_y_colind.dat"
// wrapc file define:
#define AUTOTB_TVIN_y_data "../tv/cdatafile/c.row_product.autotvin_y_data.dat"
#define AUTOTB_TVOUT_y_data "../tv/cdatafile/c.row_product.autotvout_y_data.dat"
// wrapc file define:
#define AUTOTB_TVIN_z_rowptr "../tv/cdatafile/c.row_product.autotvin_z_rowptr.dat"
#define AUTOTB_TVOUT_z_rowptr "../tv/cdatafile/c.row_product.autotvout_z_rowptr.dat"
// wrapc file define:
#define AUTOTB_TVIN_z_colind "../tv/cdatafile/c.row_product.autotvin_z_colind.dat"
#define AUTOTB_TVOUT_z_colind "../tv/cdatafile/c.row_product.autotvout_z_colind.dat"
// wrapc file define:
#define AUTOTB_TVIN_z_data "../tv/cdatafile/c.row_product.autotvin_z_data.dat"
#define AUTOTB_TVOUT_z_data "../tv/cdatafile/c.row_product.autotvout_z_data.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_x_rowptr "../tv/rtldatafile/rtl.row_product.autotvout_x_rowptr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_colind "../tv/rtldatafile/rtl.row_product.autotvout_x_colind.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_x_data "../tv/rtldatafile/rtl.row_product.autotvout_x_data.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_y_rowptr "../tv/rtldatafile/rtl.row_product.autotvout_y_rowptr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_y_colind "../tv/rtldatafile/rtl.row_product.autotvout_y_colind.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_y_data "../tv/rtldatafile/rtl.row_product.autotvout_y_data.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_z_rowptr "../tv/rtldatafile/rtl.row_product.autotvout_z_rowptr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_z_colind "../tv/rtldatafile/rtl.row_product.autotvout_z_colind.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_z_data "../tv/rtldatafile/rtl.row_product.autotvout_z_data.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  x_rowptr_depth = 0;
  x_colind_depth = 0;
  x_data_depth = 0;
  y_rowptr_depth = 0;
  y_colind_depth = 0;
  y_data_depth = 0;
  z_rowptr_depth = 0;
  z_colind_depth = 0;
  z_data_depth = 0;
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
  total_list << "{x_rowptr " << x_rowptr_depth << "}\n";
  total_list << "{x_colind " << x_colind_depth << "}\n";
  total_list << "{x_data " << x_data_depth << "}\n";
  total_list << "{y_rowptr " << y_rowptr_depth << "}\n";
  total_list << "{y_colind " << y_colind_depth << "}\n";
  total_list << "{y_data " << y_data_depth << "}\n";
  total_list << "{z_rowptr " << z_rowptr_depth << "}\n";
  total_list << "{z_colind " << z_colind_depth << "}\n";
  total_list << "{z_data " << z_data_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int x_rowptr_depth;
    int x_colind_depth;
    int x_data_depth;
    int y_rowptr_depth;
    int y_colind_depth;
    int y_data_depth;
    int z_rowptr_depth;
    int z_colind_depth;
    int z_data_depth;
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
extern "C" void row_product_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_row_product_hw(volatile void * __xlx_apatb_param_x_rowptr, volatile void * __xlx_apatb_param_x_colind, volatile void * __xlx_apatb_param_x_data, volatile void * __xlx_apatb_param_y_rowptr, volatile void * __xlx_apatb_param_y_colind, volatile void * __xlx_apatb_param_y_data, volatile void * __xlx_apatb_param_z_rowptr, volatile void * __xlx_apatb_param_z_colind, volatile void * __xlx_apatb_param_z_data) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_z_rowptr);
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
          std::vector<sc_bv<32> > z_rowptr_pc_buffer(1024);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "z_rowptr");
  
            // push token into output port buffer
            if (AESL_token != "") {
              z_rowptr_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_z_rowptr)[j] = z_rowptr_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_z_colind);
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
          std::vector<sc_bv<32> > z_colind_pc_buffer(1024);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "z_colind");
  
            // push token into output port buffer
            if (AESL_token != "") {
              z_colind_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_z_colind)[j] = z_colind_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_z_data);
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
          std::vector<sc_bv<32> > z_data_pc_buffer(1024);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "z_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              z_data_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1024; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_z_data)[j] = z_data_pc_buffer[i].to_int64();
          }}}
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
//x_rowptr
aesl_fh.touch(AUTOTB_TVIN_x_rowptr);
aesl_fh.touch(AUTOTB_TVOUT_x_rowptr);
//x_colind
aesl_fh.touch(AUTOTB_TVIN_x_colind);
aesl_fh.touch(AUTOTB_TVOUT_x_colind);
//x_data
aesl_fh.touch(AUTOTB_TVIN_x_data);
aesl_fh.touch(AUTOTB_TVOUT_x_data);
//y_rowptr
aesl_fh.touch(AUTOTB_TVIN_y_rowptr);
aesl_fh.touch(AUTOTB_TVOUT_y_rowptr);
//y_colind
aesl_fh.touch(AUTOTB_TVIN_y_colind);
aesl_fh.touch(AUTOTB_TVOUT_y_colind);
//y_data
aesl_fh.touch(AUTOTB_TVIN_y_data);
aesl_fh.touch(AUTOTB_TVOUT_y_data);
//z_rowptr
aesl_fh.touch(AUTOTB_TVIN_z_rowptr);
aesl_fh.touch(AUTOTB_TVOUT_z_rowptr);
//z_colind
aesl_fh.touch(AUTOTB_TVIN_z_colind);
aesl_fh.touch(AUTOTB_TVOUT_z_colind);
//z_data
aesl_fh.touch(AUTOTB_TVIN_z_data);
aesl_fh.touch(AUTOTB_TVOUT_z_data);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_x_rowptr = 0;
// print x_rowptr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_rowptr, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_rowptr = 0*4;
  if (__xlx_apatb_param_x_rowptr) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_rowptr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_x_rowptr, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.x_rowptr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_rowptr, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_colind = 0;
// print x_colind Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_colind, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_colind = 0*4;
  if (__xlx_apatb_param_x_colind) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_colind)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_x_colind, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.x_colind_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_colind, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_x_data = 0;
// print x_data Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_x_data, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_x_data = 0*4;
  if (__xlx_apatb_param_x_data) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_x_data)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_x_data, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.x_data_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_x_data, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_y_rowptr = 0;
// print y_rowptr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y_rowptr, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_y_rowptr = 0*4;
  if (__xlx_apatb_param_y_rowptr) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_y_rowptr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_y_rowptr, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.y_rowptr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y_rowptr, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_y_colind = 0;
// print y_colind Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y_colind, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_y_colind = 0*4;
  if (__xlx_apatb_param_y_colind) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_y_colind)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_y_colind, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.y_colind_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y_colind, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_y_data = 0;
// print y_data Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_y_data, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_y_data = 0*4;
  if (__xlx_apatb_param_y_data) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_y_data)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_y_data, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.y_data_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_y_data, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_z_rowptr = 0;
// print z_rowptr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_z_rowptr, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_rowptr = 0*4;
  if (__xlx_apatb_param_z_rowptr) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_rowptr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_z_rowptr, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_rowptr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_z_rowptr, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_z_colind = 0;
// print z_colind Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_z_colind, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_colind = 0*4;
  if (__xlx_apatb_param_z_colind) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_colind)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_z_colind, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_colind_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_z_colind, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_z_data = 0;
// print z_data Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_z_data, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_data = 0*4;
  if (__xlx_apatb_param_z_data) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_data)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_z_data, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_data_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_z_data, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
row_product_hw_stub_wrapper(__xlx_apatb_param_x_rowptr, __xlx_apatb_param_x_colind, __xlx_apatb_param_x_data, __xlx_apatb_param_y_rowptr, __xlx_apatb_param_y_colind, __xlx_apatb_param_y_data, __xlx_apatb_param_z_rowptr, __xlx_apatb_param_z_colind, __xlx_apatb_param_z_data);
CodeState = DUMP_OUTPUTS;
// print z_rowptr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_z_rowptr, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_rowptr = 0*4;
  if (__xlx_apatb_param_z_rowptr) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_rowptr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_z_rowptr, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_rowptr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_z_rowptr, __xlx_sprintf_buffer.data());
}
// print z_colind Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_z_colind, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_colind = 0*4;
  if (__xlx_apatb_param_z_colind) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_colind)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_z_colind, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_colind_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_z_colind, __xlx_sprintf_buffer.data());
}
// print z_data Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_z_data, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_z_data = 0*4;
  if (__xlx_apatb_param_z_data) {
    for (int j = 0  - 0, e = 1024 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_z_data)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_z_data, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1024, &tcl_file.z_data_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_z_data, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
