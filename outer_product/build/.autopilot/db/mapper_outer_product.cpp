#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void outer_product(int*, int*, int*, int*, int*, int*, int*, int*, int*);
extern "C" void apatb_outer_product_hw(volatile void * __xlx_apatb_param_x_rowptr, volatile void * __xlx_apatb_param_x_colind, volatile void * __xlx_apatb_param_x_data, volatile void * __xlx_apatb_param_y_colptr, volatile void * __xlx_apatb_param_y_rowind, volatile void * __xlx_apatb_param_y_data, volatile void * __xlx_apatb_param_z_rowptr, volatile void * __xlx_apatb_param_z_colind, volatile void * __xlx_apatb_param_z_data) {
  // Collect __xlx_x_rowptr__tmp_vec
  vector<sc_bv<32> >__xlx_x_rowptr__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_x_rowptr__tmp_vec.push_back(((int*)__xlx_apatb_param_x_rowptr)[j]);
  }
  int __xlx_size_param_x_rowptr = 25;
  int __xlx_offset_param_x_rowptr = 0;
  int __xlx_offset_byte_param_x_rowptr = 0*4;
  int* __xlx_x_rowptr__input_buffer= new int[__xlx_x_rowptr__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_rowptr__tmp_vec.size(); ++i) {
    __xlx_x_rowptr__input_buffer[i] = __xlx_x_rowptr__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_x_colind__tmp_vec
  vector<sc_bv<32> >__xlx_x_colind__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_x_colind__tmp_vec.push_back(((int*)__xlx_apatb_param_x_colind)[j]);
  }
  int __xlx_size_param_x_colind = 25;
  int __xlx_offset_param_x_colind = 0;
  int __xlx_offset_byte_param_x_colind = 0*4;
  int* __xlx_x_colind__input_buffer= new int[__xlx_x_colind__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_colind__tmp_vec.size(); ++i) {
    __xlx_x_colind__input_buffer[i] = __xlx_x_colind__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_x_data__tmp_vec
  vector<sc_bv<32> >__xlx_x_data__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_x_data__tmp_vec.push_back(((int*)__xlx_apatb_param_x_data)[j]);
  }
  int __xlx_size_param_x_data = 25;
  int __xlx_offset_param_x_data = 0;
  int __xlx_offset_byte_param_x_data = 0*4;
  int* __xlx_x_data__input_buffer= new int[__xlx_x_data__tmp_vec.size()];
  for (int i = 0; i < __xlx_x_data__tmp_vec.size(); ++i) {
    __xlx_x_data__input_buffer[i] = __xlx_x_data__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_y_colptr__tmp_vec
  vector<sc_bv<32> >__xlx_y_colptr__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_y_colptr__tmp_vec.push_back(((int*)__xlx_apatb_param_y_colptr)[j]);
  }
  int __xlx_size_param_y_colptr = 25;
  int __xlx_offset_param_y_colptr = 0;
  int __xlx_offset_byte_param_y_colptr = 0*4;
  int* __xlx_y_colptr__input_buffer= new int[__xlx_y_colptr__tmp_vec.size()];
  for (int i = 0; i < __xlx_y_colptr__tmp_vec.size(); ++i) {
    __xlx_y_colptr__input_buffer[i] = __xlx_y_colptr__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_y_rowind__tmp_vec
  vector<sc_bv<32> >__xlx_y_rowind__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_y_rowind__tmp_vec.push_back(((int*)__xlx_apatb_param_y_rowind)[j]);
  }
  int __xlx_size_param_y_rowind = 25;
  int __xlx_offset_param_y_rowind = 0;
  int __xlx_offset_byte_param_y_rowind = 0*4;
  int* __xlx_y_rowind__input_buffer= new int[__xlx_y_rowind__tmp_vec.size()];
  for (int i = 0; i < __xlx_y_rowind__tmp_vec.size(); ++i) {
    __xlx_y_rowind__input_buffer[i] = __xlx_y_rowind__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_y_data__tmp_vec
  vector<sc_bv<32> >__xlx_y_data__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_y_data__tmp_vec.push_back(((int*)__xlx_apatb_param_y_data)[j]);
  }
  int __xlx_size_param_y_data = 25;
  int __xlx_offset_param_y_data = 0;
  int __xlx_offset_byte_param_y_data = 0*4;
  int* __xlx_y_data__input_buffer= new int[__xlx_y_data__tmp_vec.size()];
  for (int i = 0; i < __xlx_y_data__tmp_vec.size(); ++i) {
    __xlx_y_data__input_buffer[i] = __xlx_y_data__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_z_rowptr__tmp_vec
  vector<sc_bv<32> >__xlx_z_rowptr__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_z_rowptr__tmp_vec.push_back(((int*)__xlx_apatb_param_z_rowptr)[j]);
  }
  int __xlx_size_param_z_rowptr = 25;
  int __xlx_offset_param_z_rowptr = 0;
  int __xlx_offset_byte_param_z_rowptr = 0*4;
  int* __xlx_z_rowptr__input_buffer= new int[__xlx_z_rowptr__tmp_vec.size()];
  for (int i = 0; i < __xlx_z_rowptr__tmp_vec.size(); ++i) {
    __xlx_z_rowptr__input_buffer[i] = __xlx_z_rowptr__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_z_colind__tmp_vec
  vector<sc_bv<32> >__xlx_z_colind__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_z_colind__tmp_vec.push_back(((int*)__xlx_apatb_param_z_colind)[j]);
  }
  int __xlx_size_param_z_colind = 25;
  int __xlx_offset_param_z_colind = 0;
  int __xlx_offset_byte_param_z_colind = 0*4;
  int* __xlx_z_colind__input_buffer= new int[__xlx_z_colind__tmp_vec.size()];
  for (int i = 0; i < __xlx_z_colind__tmp_vec.size(); ++i) {
    __xlx_z_colind__input_buffer[i] = __xlx_z_colind__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_z_data__tmp_vec
  vector<sc_bv<32> >__xlx_z_data__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_z_data__tmp_vec.push_back(((int*)__xlx_apatb_param_z_data)[j]);
  }
  int __xlx_size_param_z_data = 25;
  int __xlx_offset_param_z_data = 0;
  int __xlx_offset_byte_param_z_data = 0*4;
  int* __xlx_z_data__input_buffer= new int[__xlx_z_data__tmp_vec.size()];
  for (int i = 0; i < __xlx_z_data__tmp_vec.size(); ++i) {
    __xlx_z_data__input_buffer[i] = __xlx_z_data__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  outer_product(__xlx_x_rowptr__input_buffer, __xlx_x_colind__input_buffer, __xlx_x_data__input_buffer, __xlx_y_colptr__input_buffer, __xlx_y_rowind__input_buffer, __xlx_y_data__input_buffer, __xlx_z_rowptr__input_buffer, __xlx_z_colind__input_buffer, __xlx_z_data__input_buffer);
// print __xlx_apatb_param_x_rowptr
  sc_bv<32>*__xlx_x_rowptr_output_buffer = new sc_bv<32>[__xlx_size_param_x_rowptr];
  for (int i = 0; i < __xlx_size_param_x_rowptr; ++i) {
    __xlx_x_rowptr_output_buffer[i] = __xlx_x_rowptr__input_buffer[i+__xlx_offset_param_x_rowptr];
  }
  for (int i = 0; i < __xlx_size_param_x_rowptr; ++i) {
    ((int*)__xlx_apatb_param_x_rowptr)[i] = __xlx_x_rowptr_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_x_colind
  sc_bv<32>*__xlx_x_colind_output_buffer = new sc_bv<32>[__xlx_size_param_x_colind];
  for (int i = 0; i < __xlx_size_param_x_colind; ++i) {
    __xlx_x_colind_output_buffer[i] = __xlx_x_colind__input_buffer[i+__xlx_offset_param_x_colind];
  }
  for (int i = 0; i < __xlx_size_param_x_colind; ++i) {
    ((int*)__xlx_apatb_param_x_colind)[i] = __xlx_x_colind_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_x_data
  sc_bv<32>*__xlx_x_data_output_buffer = new sc_bv<32>[__xlx_size_param_x_data];
  for (int i = 0; i < __xlx_size_param_x_data; ++i) {
    __xlx_x_data_output_buffer[i] = __xlx_x_data__input_buffer[i+__xlx_offset_param_x_data];
  }
  for (int i = 0; i < __xlx_size_param_x_data; ++i) {
    ((int*)__xlx_apatb_param_x_data)[i] = __xlx_x_data_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_y_colptr
  sc_bv<32>*__xlx_y_colptr_output_buffer = new sc_bv<32>[__xlx_size_param_y_colptr];
  for (int i = 0; i < __xlx_size_param_y_colptr; ++i) {
    __xlx_y_colptr_output_buffer[i] = __xlx_y_colptr__input_buffer[i+__xlx_offset_param_y_colptr];
  }
  for (int i = 0; i < __xlx_size_param_y_colptr; ++i) {
    ((int*)__xlx_apatb_param_y_colptr)[i] = __xlx_y_colptr_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_y_rowind
  sc_bv<32>*__xlx_y_rowind_output_buffer = new sc_bv<32>[__xlx_size_param_y_rowind];
  for (int i = 0; i < __xlx_size_param_y_rowind; ++i) {
    __xlx_y_rowind_output_buffer[i] = __xlx_y_rowind__input_buffer[i+__xlx_offset_param_y_rowind];
  }
  for (int i = 0; i < __xlx_size_param_y_rowind; ++i) {
    ((int*)__xlx_apatb_param_y_rowind)[i] = __xlx_y_rowind_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_y_data
  sc_bv<32>*__xlx_y_data_output_buffer = new sc_bv<32>[__xlx_size_param_y_data];
  for (int i = 0; i < __xlx_size_param_y_data; ++i) {
    __xlx_y_data_output_buffer[i] = __xlx_y_data__input_buffer[i+__xlx_offset_param_y_data];
  }
  for (int i = 0; i < __xlx_size_param_y_data; ++i) {
    ((int*)__xlx_apatb_param_y_data)[i] = __xlx_y_data_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_z_rowptr
  sc_bv<32>*__xlx_z_rowptr_output_buffer = new sc_bv<32>[__xlx_size_param_z_rowptr];
  for (int i = 0; i < __xlx_size_param_z_rowptr; ++i) {
    __xlx_z_rowptr_output_buffer[i] = __xlx_z_rowptr__input_buffer[i+__xlx_offset_param_z_rowptr];
  }
  for (int i = 0; i < __xlx_size_param_z_rowptr; ++i) {
    ((int*)__xlx_apatb_param_z_rowptr)[i] = __xlx_z_rowptr_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_z_colind
  sc_bv<32>*__xlx_z_colind_output_buffer = new sc_bv<32>[__xlx_size_param_z_colind];
  for (int i = 0; i < __xlx_size_param_z_colind; ++i) {
    __xlx_z_colind_output_buffer[i] = __xlx_z_colind__input_buffer[i+__xlx_offset_param_z_colind];
  }
  for (int i = 0; i < __xlx_size_param_z_colind; ++i) {
    ((int*)__xlx_apatb_param_z_colind)[i] = __xlx_z_colind_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_z_data
  sc_bv<32>*__xlx_z_data_output_buffer = new sc_bv<32>[__xlx_size_param_z_data];
  for (int i = 0; i < __xlx_size_param_z_data; ++i) {
    __xlx_z_data_output_buffer[i] = __xlx_z_data__input_buffer[i+__xlx_offset_param_z_data];
  }
  for (int i = 0; i < __xlx_size_param_z_data; ++i) {
    ((int*)__xlx_apatb_param_z_data)[i] = __xlx_z_data_output_buffer[i].to_uint64();
  }
}
