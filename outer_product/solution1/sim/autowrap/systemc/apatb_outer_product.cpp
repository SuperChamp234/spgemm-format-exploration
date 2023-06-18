// ==============================================================
// File generated on Sun Jun 18 00:47:55 IST 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

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


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct csc_t {
        int colptr[6];
        int rowind[20];
        ap_fixed<32, 16, (ap_q_mode) 5, (ap_o_mode)3, 0> data[20];
       } csc_t;

          typedef struct csr_t {
              int rowptr[6];
              int colind[20];
              ap_fixed<32, 16, (ap_q_mode) 5, (ap_o_mode)3, 0> data[20];
             } csr_t;

                typedef struct csr_out_t {
                    int rowptr[5];
                    int colind[20];
                    ap_fixed<32, 16, (ap_q_mode) 5, (ap_o_mode)3, 0> data[20];
                   } csr_out_t;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "agg_result_rowptr"
#define AUTOTB_TVIN_agg_result_rowptr  "../tv/cdatafile/c.outer_product.autotvin_agg_result_rowptr.dat"
#define AUTOTB_TVOUT_agg_result_rowptr  "../tv/cdatafile/c.outer_product.autotvout_agg_result_rowptr.dat"
// wrapc file define: "agg_result_colind"
#define AUTOTB_TVIN_agg_result_colind  "../tv/cdatafile/c.outer_product.autotvin_agg_result_colind.dat"
#define AUTOTB_TVOUT_agg_result_colind  "../tv/cdatafile/c.outer_product.autotvout_agg_result_colind.dat"
// wrapc file define: "agg_result_data_V"
#define AUTOTB_TVIN_agg_result_data_V  "../tv/cdatafile/c.outer_product.autotvin_agg_result_data_V.dat"
#define AUTOTB_TVOUT_agg_result_data_V  "../tv/cdatafile/c.outer_product.autotvout_agg_result_data_V.dat"
// wrapc file define: "x_csc_colptr"
#define AUTOTB_TVIN_x_csc_colptr  "../tv/cdatafile/c.outer_product.autotvin_x_csc_colptr.dat"
// wrapc file define: "x_csc_rowind"
#define AUTOTB_TVIN_x_csc_rowind  "../tv/cdatafile/c.outer_product.autotvin_x_csc_rowind.dat"
// wrapc file define: "x_csc_data_V"
#define AUTOTB_TVIN_x_csc_data_V  "../tv/cdatafile/c.outer_product.autotvin_x_csc_data_V.dat"
// wrapc file define: "y_csr_rowptr"
#define AUTOTB_TVIN_y_csr_rowptr  "../tv/cdatafile/c.outer_product.autotvin_y_csr_rowptr.dat"
// wrapc file define: "y_csr_colind"
#define AUTOTB_TVIN_y_csr_colind  "../tv/cdatafile/c.outer_product.autotvin_y_csr_colind.dat"
// wrapc file define: "y_csr_data_V"
#define AUTOTB_TVIN_y_csr_data_V  "../tv/cdatafile/c.outer_product.autotvin_y_csr_data_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "agg_result_rowptr"
#define AUTOTB_TVOUT_PC_agg_result_rowptr  "../tv/rtldatafile/rtl.outer_product.autotvout_agg_result_rowptr.dat"
// tvout file define: "agg_result_colind"
#define AUTOTB_TVOUT_PC_agg_result_colind  "../tv/rtldatafile/rtl.outer_product.autotvout_agg_result_colind.dat"
// tvout file define: "agg_result_data_V"
#define AUTOTB_TVOUT_PC_agg_result_data_V  "../tv/rtldatafile/rtl.outer_product.autotvout_agg_result_data_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			agg_result_rowptr_depth = 0;
			agg_result_colind_depth = 0;
			agg_result_data_V_depth = 0;
			x_csc_colptr_depth = 0;
			x_csc_rowind_depth = 0;
			x_csc_data_V_depth = 0;
			y_csr_rowptr_depth = 0;
			y_csr_colind_depth = 0;
			y_csr_data_V_depth = 0;
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
			total_list << "{agg_result_rowptr " << agg_result_rowptr_depth << "}\n";
			total_list << "{agg_result_colind " << agg_result_colind_depth << "}\n";
			total_list << "{agg_result_data_V " << agg_result_data_V_depth << "}\n";
			total_list << "{x_csc_colptr " << x_csc_colptr_depth << "}\n";
			total_list << "{x_csc_rowind " << x_csc_rowind_depth << "}\n";
			total_list << "{x_csc_data_V " << x_csc_data_V_depth << "}\n";
			total_list << "{y_csr_rowptr " << y_csr_rowptr_depth << "}\n";
			total_list << "{y_csr_colind " << y_csr_colind_depth << "}\n";
			total_list << "{y_csr_data_V " << y_csr_data_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int agg_result_rowptr_depth;
		int agg_result_colind_depth;
		int agg_result_data_V_depth;
		int x_csc_colptr_depth;
		int x_csc_rowind_depth;
		int x_csc_data_V_depth;
		int y_csr_rowptr_depth;
		int y_csr_colind_depth;
		int y_csr_data_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern csr_out_t outer_product (
csc_t x_csc,
csr_t y_csr);

csr_out_t AESL_WRAP_outer_product (
csc_t x_csc,
csr_t y_csr)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		csr_out_t AESL_return;

		// output port post check: "agg_result_rowptr"
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_rowptr, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_rowptr, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_rowptr, AESL_token); // data

			sc_bv<32> *agg_result_rowptr_pc_buffer = new sc_bv<32>[5];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_rowptr', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_rowptr', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					agg_result_rowptr_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_rowptr, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_agg_result_rowptr))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: agg_result_rowptr
				{
					// bitslice(31, 0)
					// {
						// celement: agg.result.rowptr(31, 0)
						// {
							sc_lv<32>* agg_result_rowptr_lv0_0_4_1 = new sc_lv<32>[5];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.rowptr(31, 0)
						{
							// carray: (0) => (4) @ (1)
							for (int i_0 = 0; i_0 <= 4; i_0 += 1)
							{
								if (&(AESL_return.rowptr[0]) != NULL) // check the null address if the c port is array or others
								{
									agg_result_rowptr_lv0_0_4_1[hls_map_index].range(31, 0) = sc_bv<32>(agg_result_rowptr_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.rowptr(31, 0)
						{
							// carray: (0) => (4) @ (1)
							for (int i_0 = 0; i_0 <= 4; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AESL_return.rowptr[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AESL_return.rowptr[0]
								// output_left_conversion : AESL_return.rowptr[i_0]
								// output_type_conversion : (agg_result_rowptr_lv0_0_4_1[hls_map_index]).to_uint64()
								if (&(AESL_return.rowptr[0]) != NULL) // check the null address if the c port is array or others
								{
									AESL_return.rowptr[i_0] = (agg_result_rowptr_lv0_0_4_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] agg_result_rowptr_pc_buffer;
		}

		// output port post check: "agg_result_colind"
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_colind, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_colind, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_colind, AESL_token); // data

			sc_bv<32> *agg_result_colind_pc_buffer = new sc_bv<32>[20];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_colind', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_colind', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					agg_result_colind_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_colind, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_agg_result_colind))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: agg_result_colind
				{
					// bitslice(31, 0)
					// {
						// celement: agg.result.colind(31, 0)
						// {
							sc_lv<32>* agg_result_colind_lv0_0_19_1 = new sc_lv<32>[20];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.colind(31, 0)
						{
							// carray: (0) => (19) @ (1)
							for (int i_0 = 0; i_0 <= 19; i_0 += 1)
							{
								if (&(AESL_return.colind[0]) != NULL) // check the null address if the c port is array or others
								{
									agg_result_colind_lv0_0_19_1[hls_map_index].range(31, 0) = sc_bv<32>(agg_result_colind_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.colind(31, 0)
						{
							// carray: (0) => (19) @ (1)
							for (int i_0 = 0; i_0 <= 19; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AESL_return.colind[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AESL_return.colind[0]
								// output_left_conversion : AESL_return.colind[i_0]
								// output_type_conversion : (agg_result_colind_lv0_0_19_1[hls_map_index]).to_uint64()
								if (&(AESL_return.colind[0]) != NULL) // check the null address if the c port is array or others
								{
									AESL_return.colind[i_0] = (agg_result_colind_lv0_0_19_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] agg_result_colind_pc_buffer;
		}

		// output port post check: "agg_result_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data_V, AESL_token); // data

			sc_bv<32> *agg_result_data_V_pc_buffer = new sc_bv<32>[20];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					agg_result_data_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_agg_result_data_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: agg_result_data_V
				{
					// bitslice(31, 0)
					// {
						// celement: agg.result.data.V(31, 0)
						// {
							sc_lv<32>* agg_result_data_V_lv0_0_19_1 = new sc_lv<32>[20];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.data.V(31, 0)
						{
							// carray: (0) => (19) @ (1)
							for (int i_0 = 0; i_0 <= 19; i_0 += 1)
							{
								if (&(AESL_return.data[0]) != NULL) // check the null address if the c port is array or others
								{
									agg_result_data_V_lv0_0_19_1[hls_map_index].range(31, 0) = sc_bv<32>(agg_result_data_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.data.V(31, 0)
						{
							// carray: (0) => (19) @ (1)
							for (int i_0 = 0; i_0 <= 19; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AESL_return.data[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AESL_return.data[0]
								// output_left_conversion : (AESL_return.data[i_0]).range()
								// output_type_conversion : (agg_result_data_V_lv0_0_19_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(AESL_return.data[0]) != NULL) // check the null address if the c port is array or others
								{
									(AESL_return.data[i_0]).range() = (agg_result_data_V_lv0_0_19_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] agg_result_data_V_pc_buffer;
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "agg_result_rowptr"
		char* tvin_agg_result_rowptr = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_agg_result_rowptr);
		char* tvout_agg_result_rowptr = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_agg_result_rowptr);

		// "agg_result_colind"
		char* tvin_agg_result_colind = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_agg_result_colind);
		char* tvout_agg_result_colind = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_agg_result_colind);

		// "agg_result_data_V"
		char* tvin_agg_result_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_agg_result_data_V);
		char* tvout_agg_result_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_agg_result_data_V);

		// "x_csc_colptr"
		char* tvin_x_csc_colptr = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x_csc_colptr);

		// "x_csc_rowind"
		char* tvin_x_csc_rowind = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x_csc_rowind);

		// "x_csc_data_V"
		char* tvin_x_csc_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_x_csc_data_V);

		// "y_csr_rowptr"
		char* tvin_y_csr_rowptr = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y_csr_rowptr);

		// "y_csr_colind"
		char* tvin_y_csr_colind = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y_csr_colind);

		// "y_csr_data_V"
		char* tvin_y_csr_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y_csr_data_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_x_csc_colptr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x_csc_colptr, tvin_x_csc_colptr);

		sc_bv<32>* x_csc_colptr_tvin_wrapc_buffer = new sc_bv<32>[6];

		// RTL Name: x_csc_colptr
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: x_csc.colptr(31, 0)
				{
					// carray: (0) => (5) @ (1)
					for (int i_0 = 0; i_0 <= 5; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : x_csc.colptr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : x_csc.colptr[0]
						// regulate_c_name       : x_csc_colptr
						// input_type_conversion : x_csc.colptr[i_0]
						if (&(x_csc.colptr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x_csc_colptr_tmp_mem;
							x_csc_colptr_tmp_mem = x_csc.colptr[i_0];
							x_csc_colptr_tvin_wrapc_buffer[hls_map_index].range(31, 0) = x_csc_colptr_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 6; i++)
		{
			sprintf(tvin_x_csc_colptr, "%s\n", (x_csc_colptr_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x_csc_colptr, tvin_x_csc_colptr);
		}

		tcl_file.set_num(6, &tcl_file.x_csc_colptr_depth);
		sprintf(tvin_x_csc_colptr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x_csc_colptr, tvin_x_csc_colptr);

		// release memory allocation
		delete [] x_csc_colptr_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_x_csc_rowind, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x_csc_rowind, tvin_x_csc_rowind);

		sc_bv<32>* x_csc_rowind_tvin_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: x_csc_rowind
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: x_csc.rowind(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : x_csc.rowind[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : x_csc.rowind[0]
						// regulate_c_name       : x_csc_rowind
						// input_type_conversion : x_csc.rowind[i_0]
						if (&(x_csc.rowind[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x_csc_rowind_tmp_mem;
							x_csc_rowind_tmp_mem = x_csc.rowind[i_0];
							x_csc_rowind_tvin_wrapc_buffer[hls_map_index].range(31, 0) = x_csc_rowind_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvin_x_csc_rowind, "%s\n", (x_csc_rowind_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x_csc_rowind, tvin_x_csc_rowind);
		}

		tcl_file.set_num(20, &tcl_file.x_csc_rowind_depth);
		sprintf(tvin_x_csc_rowind, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x_csc_rowind, tvin_x_csc_rowind);

		// release memory allocation
		delete [] x_csc_rowind_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_x_csc_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_x_csc_data_V, tvin_x_csc_data_V);

		sc_bv<32>* x_csc_data_V_tvin_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: x_csc_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: x_csc.data.V(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : x_csc.data[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : x_csc.data[0]
						// regulate_c_name       : x_csc_data_V
						// input_type_conversion : (x_csc.data[i_0]).range().to_string(SC_BIN).c_str()
						if (&(x_csc.data[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> x_csc_data_V_tmp_mem;
							x_csc_data_V_tmp_mem = (x_csc.data[i_0]).range().to_string(SC_BIN).c_str();
							x_csc_data_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = x_csc_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvin_x_csc_data_V, "%s\n", (x_csc_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_x_csc_data_V, tvin_x_csc_data_V);
		}

		tcl_file.set_num(20, &tcl_file.x_csc_data_V_depth);
		sprintf(tvin_x_csc_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_x_csc_data_V, tvin_x_csc_data_V);

		// release memory allocation
		delete [] x_csc_data_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_y_csr_rowptr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y_csr_rowptr, tvin_y_csr_rowptr);

		sc_bv<32>* y_csr_rowptr_tvin_wrapc_buffer = new sc_bv<32>[6];

		// RTL Name: y_csr_rowptr
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: y_csr.rowptr(31, 0)
				{
					// carray: (0) => (5) @ (1)
					for (int i_0 = 0; i_0 <= 5; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : y_csr.rowptr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : y_csr.rowptr[0]
						// regulate_c_name       : y_csr_rowptr
						// input_type_conversion : y_csr.rowptr[i_0]
						if (&(y_csr.rowptr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y_csr_rowptr_tmp_mem;
							y_csr_rowptr_tmp_mem = y_csr.rowptr[i_0];
							y_csr_rowptr_tvin_wrapc_buffer[hls_map_index].range(31, 0) = y_csr_rowptr_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 6; i++)
		{
			sprintf(tvin_y_csr_rowptr, "%s\n", (y_csr_rowptr_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y_csr_rowptr, tvin_y_csr_rowptr);
		}

		tcl_file.set_num(6, &tcl_file.y_csr_rowptr_depth);
		sprintf(tvin_y_csr_rowptr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y_csr_rowptr, tvin_y_csr_rowptr);

		// release memory allocation
		delete [] y_csr_rowptr_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_y_csr_colind, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y_csr_colind, tvin_y_csr_colind);

		sc_bv<32>* y_csr_colind_tvin_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: y_csr_colind
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: y_csr.colind(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : y_csr.colind[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : y_csr.colind[0]
						// regulate_c_name       : y_csr_colind
						// input_type_conversion : y_csr.colind[i_0]
						if (&(y_csr.colind[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y_csr_colind_tmp_mem;
							y_csr_colind_tmp_mem = y_csr.colind[i_0];
							y_csr_colind_tvin_wrapc_buffer[hls_map_index].range(31, 0) = y_csr_colind_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvin_y_csr_colind, "%s\n", (y_csr_colind_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y_csr_colind, tvin_y_csr_colind);
		}

		tcl_file.set_num(20, &tcl_file.y_csr_colind_depth);
		sprintf(tvin_y_csr_colind, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y_csr_colind, tvin_y_csr_colind);

		// release memory allocation
		delete [] y_csr_colind_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_y_csr_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y_csr_data_V, tvin_y_csr_data_V);

		sc_bv<32>* y_csr_data_V_tvin_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: y_csr_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: y_csr.data.V(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : y_csr.data[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : y_csr.data[0]
						// regulate_c_name       : y_csr_data_V
						// input_type_conversion : (y_csr.data[i_0]).range().to_string(SC_BIN).c_str()
						if (&(y_csr.data[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y_csr_data_V_tmp_mem;
							y_csr_data_V_tmp_mem = (y_csr.data[i_0]).range().to_string(SC_BIN).c_str();
							y_csr_data_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = y_csr_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvin_y_csr_data_V, "%s\n", (y_csr_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y_csr_data_V, tvin_y_csr_data_V);
		}

		tcl_file.set_num(20, &tcl_file.y_csr_data_V_depth);
		sprintf(tvin_y_csr_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y_csr_data_V, tvin_y_csr_data_V);

		// release memory allocation
		delete [] y_csr_data_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		csr_out_t AESL_return = outer_product(x_csc, y_csr);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_agg_result_rowptr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_agg_result_rowptr, tvout_agg_result_rowptr);

		sc_bv<32>* agg_result_rowptr_tvout_wrapc_buffer = new sc_bv<32>[5];

		// RTL Name: agg_result_rowptr
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: agg.result.rowptr(31, 0)
				{
					// carray: (0) => (4) @ (1)
					for (int i_0 = 0; i_0 <= 4; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AESL_return.rowptr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AESL_return.rowptr[0]
						// regulate_c_name       : agg_result_rowptr
						// input_type_conversion : AESL_return.rowptr[i_0]
						if (&(AESL_return.rowptr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> agg_result_rowptr_tmp_mem;
							agg_result_rowptr_tmp_mem = AESL_return.rowptr[i_0];
							agg_result_rowptr_tvout_wrapc_buffer[hls_map_index].range(31, 0) = agg_result_rowptr_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 5; i++)
		{
			sprintf(tvout_agg_result_rowptr, "%s\n", (agg_result_rowptr_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_agg_result_rowptr, tvout_agg_result_rowptr);
		}

		tcl_file.set_num(5, &tcl_file.agg_result_rowptr_depth);
		sprintf(tvout_agg_result_rowptr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_agg_result_rowptr, tvout_agg_result_rowptr);

		// release memory allocation
		delete [] agg_result_rowptr_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_agg_result_colind, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_agg_result_colind, tvout_agg_result_colind);

		sc_bv<32>* agg_result_colind_tvout_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: agg_result_colind
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: agg.result.colind(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AESL_return.colind[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AESL_return.colind[0]
						// regulate_c_name       : agg_result_colind
						// input_type_conversion : AESL_return.colind[i_0]
						if (&(AESL_return.colind[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> agg_result_colind_tmp_mem;
							agg_result_colind_tmp_mem = AESL_return.colind[i_0];
							agg_result_colind_tvout_wrapc_buffer[hls_map_index].range(31, 0) = agg_result_colind_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvout_agg_result_colind, "%s\n", (agg_result_colind_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_agg_result_colind, tvout_agg_result_colind);
		}

		tcl_file.set_num(20, &tcl_file.agg_result_colind_depth);
		sprintf(tvout_agg_result_colind, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_agg_result_colind, tvout_agg_result_colind);

		// release memory allocation
		delete [] agg_result_colind_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_agg_result_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_agg_result_data_V, tvout_agg_result_data_V);

		sc_bv<32>* agg_result_data_V_tvout_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: agg_result_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: agg.result.data.V(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AESL_return.data[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AESL_return.data[0]
						// regulate_c_name       : agg_result_data_V
						// input_type_conversion : (AESL_return.data[i_0]).range().to_string(SC_BIN).c_str()
						if (&(AESL_return.data[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> agg_result_data_V_tmp_mem;
							agg_result_data_V_tmp_mem = (AESL_return.data[i_0]).range().to_string(SC_BIN).c_str();
							agg_result_data_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = agg_result_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvout_agg_result_data_V, "%s\n", (agg_result_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_agg_result_data_V, tvout_agg_result_data_V);
		}

		tcl_file.set_num(20, &tcl_file.agg_result_data_V_depth);
		sprintf(tvout_agg_result_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_agg_result_data_V, tvout_agg_result_data_V);

		// release memory allocation
		delete [] agg_result_data_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "agg_result_rowptr"
		delete [] tvin_agg_result_rowptr;
		delete [] tvout_agg_result_rowptr;
		// release memory allocation: "agg_result_colind"
		delete [] tvin_agg_result_colind;
		delete [] tvout_agg_result_colind;
		// release memory allocation: "agg_result_data_V"
		delete [] tvin_agg_result_data_V;
		delete [] tvout_agg_result_data_V;
		// release memory allocation: "x_csc_colptr"
		delete [] tvin_x_csc_colptr;
		// release memory allocation: "x_csc_rowind"
		delete [] tvin_x_csc_rowind;
		// release memory allocation: "x_csc_data_V"
		delete [] tvin_x_csc_data_V;
		// release memory allocation: "y_csr_rowptr"
		delete [] tvin_y_csr_rowptr;
		// release memory allocation: "y_csr_colind"
		delete [] tvin_y_csr_colind;
		// release memory allocation: "y_csr_data_V"
		delete [] tvin_y_csr_data_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

