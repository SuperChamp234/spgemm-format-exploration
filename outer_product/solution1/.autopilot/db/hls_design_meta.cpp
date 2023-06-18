#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("agg_result_rowptr_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("agg_result_rowptr_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("agg_result_rowptr_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("agg_result_rowptr_d0", 32, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("agg_result_rowptr_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("agg_result_rowptr_address1", 3, hls_out, 0, "ap_memory", "MemPortADDR2", 1),
	Port_Property("agg_result_rowptr_ce1", 1, hls_out, 0, "ap_memory", "MemPortCE2", 1),
	Port_Property("agg_result_rowptr_we1", 1, hls_out, 0, "ap_memory", "MemPortWE2", 1),
	Port_Property("agg_result_rowptr_d1", 32, hls_out, 0, "ap_memory", "MemPortDIN2", 1),
	Port_Property("agg_result_rowptr_q1", 32, hls_in, 0, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("agg_result_colind_address0", 5, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("agg_result_colind_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("agg_result_colind_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("agg_result_colind_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("agg_result_colind_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("agg_result_colind_address1", 5, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("agg_result_colind_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("agg_result_colind_we1", 1, hls_out, 1, "ap_memory", "MemPortWE2", 1),
	Port_Property("agg_result_colind_d1", 32, hls_out, 1, "ap_memory", "MemPortDIN2", 1),
	Port_Property("agg_result_colind_q1", 32, hls_in, 1, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("agg_result_data_V_address0", 5, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("agg_result_data_V_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("agg_result_data_V_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("agg_result_data_V_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("agg_result_data_V_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("agg_result_data_V_address1", 5, hls_out, 2, "ap_memory", "MemPortADDR2", 1),
	Port_Property("agg_result_data_V_ce1", 1, hls_out, 2, "ap_memory", "MemPortCE2", 1),
	Port_Property("agg_result_data_V_we1", 1, hls_out, 2, "ap_memory", "MemPortWE2", 1),
	Port_Property("agg_result_data_V_d1", 32, hls_out, 2, "ap_memory", "MemPortDIN2", 1),
	Port_Property("agg_result_data_V_q1", 32, hls_in, 2, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("x_csc_colptr_address0", 3, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("x_csc_colptr_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("x_csc_colptr_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("x_csc_colptr_address1", 3, hls_out, 3, "ap_memory", "MemPortADDR2", 1),
	Port_Property("x_csc_colptr_ce1", 1, hls_out, 3, "ap_memory", "MemPortCE2", 1),
	Port_Property("x_csc_colptr_q1", 32, hls_in, 3, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("x_csc_rowind_address0", 5, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("x_csc_rowind_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("x_csc_rowind_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("x_csc_rowind_address1", 5, hls_out, 4, "ap_memory", "MemPortADDR2", 1),
	Port_Property("x_csc_rowind_ce1", 1, hls_out, 4, "ap_memory", "MemPortCE2", 1),
	Port_Property("x_csc_rowind_q1", 32, hls_in, 4, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("x_csc_data_V_address0", 5, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("x_csc_data_V_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("x_csc_data_V_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("x_csc_data_V_address1", 5, hls_out, 5, "ap_memory", "MemPortADDR2", 1),
	Port_Property("x_csc_data_V_ce1", 1, hls_out, 5, "ap_memory", "MemPortCE2", 1),
	Port_Property("x_csc_data_V_q1", 32, hls_in, 5, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("y_csr_rowptr_address0", 3, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("y_csr_rowptr_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("y_csr_rowptr_q0", 32, hls_in, 6, "ap_memory", "mem_dout", 1),
	Port_Property("y_csr_rowptr_address1", 3, hls_out, 6, "ap_memory", "MemPortADDR2", 1),
	Port_Property("y_csr_rowptr_ce1", 1, hls_out, 6, "ap_memory", "MemPortCE2", 1),
	Port_Property("y_csr_rowptr_q1", 32, hls_in, 6, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("y_csr_colind_address0", 5, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("y_csr_colind_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("y_csr_colind_q0", 32, hls_in, 7, "ap_memory", "mem_dout", 1),
	Port_Property("y_csr_colind_address1", 5, hls_out, 7, "ap_memory", "MemPortADDR2", 1),
	Port_Property("y_csr_colind_ce1", 1, hls_out, 7, "ap_memory", "MemPortCE2", 1),
	Port_Property("y_csr_colind_q1", 32, hls_in, 7, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("y_csr_data_V_address0", 5, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("y_csr_data_V_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("y_csr_data_V_q0", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("y_csr_data_V_address1", 5, hls_out, 8, "ap_memory", "MemPortADDR2", 1),
	Port_Property("y_csr_data_V_ce1", 1, hls_out, 8, "ap_memory", "MemPortCE2", 1),
	Port_Property("y_csr_data_V_q1", 32, hls_in, 8, "ap_memory", "MemPortDOUT2", 1),
};
const char* HLS_Design_Meta::dut_name = "outer_product";
