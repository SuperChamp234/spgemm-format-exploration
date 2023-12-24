// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      outer_product
`define AUTOTB_DUT_INST AESL_inst_outer_product
`define AUTOTB_TOP      apatb_outer_product_top
`define AUTOTB_LAT_RESULT_FILE "outer_product.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "outer_product.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_outer_product_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_x_rowptr 1
`define AESL_DEPTH_x_colind 1
`define AESL_DEPTH_x_data 1
`define AESL_DEPTH_y_colptr 1
`define AESL_DEPTH_y_rowind 1
`define AESL_DEPTH_y_data 1
`define AESL_DEPTH_z_rowptr 1
`define AESL_DEPTH_z_colind 1
`define AESL_DEPTH_z_data 1
`define AUTOTB_TVIN_x_rowptr  "../tv/cdatafile/c.outer_product.autotvin_x_rowptr.dat"
`define AUTOTB_TVIN_x_colind  "../tv/cdatafile/c.outer_product.autotvin_x_colind.dat"
`define AUTOTB_TVIN_x_data  "../tv/cdatafile/c.outer_product.autotvin_x_data.dat"
`define AUTOTB_TVIN_y_colptr  "../tv/cdatafile/c.outer_product.autotvin_y_colptr.dat"
`define AUTOTB_TVIN_y_rowind  "../tv/cdatafile/c.outer_product.autotvin_y_rowind.dat"
`define AUTOTB_TVIN_y_data  "../tv/cdatafile/c.outer_product.autotvin_y_data.dat"
`define AUTOTB_TVIN_z_rowptr  "../tv/cdatafile/c.outer_product.autotvin_z_rowptr.dat"
`define AUTOTB_TVIN_z_colind  "../tv/cdatafile/c.outer_product.autotvin_z_colind.dat"
`define AUTOTB_TVIN_z_data  "../tv/cdatafile/c.outer_product.autotvin_z_data.dat"
`define AUTOTB_TVIN_x_rowptr_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_x_rowptr.dat"
`define AUTOTB_TVIN_x_colind_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_x_colind.dat"
`define AUTOTB_TVIN_x_data_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_x_data.dat"
`define AUTOTB_TVIN_y_colptr_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_y_colptr.dat"
`define AUTOTB_TVIN_y_rowind_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_y_rowind.dat"
`define AUTOTB_TVIN_y_data_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_y_data.dat"
`define AUTOTB_TVIN_z_rowptr_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_z_rowptr.dat"
`define AUTOTB_TVIN_z_colind_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_z_colind.dat"
`define AUTOTB_TVIN_z_data_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvin_z_data.dat"
`define AUTOTB_TVOUT_z_rowptr  "../tv/cdatafile/c.outer_product.autotvout_z_rowptr.dat"
`define AUTOTB_TVOUT_z_colind  "../tv/cdatafile/c.outer_product.autotvout_z_colind.dat"
`define AUTOTB_TVOUT_z_data  "../tv/cdatafile/c.outer_product.autotvout_z_data.dat"
`define AUTOTB_TVOUT_z_rowptr_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvout_z_rowptr.dat"
`define AUTOTB_TVOUT_z_colind_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvout_z_colind.dat"
`define AUTOTB_TVOUT_z_data_out_wrapc  "../tv/rtldatafile/rtl.outer_product.autotvout_z_data.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_x_rowptr = 25;
parameter LENGTH_x_colind = 25;
parameter LENGTH_x_data = 25;
parameter LENGTH_y_colptr = 25;
parameter LENGTH_y_rowind = 25;
parameter LENGTH_y_data = 25;
parameter LENGTH_z_rowptr = 25;
parameter LENGTH_z_colind = 25;
parameter LENGTH_z_data = 25;

task read_token;
    input integer fp;
    output reg [207 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [3 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  x_rowptr_AWVALID;
wire  x_rowptr_AWREADY;
wire [63 : 0] x_rowptr_AWADDR;
wire [0 : 0] x_rowptr_AWID;
wire [7 : 0] x_rowptr_AWLEN;
wire [2 : 0] x_rowptr_AWSIZE;
wire [1 : 0] x_rowptr_AWBURST;
wire [1 : 0] x_rowptr_AWLOCK;
wire [3 : 0] x_rowptr_AWCACHE;
wire [2 : 0] x_rowptr_AWPROT;
wire [3 : 0] x_rowptr_AWQOS;
wire [3 : 0] x_rowptr_AWREGION;
wire [0 : 0] x_rowptr_AWUSER;
wire  x_rowptr_WVALID;
wire  x_rowptr_WREADY;
wire [31 : 0] x_rowptr_WDATA;
wire [3 : 0] x_rowptr_WSTRB;
wire  x_rowptr_WLAST;
wire [0 : 0] x_rowptr_WID;
wire [0 : 0] x_rowptr_WUSER;
wire  x_rowptr_ARVALID;
wire  x_rowptr_ARREADY;
wire [63 : 0] x_rowptr_ARADDR;
wire [0 : 0] x_rowptr_ARID;
wire [7 : 0] x_rowptr_ARLEN;
wire [2 : 0] x_rowptr_ARSIZE;
wire [1 : 0] x_rowptr_ARBURST;
wire [1 : 0] x_rowptr_ARLOCK;
wire [3 : 0] x_rowptr_ARCACHE;
wire [2 : 0] x_rowptr_ARPROT;
wire [3 : 0] x_rowptr_ARQOS;
wire [3 : 0] x_rowptr_ARREGION;
wire [0 : 0] x_rowptr_ARUSER;
wire  x_rowptr_RVALID;
wire  x_rowptr_RREADY;
wire [31 : 0] x_rowptr_RDATA;
wire  x_rowptr_RLAST;
wire [0 : 0] x_rowptr_RID;
wire [0 : 0] x_rowptr_RUSER;
wire [1 : 0] x_rowptr_RRESP;
wire  x_rowptr_BVALID;
wire  x_rowptr_BREADY;
wire [1 : 0] x_rowptr_BRESP;
wire [0 : 0] x_rowptr_BID;
wire [0 : 0] x_rowptr_BUSER;
wire  x_colind_AWVALID;
wire  x_colind_AWREADY;
wire [63 : 0] x_colind_AWADDR;
wire [0 : 0] x_colind_AWID;
wire [7 : 0] x_colind_AWLEN;
wire [2 : 0] x_colind_AWSIZE;
wire [1 : 0] x_colind_AWBURST;
wire [1 : 0] x_colind_AWLOCK;
wire [3 : 0] x_colind_AWCACHE;
wire [2 : 0] x_colind_AWPROT;
wire [3 : 0] x_colind_AWQOS;
wire [3 : 0] x_colind_AWREGION;
wire [0 : 0] x_colind_AWUSER;
wire  x_colind_WVALID;
wire  x_colind_WREADY;
wire [31 : 0] x_colind_WDATA;
wire [3 : 0] x_colind_WSTRB;
wire  x_colind_WLAST;
wire [0 : 0] x_colind_WID;
wire [0 : 0] x_colind_WUSER;
wire  x_colind_ARVALID;
wire  x_colind_ARREADY;
wire [63 : 0] x_colind_ARADDR;
wire [0 : 0] x_colind_ARID;
wire [7 : 0] x_colind_ARLEN;
wire [2 : 0] x_colind_ARSIZE;
wire [1 : 0] x_colind_ARBURST;
wire [1 : 0] x_colind_ARLOCK;
wire [3 : 0] x_colind_ARCACHE;
wire [2 : 0] x_colind_ARPROT;
wire [3 : 0] x_colind_ARQOS;
wire [3 : 0] x_colind_ARREGION;
wire [0 : 0] x_colind_ARUSER;
wire  x_colind_RVALID;
wire  x_colind_RREADY;
wire [31 : 0] x_colind_RDATA;
wire  x_colind_RLAST;
wire [0 : 0] x_colind_RID;
wire [0 : 0] x_colind_RUSER;
wire [1 : 0] x_colind_RRESP;
wire  x_colind_BVALID;
wire  x_colind_BREADY;
wire [1 : 0] x_colind_BRESP;
wire [0 : 0] x_colind_BID;
wire [0 : 0] x_colind_BUSER;
wire  x_data_AWVALID;
wire  x_data_AWREADY;
wire [63 : 0] x_data_AWADDR;
wire [0 : 0] x_data_AWID;
wire [7 : 0] x_data_AWLEN;
wire [2 : 0] x_data_AWSIZE;
wire [1 : 0] x_data_AWBURST;
wire [1 : 0] x_data_AWLOCK;
wire [3 : 0] x_data_AWCACHE;
wire [2 : 0] x_data_AWPROT;
wire [3 : 0] x_data_AWQOS;
wire [3 : 0] x_data_AWREGION;
wire [0 : 0] x_data_AWUSER;
wire  x_data_WVALID;
wire  x_data_WREADY;
wire [31 : 0] x_data_WDATA;
wire [3 : 0] x_data_WSTRB;
wire  x_data_WLAST;
wire [0 : 0] x_data_WID;
wire [0 : 0] x_data_WUSER;
wire  x_data_ARVALID;
wire  x_data_ARREADY;
wire [63 : 0] x_data_ARADDR;
wire [0 : 0] x_data_ARID;
wire [7 : 0] x_data_ARLEN;
wire [2 : 0] x_data_ARSIZE;
wire [1 : 0] x_data_ARBURST;
wire [1 : 0] x_data_ARLOCK;
wire [3 : 0] x_data_ARCACHE;
wire [2 : 0] x_data_ARPROT;
wire [3 : 0] x_data_ARQOS;
wire [3 : 0] x_data_ARREGION;
wire [0 : 0] x_data_ARUSER;
wire  x_data_RVALID;
wire  x_data_RREADY;
wire [31 : 0] x_data_RDATA;
wire  x_data_RLAST;
wire [0 : 0] x_data_RID;
wire [0 : 0] x_data_RUSER;
wire [1 : 0] x_data_RRESP;
wire  x_data_BVALID;
wire  x_data_BREADY;
wire [1 : 0] x_data_BRESP;
wire [0 : 0] x_data_BID;
wire [0 : 0] x_data_BUSER;
wire  y_colptr_AWVALID;
wire  y_colptr_AWREADY;
wire [63 : 0] y_colptr_AWADDR;
wire [0 : 0] y_colptr_AWID;
wire [7 : 0] y_colptr_AWLEN;
wire [2 : 0] y_colptr_AWSIZE;
wire [1 : 0] y_colptr_AWBURST;
wire [1 : 0] y_colptr_AWLOCK;
wire [3 : 0] y_colptr_AWCACHE;
wire [2 : 0] y_colptr_AWPROT;
wire [3 : 0] y_colptr_AWQOS;
wire [3 : 0] y_colptr_AWREGION;
wire [0 : 0] y_colptr_AWUSER;
wire  y_colptr_WVALID;
wire  y_colptr_WREADY;
wire [31 : 0] y_colptr_WDATA;
wire [3 : 0] y_colptr_WSTRB;
wire  y_colptr_WLAST;
wire [0 : 0] y_colptr_WID;
wire [0 : 0] y_colptr_WUSER;
wire  y_colptr_ARVALID;
wire  y_colptr_ARREADY;
wire [63 : 0] y_colptr_ARADDR;
wire [0 : 0] y_colptr_ARID;
wire [7 : 0] y_colptr_ARLEN;
wire [2 : 0] y_colptr_ARSIZE;
wire [1 : 0] y_colptr_ARBURST;
wire [1 : 0] y_colptr_ARLOCK;
wire [3 : 0] y_colptr_ARCACHE;
wire [2 : 0] y_colptr_ARPROT;
wire [3 : 0] y_colptr_ARQOS;
wire [3 : 0] y_colptr_ARREGION;
wire [0 : 0] y_colptr_ARUSER;
wire  y_colptr_RVALID;
wire  y_colptr_RREADY;
wire [31 : 0] y_colptr_RDATA;
wire  y_colptr_RLAST;
wire [0 : 0] y_colptr_RID;
wire [0 : 0] y_colptr_RUSER;
wire [1 : 0] y_colptr_RRESP;
wire  y_colptr_BVALID;
wire  y_colptr_BREADY;
wire [1 : 0] y_colptr_BRESP;
wire [0 : 0] y_colptr_BID;
wire [0 : 0] y_colptr_BUSER;
wire  y_rowind_AWVALID;
wire  y_rowind_AWREADY;
wire [63 : 0] y_rowind_AWADDR;
wire [0 : 0] y_rowind_AWID;
wire [7 : 0] y_rowind_AWLEN;
wire [2 : 0] y_rowind_AWSIZE;
wire [1 : 0] y_rowind_AWBURST;
wire [1 : 0] y_rowind_AWLOCK;
wire [3 : 0] y_rowind_AWCACHE;
wire [2 : 0] y_rowind_AWPROT;
wire [3 : 0] y_rowind_AWQOS;
wire [3 : 0] y_rowind_AWREGION;
wire [0 : 0] y_rowind_AWUSER;
wire  y_rowind_WVALID;
wire  y_rowind_WREADY;
wire [31 : 0] y_rowind_WDATA;
wire [3 : 0] y_rowind_WSTRB;
wire  y_rowind_WLAST;
wire [0 : 0] y_rowind_WID;
wire [0 : 0] y_rowind_WUSER;
wire  y_rowind_ARVALID;
wire  y_rowind_ARREADY;
wire [63 : 0] y_rowind_ARADDR;
wire [0 : 0] y_rowind_ARID;
wire [7 : 0] y_rowind_ARLEN;
wire [2 : 0] y_rowind_ARSIZE;
wire [1 : 0] y_rowind_ARBURST;
wire [1 : 0] y_rowind_ARLOCK;
wire [3 : 0] y_rowind_ARCACHE;
wire [2 : 0] y_rowind_ARPROT;
wire [3 : 0] y_rowind_ARQOS;
wire [3 : 0] y_rowind_ARREGION;
wire [0 : 0] y_rowind_ARUSER;
wire  y_rowind_RVALID;
wire  y_rowind_RREADY;
wire [31 : 0] y_rowind_RDATA;
wire  y_rowind_RLAST;
wire [0 : 0] y_rowind_RID;
wire [0 : 0] y_rowind_RUSER;
wire [1 : 0] y_rowind_RRESP;
wire  y_rowind_BVALID;
wire  y_rowind_BREADY;
wire [1 : 0] y_rowind_BRESP;
wire [0 : 0] y_rowind_BID;
wire [0 : 0] y_rowind_BUSER;
wire  y_data_AWVALID;
wire  y_data_AWREADY;
wire [63 : 0] y_data_AWADDR;
wire [0 : 0] y_data_AWID;
wire [7 : 0] y_data_AWLEN;
wire [2 : 0] y_data_AWSIZE;
wire [1 : 0] y_data_AWBURST;
wire [1 : 0] y_data_AWLOCK;
wire [3 : 0] y_data_AWCACHE;
wire [2 : 0] y_data_AWPROT;
wire [3 : 0] y_data_AWQOS;
wire [3 : 0] y_data_AWREGION;
wire [0 : 0] y_data_AWUSER;
wire  y_data_WVALID;
wire  y_data_WREADY;
wire [31 : 0] y_data_WDATA;
wire [3 : 0] y_data_WSTRB;
wire  y_data_WLAST;
wire [0 : 0] y_data_WID;
wire [0 : 0] y_data_WUSER;
wire  y_data_ARVALID;
wire  y_data_ARREADY;
wire [63 : 0] y_data_ARADDR;
wire [0 : 0] y_data_ARID;
wire [7 : 0] y_data_ARLEN;
wire [2 : 0] y_data_ARSIZE;
wire [1 : 0] y_data_ARBURST;
wire [1 : 0] y_data_ARLOCK;
wire [3 : 0] y_data_ARCACHE;
wire [2 : 0] y_data_ARPROT;
wire [3 : 0] y_data_ARQOS;
wire [3 : 0] y_data_ARREGION;
wire [0 : 0] y_data_ARUSER;
wire  y_data_RVALID;
wire  y_data_RREADY;
wire [31 : 0] y_data_RDATA;
wire  y_data_RLAST;
wire [0 : 0] y_data_RID;
wire [0 : 0] y_data_RUSER;
wire [1 : 0] y_data_RRESP;
wire  y_data_BVALID;
wire  y_data_BREADY;
wire [1 : 0] y_data_BRESP;
wire [0 : 0] y_data_BID;
wire [0 : 0] y_data_BUSER;
wire  z_rowptr_AWVALID;
wire  z_rowptr_AWREADY;
wire [63 : 0] z_rowptr_AWADDR;
wire [0 : 0] z_rowptr_AWID;
wire [7 : 0] z_rowptr_AWLEN;
wire [2 : 0] z_rowptr_AWSIZE;
wire [1 : 0] z_rowptr_AWBURST;
wire [1 : 0] z_rowptr_AWLOCK;
wire [3 : 0] z_rowptr_AWCACHE;
wire [2 : 0] z_rowptr_AWPROT;
wire [3 : 0] z_rowptr_AWQOS;
wire [3 : 0] z_rowptr_AWREGION;
wire [0 : 0] z_rowptr_AWUSER;
wire  z_rowptr_WVALID;
wire  z_rowptr_WREADY;
wire [31 : 0] z_rowptr_WDATA;
wire [3 : 0] z_rowptr_WSTRB;
wire  z_rowptr_WLAST;
wire [0 : 0] z_rowptr_WID;
wire [0 : 0] z_rowptr_WUSER;
wire  z_rowptr_ARVALID;
wire  z_rowptr_ARREADY;
wire [63 : 0] z_rowptr_ARADDR;
wire [0 : 0] z_rowptr_ARID;
wire [7 : 0] z_rowptr_ARLEN;
wire [2 : 0] z_rowptr_ARSIZE;
wire [1 : 0] z_rowptr_ARBURST;
wire [1 : 0] z_rowptr_ARLOCK;
wire [3 : 0] z_rowptr_ARCACHE;
wire [2 : 0] z_rowptr_ARPROT;
wire [3 : 0] z_rowptr_ARQOS;
wire [3 : 0] z_rowptr_ARREGION;
wire [0 : 0] z_rowptr_ARUSER;
wire  z_rowptr_RVALID;
wire  z_rowptr_RREADY;
wire [31 : 0] z_rowptr_RDATA;
wire  z_rowptr_RLAST;
wire [0 : 0] z_rowptr_RID;
wire [0 : 0] z_rowptr_RUSER;
wire [1 : 0] z_rowptr_RRESP;
wire  z_rowptr_BVALID;
wire  z_rowptr_BREADY;
wire [1 : 0] z_rowptr_BRESP;
wire [0 : 0] z_rowptr_BID;
wire [0 : 0] z_rowptr_BUSER;
wire  z_colind_AWVALID;
wire  z_colind_AWREADY;
wire [63 : 0] z_colind_AWADDR;
wire [0 : 0] z_colind_AWID;
wire [7 : 0] z_colind_AWLEN;
wire [2 : 0] z_colind_AWSIZE;
wire [1 : 0] z_colind_AWBURST;
wire [1 : 0] z_colind_AWLOCK;
wire [3 : 0] z_colind_AWCACHE;
wire [2 : 0] z_colind_AWPROT;
wire [3 : 0] z_colind_AWQOS;
wire [3 : 0] z_colind_AWREGION;
wire [0 : 0] z_colind_AWUSER;
wire  z_colind_WVALID;
wire  z_colind_WREADY;
wire [31 : 0] z_colind_WDATA;
wire [3 : 0] z_colind_WSTRB;
wire  z_colind_WLAST;
wire [0 : 0] z_colind_WID;
wire [0 : 0] z_colind_WUSER;
wire  z_colind_ARVALID;
wire  z_colind_ARREADY;
wire [63 : 0] z_colind_ARADDR;
wire [0 : 0] z_colind_ARID;
wire [7 : 0] z_colind_ARLEN;
wire [2 : 0] z_colind_ARSIZE;
wire [1 : 0] z_colind_ARBURST;
wire [1 : 0] z_colind_ARLOCK;
wire [3 : 0] z_colind_ARCACHE;
wire [2 : 0] z_colind_ARPROT;
wire [3 : 0] z_colind_ARQOS;
wire [3 : 0] z_colind_ARREGION;
wire [0 : 0] z_colind_ARUSER;
wire  z_colind_RVALID;
wire  z_colind_RREADY;
wire [31 : 0] z_colind_RDATA;
wire  z_colind_RLAST;
wire [0 : 0] z_colind_RID;
wire [0 : 0] z_colind_RUSER;
wire [1 : 0] z_colind_RRESP;
wire  z_colind_BVALID;
wire  z_colind_BREADY;
wire [1 : 0] z_colind_BRESP;
wire [0 : 0] z_colind_BID;
wire [0 : 0] z_colind_BUSER;
wire  z_data_AWVALID;
wire  z_data_AWREADY;
wire [63 : 0] z_data_AWADDR;
wire [0 : 0] z_data_AWID;
wire [7 : 0] z_data_AWLEN;
wire [2 : 0] z_data_AWSIZE;
wire [1 : 0] z_data_AWBURST;
wire [1 : 0] z_data_AWLOCK;
wire [3 : 0] z_data_AWCACHE;
wire [2 : 0] z_data_AWPROT;
wire [3 : 0] z_data_AWQOS;
wire [3 : 0] z_data_AWREGION;
wire [0 : 0] z_data_AWUSER;
wire  z_data_WVALID;
wire  z_data_WREADY;
wire [31 : 0] z_data_WDATA;
wire [3 : 0] z_data_WSTRB;
wire  z_data_WLAST;
wire [0 : 0] z_data_WID;
wire [0 : 0] z_data_WUSER;
wire  z_data_ARVALID;
wire  z_data_ARREADY;
wire [63 : 0] z_data_ARADDR;
wire [0 : 0] z_data_ARID;
wire [7 : 0] z_data_ARLEN;
wire [2 : 0] z_data_ARSIZE;
wire [1 : 0] z_data_ARBURST;
wire [1 : 0] z_data_ARLOCK;
wire [3 : 0] z_data_ARCACHE;
wire [2 : 0] z_data_ARPROT;
wire [3 : 0] z_data_ARQOS;
wire [3 : 0] z_data_ARREGION;
wire [0 : 0] z_data_ARUSER;
wire  z_data_RVALID;
wire  z_data_RREADY;
wire [31 : 0] z_data_RDATA;
wire  z_data_RLAST;
wire [0 : 0] z_data_RID;
wire [0 : 0] z_data_RUSER;
wire [1 : 0] z_data_RRESP;
wire  z_data_BVALID;
wire  z_data_BREADY;
wire [1 : 0] z_data_BRESP;
wire [0 : 0] z_data_BID;
wire [0 : 0] z_data_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_x_rowptr_AWVALID(x_rowptr_AWVALID),
    .m_axi_x_rowptr_AWREADY(x_rowptr_AWREADY),
    .m_axi_x_rowptr_AWADDR(x_rowptr_AWADDR),
    .m_axi_x_rowptr_AWID(x_rowptr_AWID),
    .m_axi_x_rowptr_AWLEN(x_rowptr_AWLEN),
    .m_axi_x_rowptr_AWSIZE(x_rowptr_AWSIZE),
    .m_axi_x_rowptr_AWBURST(x_rowptr_AWBURST),
    .m_axi_x_rowptr_AWLOCK(x_rowptr_AWLOCK),
    .m_axi_x_rowptr_AWCACHE(x_rowptr_AWCACHE),
    .m_axi_x_rowptr_AWPROT(x_rowptr_AWPROT),
    .m_axi_x_rowptr_AWQOS(x_rowptr_AWQOS),
    .m_axi_x_rowptr_AWREGION(x_rowptr_AWREGION),
    .m_axi_x_rowptr_AWUSER(x_rowptr_AWUSER),
    .m_axi_x_rowptr_WVALID(x_rowptr_WVALID),
    .m_axi_x_rowptr_WREADY(x_rowptr_WREADY),
    .m_axi_x_rowptr_WDATA(x_rowptr_WDATA),
    .m_axi_x_rowptr_WSTRB(x_rowptr_WSTRB),
    .m_axi_x_rowptr_WLAST(x_rowptr_WLAST),
    .m_axi_x_rowptr_WID(x_rowptr_WID),
    .m_axi_x_rowptr_WUSER(x_rowptr_WUSER),
    .m_axi_x_rowptr_ARVALID(x_rowptr_ARVALID),
    .m_axi_x_rowptr_ARREADY(x_rowptr_ARREADY),
    .m_axi_x_rowptr_ARADDR(x_rowptr_ARADDR),
    .m_axi_x_rowptr_ARID(x_rowptr_ARID),
    .m_axi_x_rowptr_ARLEN(x_rowptr_ARLEN),
    .m_axi_x_rowptr_ARSIZE(x_rowptr_ARSIZE),
    .m_axi_x_rowptr_ARBURST(x_rowptr_ARBURST),
    .m_axi_x_rowptr_ARLOCK(x_rowptr_ARLOCK),
    .m_axi_x_rowptr_ARCACHE(x_rowptr_ARCACHE),
    .m_axi_x_rowptr_ARPROT(x_rowptr_ARPROT),
    .m_axi_x_rowptr_ARQOS(x_rowptr_ARQOS),
    .m_axi_x_rowptr_ARREGION(x_rowptr_ARREGION),
    .m_axi_x_rowptr_ARUSER(x_rowptr_ARUSER),
    .m_axi_x_rowptr_RVALID(x_rowptr_RVALID),
    .m_axi_x_rowptr_RREADY(x_rowptr_RREADY),
    .m_axi_x_rowptr_RDATA(x_rowptr_RDATA),
    .m_axi_x_rowptr_RLAST(x_rowptr_RLAST),
    .m_axi_x_rowptr_RID(x_rowptr_RID),
    .m_axi_x_rowptr_RUSER(x_rowptr_RUSER),
    .m_axi_x_rowptr_RRESP(x_rowptr_RRESP),
    .m_axi_x_rowptr_BVALID(x_rowptr_BVALID),
    .m_axi_x_rowptr_BREADY(x_rowptr_BREADY),
    .m_axi_x_rowptr_BRESP(x_rowptr_BRESP),
    .m_axi_x_rowptr_BID(x_rowptr_BID),
    .m_axi_x_rowptr_BUSER(x_rowptr_BUSER),
    .m_axi_x_colind_AWVALID(x_colind_AWVALID),
    .m_axi_x_colind_AWREADY(x_colind_AWREADY),
    .m_axi_x_colind_AWADDR(x_colind_AWADDR),
    .m_axi_x_colind_AWID(x_colind_AWID),
    .m_axi_x_colind_AWLEN(x_colind_AWLEN),
    .m_axi_x_colind_AWSIZE(x_colind_AWSIZE),
    .m_axi_x_colind_AWBURST(x_colind_AWBURST),
    .m_axi_x_colind_AWLOCK(x_colind_AWLOCK),
    .m_axi_x_colind_AWCACHE(x_colind_AWCACHE),
    .m_axi_x_colind_AWPROT(x_colind_AWPROT),
    .m_axi_x_colind_AWQOS(x_colind_AWQOS),
    .m_axi_x_colind_AWREGION(x_colind_AWREGION),
    .m_axi_x_colind_AWUSER(x_colind_AWUSER),
    .m_axi_x_colind_WVALID(x_colind_WVALID),
    .m_axi_x_colind_WREADY(x_colind_WREADY),
    .m_axi_x_colind_WDATA(x_colind_WDATA),
    .m_axi_x_colind_WSTRB(x_colind_WSTRB),
    .m_axi_x_colind_WLAST(x_colind_WLAST),
    .m_axi_x_colind_WID(x_colind_WID),
    .m_axi_x_colind_WUSER(x_colind_WUSER),
    .m_axi_x_colind_ARVALID(x_colind_ARVALID),
    .m_axi_x_colind_ARREADY(x_colind_ARREADY),
    .m_axi_x_colind_ARADDR(x_colind_ARADDR),
    .m_axi_x_colind_ARID(x_colind_ARID),
    .m_axi_x_colind_ARLEN(x_colind_ARLEN),
    .m_axi_x_colind_ARSIZE(x_colind_ARSIZE),
    .m_axi_x_colind_ARBURST(x_colind_ARBURST),
    .m_axi_x_colind_ARLOCK(x_colind_ARLOCK),
    .m_axi_x_colind_ARCACHE(x_colind_ARCACHE),
    .m_axi_x_colind_ARPROT(x_colind_ARPROT),
    .m_axi_x_colind_ARQOS(x_colind_ARQOS),
    .m_axi_x_colind_ARREGION(x_colind_ARREGION),
    .m_axi_x_colind_ARUSER(x_colind_ARUSER),
    .m_axi_x_colind_RVALID(x_colind_RVALID),
    .m_axi_x_colind_RREADY(x_colind_RREADY),
    .m_axi_x_colind_RDATA(x_colind_RDATA),
    .m_axi_x_colind_RLAST(x_colind_RLAST),
    .m_axi_x_colind_RID(x_colind_RID),
    .m_axi_x_colind_RUSER(x_colind_RUSER),
    .m_axi_x_colind_RRESP(x_colind_RRESP),
    .m_axi_x_colind_BVALID(x_colind_BVALID),
    .m_axi_x_colind_BREADY(x_colind_BREADY),
    .m_axi_x_colind_BRESP(x_colind_BRESP),
    .m_axi_x_colind_BID(x_colind_BID),
    .m_axi_x_colind_BUSER(x_colind_BUSER),
    .m_axi_x_data_AWVALID(x_data_AWVALID),
    .m_axi_x_data_AWREADY(x_data_AWREADY),
    .m_axi_x_data_AWADDR(x_data_AWADDR),
    .m_axi_x_data_AWID(x_data_AWID),
    .m_axi_x_data_AWLEN(x_data_AWLEN),
    .m_axi_x_data_AWSIZE(x_data_AWSIZE),
    .m_axi_x_data_AWBURST(x_data_AWBURST),
    .m_axi_x_data_AWLOCK(x_data_AWLOCK),
    .m_axi_x_data_AWCACHE(x_data_AWCACHE),
    .m_axi_x_data_AWPROT(x_data_AWPROT),
    .m_axi_x_data_AWQOS(x_data_AWQOS),
    .m_axi_x_data_AWREGION(x_data_AWREGION),
    .m_axi_x_data_AWUSER(x_data_AWUSER),
    .m_axi_x_data_WVALID(x_data_WVALID),
    .m_axi_x_data_WREADY(x_data_WREADY),
    .m_axi_x_data_WDATA(x_data_WDATA),
    .m_axi_x_data_WSTRB(x_data_WSTRB),
    .m_axi_x_data_WLAST(x_data_WLAST),
    .m_axi_x_data_WID(x_data_WID),
    .m_axi_x_data_WUSER(x_data_WUSER),
    .m_axi_x_data_ARVALID(x_data_ARVALID),
    .m_axi_x_data_ARREADY(x_data_ARREADY),
    .m_axi_x_data_ARADDR(x_data_ARADDR),
    .m_axi_x_data_ARID(x_data_ARID),
    .m_axi_x_data_ARLEN(x_data_ARLEN),
    .m_axi_x_data_ARSIZE(x_data_ARSIZE),
    .m_axi_x_data_ARBURST(x_data_ARBURST),
    .m_axi_x_data_ARLOCK(x_data_ARLOCK),
    .m_axi_x_data_ARCACHE(x_data_ARCACHE),
    .m_axi_x_data_ARPROT(x_data_ARPROT),
    .m_axi_x_data_ARQOS(x_data_ARQOS),
    .m_axi_x_data_ARREGION(x_data_ARREGION),
    .m_axi_x_data_ARUSER(x_data_ARUSER),
    .m_axi_x_data_RVALID(x_data_RVALID),
    .m_axi_x_data_RREADY(x_data_RREADY),
    .m_axi_x_data_RDATA(x_data_RDATA),
    .m_axi_x_data_RLAST(x_data_RLAST),
    .m_axi_x_data_RID(x_data_RID),
    .m_axi_x_data_RUSER(x_data_RUSER),
    .m_axi_x_data_RRESP(x_data_RRESP),
    .m_axi_x_data_BVALID(x_data_BVALID),
    .m_axi_x_data_BREADY(x_data_BREADY),
    .m_axi_x_data_BRESP(x_data_BRESP),
    .m_axi_x_data_BID(x_data_BID),
    .m_axi_x_data_BUSER(x_data_BUSER),
    .m_axi_y_colptr_AWVALID(y_colptr_AWVALID),
    .m_axi_y_colptr_AWREADY(y_colptr_AWREADY),
    .m_axi_y_colptr_AWADDR(y_colptr_AWADDR),
    .m_axi_y_colptr_AWID(y_colptr_AWID),
    .m_axi_y_colptr_AWLEN(y_colptr_AWLEN),
    .m_axi_y_colptr_AWSIZE(y_colptr_AWSIZE),
    .m_axi_y_colptr_AWBURST(y_colptr_AWBURST),
    .m_axi_y_colptr_AWLOCK(y_colptr_AWLOCK),
    .m_axi_y_colptr_AWCACHE(y_colptr_AWCACHE),
    .m_axi_y_colptr_AWPROT(y_colptr_AWPROT),
    .m_axi_y_colptr_AWQOS(y_colptr_AWQOS),
    .m_axi_y_colptr_AWREGION(y_colptr_AWREGION),
    .m_axi_y_colptr_AWUSER(y_colptr_AWUSER),
    .m_axi_y_colptr_WVALID(y_colptr_WVALID),
    .m_axi_y_colptr_WREADY(y_colptr_WREADY),
    .m_axi_y_colptr_WDATA(y_colptr_WDATA),
    .m_axi_y_colptr_WSTRB(y_colptr_WSTRB),
    .m_axi_y_colptr_WLAST(y_colptr_WLAST),
    .m_axi_y_colptr_WID(y_colptr_WID),
    .m_axi_y_colptr_WUSER(y_colptr_WUSER),
    .m_axi_y_colptr_ARVALID(y_colptr_ARVALID),
    .m_axi_y_colptr_ARREADY(y_colptr_ARREADY),
    .m_axi_y_colptr_ARADDR(y_colptr_ARADDR),
    .m_axi_y_colptr_ARID(y_colptr_ARID),
    .m_axi_y_colptr_ARLEN(y_colptr_ARLEN),
    .m_axi_y_colptr_ARSIZE(y_colptr_ARSIZE),
    .m_axi_y_colptr_ARBURST(y_colptr_ARBURST),
    .m_axi_y_colptr_ARLOCK(y_colptr_ARLOCK),
    .m_axi_y_colptr_ARCACHE(y_colptr_ARCACHE),
    .m_axi_y_colptr_ARPROT(y_colptr_ARPROT),
    .m_axi_y_colptr_ARQOS(y_colptr_ARQOS),
    .m_axi_y_colptr_ARREGION(y_colptr_ARREGION),
    .m_axi_y_colptr_ARUSER(y_colptr_ARUSER),
    .m_axi_y_colptr_RVALID(y_colptr_RVALID),
    .m_axi_y_colptr_RREADY(y_colptr_RREADY),
    .m_axi_y_colptr_RDATA(y_colptr_RDATA),
    .m_axi_y_colptr_RLAST(y_colptr_RLAST),
    .m_axi_y_colptr_RID(y_colptr_RID),
    .m_axi_y_colptr_RUSER(y_colptr_RUSER),
    .m_axi_y_colptr_RRESP(y_colptr_RRESP),
    .m_axi_y_colptr_BVALID(y_colptr_BVALID),
    .m_axi_y_colptr_BREADY(y_colptr_BREADY),
    .m_axi_y_colptr_BRESP(y_colptr_BRESP),
    .m_axi_y_colptr_BID(y_colptr_BID),
    .m_axi_y_colptr_BUSER(y_colptr_BUSER),
    .m_axi_y_rowind_AWVALID(y_rowind_AWVALID),
    .m_axi_y_rowind_AWREADY(y_rowind_AWREADY),
    .m_axi_y_rowind_AWADDR(y_rowind_AWADDR),
    .m_axi_y_rowind_AWID(y_rowind_AWID),
    .m_axi_y_rowind_AWLEN(y_rowind_AWLEN),
    .m_axi_y_rowind_AWSIZE(y_rowind_AWSIZE),
    .m_axi_y_rowind_AWBURST(y_rowind_AWBURST),
    .m_axi_y_rowind_AWLOCK(y_rowind_AWLOCK),
    .m_axi_y_rowind_AWCACHE(y_rowind_AWCACHE),
    .m_axi_y_rowind_AWPROT(y_rowind_AWPROT),
    .m_axi_y_rowind_AWQOS(y_rowind_AWQOS),
    .m_axi_y_rowind_AWREGION(y_rowind_AWREGION),
    .m_axi_y_rowind_AWUSER(y_rowind_AWUSER),
    .m_axi_y_rowind_WVALID(y_rowind_WVALID),
    .m_axi_y_rowind_WREADY(y_rowind_WREADY),
    .m_axi_y_rowind_WDATA(y_rowind_WDATA),
    .m_axi_y_rowind_WSTRB(y_rowind_WSTRB),
    .m_axi_y_rowind_WLAST(y_rowind_WLAST),
    .m_axi_y_rowind_WID(y_rowind_WID),
    .m_axi_y_rowind_WUSER(y_rowind_WUSER),
    .m_axi_y_rowind_ARVALID(y_rowind_ARVALID),
    .m_axi_y_rowind_ARREADY(y_rowind_ARREADY),
    .m_axi_y_rowind_ARADDR(y_rowind_ARADDR),
    .m_axi_y_rowind_ARID(y_rowind_ARID),
    .m_axi_y_rowind_ARLEN(y_rowind_ARLEN),
    .m_axi_y_rowind_ARSIZE(y_rowind_ARSIZE),
    .m_axi_y_rowind_ARBURST(y_rowind_ARBURST),
    .m_axi_y_rowind_ARLOCK(y_rowind_ARLOCK),
    .m_axi_y_rowind_ARCACHE(y_rowind_ARCACHE),
    .m_axi_y_rowind_ARPROT(y_rowind_ARPROT),
    .m_axi_y_rowind_ARQOS(y_rowind_ARQOS),
    .m_axi_y_rowind_ARREGION(y_rowind_ARREGION),
    .m_axi_y_rowind_ARUSER(y_rowind_ARUSER),
    .m_axi_y_rowind_RVALID(y_rowind_RVALID),
    .m_axi_y_rowind_RREADY(y_rowind_RREADY),
    .m_axi_y_rowind_RDATA(y_rowind_RDATA),
    .m_axi_y_rowind_RLAST(y_rowind_RLAST),
    .m_axi_y_rowind_RID(y_rowind_RID),
    .m_axi_y_rowind_RUSER(y_rowind_RUSER),
    .m_axi_y_rowind_RRESP(y_rowind_RRESP),
    .m_axi_y_rowind_BVALID(y_rowind_BVALID),
    .m_axi_y_rowind_BREADY(y_rowind_BREADY),
    .m_axi_y_rowind_BRESP(y_rowind_BRESP),
    .m_axi_y_rowind_BID(y_rowind_BID),
    .m_axi_y_rowind_BUSER(y_rowind_BUSER),
    .m_axi_y_data_AWVALID(y_data_AWVALID),
    .m_axi_y_data_AWREADY(y_data_AWREADY),
    .m_axi_y_data_AWADDR(y_data_AWADDR),
    .m_axi_y_data_AWID(y_data_AWID),
    .m_axi_y_data_AWLEN(y_data_AWLEN),
    .m_axi_y_data_AWSIZE(y_data_AWSIZE),
    .m_axi_y_data_AWBURST(y_data_AWBURST),
    .m_axi_y_data_AWLOCK(y_data_AWLOCK),
    .m_axi_y_data_AWCACHE(y_data_AWCACHE),
    .m_axi_y_data_AWPROT(y_data_AWPROT),
    .m_axi_y_data_AWQOS(y_data_AWQOS),
    .m_axi_y_data_AWREGION(y_data_AWREGION),
    .m_axi_y_data_AWUSER(y_data_AWUSER),
    .m_axi_y_data_WVALID(y_data_WVALID),
    .m_axi_y_data_WREADY(y_data_WREADY),
    .m_axi_y_data_WDATA(y_data_WDATA),
    .m_axi_y_data_WSTRB(y_data_WSTRB),
    .m_axi_y_data_WLAST(y_data_WLAST),
    .m_axi_y_data_WID(y_data_WID),
    .m_axi_y_data_WUSER(y_data_WUSER),
    .m_axi_y_data_ARVALID(y_data_ARVALID),
    .m_axi_y_data_ARREADY(y_data_ARREADY),
    .m_axi_y_data_ARADDR(y_data_ARADDR),
    .m_axi_y_data_ARID(y_data_ARID),
    .m_axi_y_data_ARLEN(y_data_ARLEN),
    .m_axi_y_data_ARSIZE(y_data_ARSIZE),
    .m_axi_y_data_ARBURST(y_data_ARBURST),
    .m_axi_y_data_ARLOCK(y_data_ARLOCK),
    .m_axi_y_data_ARCACHE(y_data_ARCACHE),
    .m_axi_y_data_ARPROT(y_data_ARPROT),
    .m_axi_y_data_ARQOS(y_data_ARQOS),
    .m_axi_y_data_ARREGION(y_data_ARREGION),
    .m_axi_y_data_ARUSER(y_data_ARUSER),
    .m_axi_y_data_RVALID(y_data_RVALID),
    .m_axi_y_data_RREADY(y_data_RREADY),
    .m_axi_y_data_RDATA(y_data_RDATA),
    .m_axi_y_data_RLAST(y_data_RLAST),
    .m_axi_y_data_RID(y_data_RID),
    .m_axi_y_data_RUSER(y_data_RUSER),
    .m_axi_y_data_RRESP(y_data_RRESP),
    .m_axi_y_data_BVALID(y_data_BVALID),
    .m_axi_y_data_BREADY(y_data_BREADY),
    .m_axi_y_data_BRESP(y_data_BRESP),
    .m_axi_y_data_BID(y_data_BID),
    .m_axi_y_data_BUSER(y_data_BUSER),
    .m_axi_z_rowptr_AWVALID(z_rowptr_AWVALID),
    .m_axi_z_rowptr_AWREADY(z_rowptr_AWREADY),
    .m_axi_z_rowptr_AWADDR(z_rowptr_AWADDR),
    .m_axi_z_rowptr_AWID(z_rowptr_AWID),
    .m_axi_z_rowptr_AWLEN(z_rowptr_AWLEN),
    .m_axi_z_rowptr_AWSIZE(z_rowptr_AWSIZE),
    .m_axi_z_rowptr_AWBURST(z_rowptr_AWBURST),
    .m_axi_z_rowptr_AWLOCK(z_rowptr_AWLOCK),
    .m_axi_z_rowptr_AWCACHE(z_rowptr_AWCACHE),
    .m_axi_z_rowptr_AWPROT(z_rowptr_AWPROT),
    .m_axi_z_rowptr_AWQOS(z_rowptr_AWQOS),
    .m_axi_z_rowptr_AWREGION(z_rowptr_AWREGION),
    .m_axi_z_rowptr_AWUSER(z_rowptr_AWUSER),
    .m_axi_z_rowptr_WVALID(z_rowptr_WVALID),
    .m_axi_z_rowptr_WREADY(z_rowptr_WREADY),
    .m_axi_z_rowptr_WDATA(z_rowptr_WDATA),
    .m_axi_z_rowptr_WSTRB(z_rowptr_WSTRB),
    .m_axi_z_rowptr_WLAST(z_rowptr_WLAST),
    .m_axi_z_rowptr_WID(z_rowptr_WID),
    .m_axi_z_rowptr_WUSER(z_rowptr_WUSER),
    .m_axi_z_rowptr_ARVALID(z_rowptr_ARVALID),
    .m_axi_z_rowptr_ARREADY(z_rowptr_ARREADY),
    .m_axi_z_rowptr_ARADDR(z_rowptr_ARADDR),
    .m_axi_z_rowptr_ARID(z_rowptr_ARID),
    .m_axi_z_rowptr_ARLEN(z_rowptr_ARLEN),
    .m_axi_z_rowptr_ARSIZE(z_rowptr_ARSIZE),
    .m_axi_z_rowptr_ARBURST(z_rowptr_ARBURST),
    .m_axi_z_rowptr_ARLOCK(z_rowptr_ARLOCK),
    .m_axi_z_rowptr_ARCACHE(z_rowptr_ARCACHE),
    .m_axi_z_rowptr_ARPROT(z_rowptr_ARPROT),
    .m_axi_z_rowptr_ARQOS(z_rowptr_ARQOS),
    .m_axi_z_rowptr_ARREGION(z_rowptr_ARREGION),
    .m_axi_z_rowptr_ARUSER(z_rowptr_ARUSER),
    .m_axi_z_rowptr_RVALID(z_rowptr_RVALID),
    .m_axi_z_rowptr_RREADY(z_rowptr_RREADY),
    .m_axi_z_rowptr_RDATA(z_rowptr_RDATA),
    .m_axi_z_rowptr_RLAST(z_rowptr_RLAST),
    .m_axi_z_rowptr_RID(z_rowptr_RID),
    .m_axi_z_rowptr_RUSER(z_rowptr_RUSER),
    .m_axi_z_rowptr_RRESP(z_rowptr_RRESP),
    .m_axi_z_rowptr_BVALID(z_rowptr_BVALID),
    .m_axi_z_rowptr_BREADY(z_rowptr_BREADY),
    .m_axi_z_rowptr_BRESP(z_rowptr_BRESP),
    .m_axi_z_rowptr_BID(z_rowptr_BID),
    .m_axi_z_rowptr_BUSER(z_rowptr_BUSER),
    .m_axi_z_colind_AWVALID(z_colind_AWVALID),
    .m_axi_z_colind_AWREADY(z_colind_AWREADY),
    .m_axi_z_colind_AWADDR(z_colind_AWADDR),
    .m_axi_z_colind_AWID(z_colind_AWID),
    .m_axi_z_colind_AWLEN(z_colind_AWLEN),
    .m_axi_z_colind_AWSIZE(z_colind_AWSIZE),
    .m_axi_z_colind_AWBURST(z_colind_AWBURST),
    .m_axi_z_colind_AWLOCK(z_colind_AWLOCK),
    .m_axi_z_colind_AWCACHE(z_colind_AWCACHE),
    .m_axi_z_colind_AWPROT(z_colind_AWPROT),
    .m_axi_z_colind_AWQOS(z_colind_AWQOS),
    .m_axi_z_colind_AWREGION(z_colind_AWREGION),
    .m_axi_z_colind_AWUSER(z_colind_AWUSER),
    .m_axi_z_colind_WVALID(z_colind_WVALID),
    .m_axi_z_colind_WREADY(z_colind_WREADY),
    .m_axi_z_colind_WDATA(z_colind_WDATA),
    .m_axi_z_colind_WSTRB(z_colind_WSTRB),
    .m_axi_z_colind_WLAST(z_colind_WLAST),
    .m_axi_z_colind_WID(z_colind_WID),
    .m_axi_z_colind_WUSER(z_colind_WUSER),
    .m_axi_z_colind_ARVALID(z_colind_ARVALID),
    .m_axi_z_colind_ARREADY(z_colind_ARREADY),
    .m_axi_z_colind_ARADDR(z_colind_ARADDR),
    .m_axi_z_colind_ARID(z_colind_ARID),
    .m_axi_z_colind_ARLEN(z_colind_ARLEN),
    .m_axi_z_colind_ARSIZE(z_colind_ARSIZE),
    .m_axi_z_colind_ARBURST(z_colind_ARBURST),
    .m_axi_z_colind_ARLOCK(z_colind_ARLOCK),
    .m_axi_z_colind_ARCACHE(z_colind_ARCACHE),
    .m_axi_z_colind_ARPROT(z_colind_ARPROT),
    .m_axi_z_colind_ARQOS(z_colind_ARQOS),
    .m_axi_z_colind_ARREGION(z_colind_ARREGION),
    .m_axi_z_colind_ARUSER(z_colind_ARUSER),
    .m_axi_z_colind_RVALID(z_colind_RVALID),
    .m_axi_z_colind_RREADY(z_colind_RREADY),
    .m_axi_z_colind_RDATA(z_colind_RDATA),
    .m_axi_z_colind_RLAST(z_colind_RLAST),
    .m_axi_z_colind_RID(z_colind_RID),
    .m_axi_z_colind_RUSER(z_colind_RUSER),
    .m_axi_z_colind_RRESP(z_colind_RRESP),
    .m_axi_z_colind_BVALID(z_colind_BVALID),
    .m_axi_z_colind_BREADY(z_colind_BREADY),
    .m_axi_z_colind_BRESP(z_colind_BRESP),
    .m_axi_z_colind_BID(z_colind_BID),
    .m_axi_z_colind_BUSER(z_colind_BUSER),
    .m_axi_z_data_AWVALID(z_data_AWVALID),
    .m_axi_z_data_AWREADY(z_data_AWREADY),
    .m_axi_z_data_AWADDR(z_data_AWADDR),
    .m_axi_z_data_AWID(z_data_AWID),
    .m_axi_z_data_AWLEN(z_data_AWLEN),
    .m_axi_z_data_AWSIZE(z_data_AWSIZE),
    .m_axi_z_data_AWBURST(z_data_AWBURST),
    .m_axi_z_data_AWLOCK(z_data_AWLOCK),
    .m_axi_z_data_AWCACHE(z_data_AWCACHE),
    .m_axi_z_data_AWPROT(z_data_AWPROT),
    .m_axi_z_data_AWQOS(z_data_AWQOS),
    .m_axi_z_data_AWREGION(z_data_AWREGION),
    .m_axi_z_data_AWUSER(z_data_AWUSER),
    .m_axi_z_data_WVALID(z_data_WVALID),
    .m_axi_z_data_WREADY(z_data_WREADY),
    .m_axi_z_data_WDATA(z_data_WDATA),
    .m_axi_z_data_WSTRB(z_data_WSTRB),
    .m_axi_z_data_WLAST(z_data_WLAST),
    .m_axi_z_data_WID(z_data_WID),
    .m_axi_z_data_WUSER(z_data_WUSER),
    .m_axi_z_data_ARVALID(z_data_ARVALID),
    .m_axi_z_data_ARREADY(z_data_ARREADY),
    .m_axi_z_data_ARADDR(z_data_ARADDR),
    .m_axi_z_data_ARID(z_data_ARID),
    .m_axi_z_data_ARLEN(z_data_ARLEN),
    .m_axi_z_data_ARSIZE(z_data_ARSIZE),
    .m_axi_z_data_ARBURST(z_data_ARBURST),
    .m_axi_z_data_ARLOCK(z_data_ARLOCK),
    .m_axi_z_data_ARCACHE(z_data_ARCACHE),
    .m_axi_z_data_ARPROT(z_data_ARPROT),
    .m_axi_z_data_ARQOS(z_data_ARQOS),
    .m_axi_z_data_ARREGION(z_data_ARREGION),
    .m_axi_z_data_ARUSER(z_data_ARUSER),
    .m_axi_z_data_RVALID(z_data_RVALID),
    .m_axi_z_data_RREADY(z_data_RREADY),
    .m_axi_z_data_RDATA(z_data_RDATA),
    .m_axi_z_data_RLAST(z_data_RLAST),
    .m_axi_z_data_RID(z_data_RID),
    .m_axi_z_data_RUSER(z_data_RUSER),
    .m_axi_z_data_RRESP(z_data_RRESP),
    .m_axi_z_data_BVALID(z_data_BVALID),
    .m_axi_z_data_BREADY(z_data_BREADY),
    .m_axi_z_data_BRESP(z_data_BRESP),
    .m_axi_z_data_BID(z_data_BID),
    .m_axi_z_data_BUSER(z_data_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end









wire    AESL_axi_master_x_rowptr_ready;
wire    AESL_axi_master_x_rowptr_done;
AESL_axi_master_x_rowptr AESL_AXI_MASTER_x_rowptr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_x_rowptr_AWVALID (x_rowptr_AWVALID),
    .TRAN_x_rowptr_AWREADY (x_rowptr_AWREADY),
    .TRAN_x_rowptr_AWADDR (x_rowptr_AWADDR),
    .TRAN_x_rowptr_AWID (x_rowptr_AWID),
    .TRAN_x_rowptr_AWLEN (x_rowptr_AWLEN),
    .TRAN_x_rowptr_AWSIZE (x_rowptr_AWSIZE),
    .TRAN_x_rowptr_AWBURST (x_rowptr_AWBURST),
    .TRAN_x_rowptr_AWLOCK (x_rowptr_AWLOCK),
    .TRAN_x_rowptr_AWCACHE (x_rowptr_AWCACHE),
    .TRAN_x_rowptr_AWPROT (x_rowptr_AWPROT),
    .TRAN_x_rowptr_AWQOS (x_rowptr_AWQOS),
    .TRAN_x_rowptr_AWREGION (x_rowptr_AWREGION),
    .TRAN_x_rowptr_AWUSER (x_rowptr_AWUSER),
    .TRAN_x_rowptr_WVALID (x_rowptr_WVALID),
    .TRAN_x_rowptr_WREADY (x_rowptr_WREADY),
    .TRAN_x_rowptr_WDATA (x_rowptr_WDATA),
    .TRAN_x_rowptr_WSTRB (x_rowptr_WSTRB),
    .TRAN_x_rowptr_WLAST (x_rowptr_WLAST),
    .TRAN_x_rowptr_WID (x_rowptr_WID),
    .TRAN_x_rowptr_WUSER (x_rowptr_WUSER),
    .TRAN_x_rowptr_ARVALID (x_rowptr_ARVALID),
    .TRAN_x_rowptr_ARREADY (x_rowptr_ARREADY),
    .TRAN_x_rowptr_ARADDR (x_rowptr_ARADDR),
    .TRAN_x_rowptr_ARID (x_rowptr_ARID),
    .TRAN_x_rowptr_ARLEN (x_rowptr_ARLEN),
    .TRAN_x_rowptr_ARSIZE (x_rowptr_ARSIZE),
    .TRAN_x_rowptr_ARBURST (x_rowptr_ARBURST),
    .TRAN_x_rowptr_ARLOCK (x_rowptr_ARLOCK),
    .TRAN_x_rowptr_ARCACHE (x_rowptr_ARCACHE),
    .TRAN_x_rowptr_ARPROT (x_rowptr_ARPROT),
    .TRAN_x_rowptr_ARQOS (x_rowptr_ARQOS),
    .TRAN_x_rowptr_ARREGION (x_rowptr_ARREGION),
    .TRAN_x_rowptr_ARUSER (x_rowptr_ARUSER),
    .TRAN_x_rowptr_RVALID (x_rowptr_RVALID),
    .TRAN_x_rowptr_RREADY (x_rowptr_RREADY),
    .TRAN_x_rowptr_RDATA (x_rowptr_RDATA),
    .TRAN_x_rowptr_RLAST (x_rowptr_RLAST),
    .TRAN_x_rowptr_RID (x_rowptr_RID),
    .TRAN_x_rowptr_RUSER (x_rowptr_RUSER),
    .TRAN_x_rowptr_RRESP (x_rowptr_RRESP),
    .TRAN_x_rowptr_BVALID (x_rowptr_BVALID),
    .TRAN_x_rowptr_BREADY (x_rowptr_BREADY),
    .TRAN_x_rowptr_BRESP (x_rowptr_BRESP),
    .TRAN_x_rowptr_BID (x_rowptr_BID),
    .TRAN_x_rowptr_BUSER (x_rowptr_BUSER),
    .ready (AESL_axi_master_x_rowptr_ready),
    .done  (AESL_axi_master_x_rowptr_done)
);
assign    AESL_axi_master_x_rowptr_ready    =   ready;
assign    AESL_axi_master_x_rowptr_done    =   AESL_done_delay;
wire    AESL_axi_master_x_colind_ready;
wire    AESL_axi_master_x_colind_done;
AESL_axi_master_x_colind AESL_AXI_MASTER_x_colind(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_x_colind_AWVALID (x_colind_AWVALID),
    .TRAN_x_colind_AWREADY (x_colind_AWREADY),
    .TRAN_x_colind_AWADDR (x_colind_AWADDR),
    .TRAN_x_colind_AWID (x_colind_AWID),
    .TRAN_x_colind_AWLEN (x_colind_AWLEN),
    .TRAN_x_colind_AWSIZE (x_colind_AWSIZE),
    .TRAN_x_colind_AWBURST (x_colind_AWBURST),
    .TRAN_x_colind_AWLOCK (x_colind_AWLOCK),
    .TRAN_x_colind_AWCACHE (x_colind_AWCACHE),
    .TRAN_x_colind_AWPROT (x_colind_AWPROT),
    .TRAN_x_colind_AWQOS (x_colind_AWQOS),
    .TRAN_x_colind_AWREGION (x_colind_AWREGION),
    .TRAN_x_colind_AWUSER (x_colind_AWUSER),
    .TRAN_x_colind_WVALID (x_colind_WVALID),
    .TRAN_x_colind_WREADY (x_colind_WREADY),
    .TRAN_x_colind_WDATA (x_colind_WDATA),
    .TRAN_x_colind_WSTRB (x_colind_WSTRB),
    .TRAN_x_colind_WLAST (x_colind_WLAST),
    .TRAN_x_colind_WID (x_colind_WID),
    .TRAN_x_colind_WUSER (x_colind_WUSER),
    .TRAN_x_colind_ARVALID (x_colind_ARVALID),
    .TRAN_x_colind_ARREADY (x_colind_ARREADY),
    .TRAN_x_colind_ARADDR (x_colind_ARADDR),
    .TRAN_x_colind_ARID (x_colind_ARID),
    .TRAN_x_colind_ARLEN (x_colind_ARLEN),
    .TRAN_x_colind_ARSIZE (x_colind_ARSIZE),
    .TRAN_x_colind_ARBURST (x_colind_ARBURST),
    .TRAN_x_colind_ARLOCK (x_colind_ARLOCK),
    .TRAN_x_colind_ARCACHE (x_colind_ARCACHE),
    .TRAN_x_colind_ARPROT (x_colind_ARPROT),
    .TRAN_x_colind_ARQOS (x_colind_ARQOS),
    .TRAN_x_colind_ARREGION (x_colind_ARREGION),
    .TRAN_x_colind_ARUSER (x_colind_ARUSER),
    .TRAN_x_colind_RVALID (x_colind_RVALID),
    .TRAN_x_colind_RREADY (x_colind_RREADY),
    .TRAN_x_colind_RDATA (x_colind_RDATA),
    .TRAN_x_colind_RLAST (x_colind_RLAST),
    .TRAN_x_colind_RID (x_colind_RID),
    .TRAN_x_colind_RUSER (x_colind_RUSER),
    .TRAN_x_colind_RRESP (x_colind_RRESP),
    .TRAN_x_colind_BVALID (x_colind_BVALID),
    .TRAN_x_colind_BREADY (x_colind_BREADY),
    .TRAN_x_colind_BRESP (x_colind_BRESP),
    .TRAN_x_colind_BID (x_colind_BID),
    .TRAN_x_colind_BUSER (x_colind_BUSER),
    .ready (AESL_axi_master_x_colind_ready),
    .done  (AESL_axi_master_x_colind_done)
);
assign    AESL_axi_master_x_colind_ready    =   ready;
assign    AESL_axi_master_x_colind_done    =   AESL_done_delay;
wire    AESL_axi_master_x_data_ready;
wire    AESL_axi_master_x_data_done;
AESL_axi_master_x_data AESL_AXI_MASTER_x_data(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_x_data_AWVALID (x_data_AWVALID),
    .TRAN_x_data_AWREADY (x_data_AWREADY),
    .TRAN_x_data_AWADDR (x_data_AWADDR),
    .TRAN_x_data_AWID (x_data_AWID),
    .TRAN_x_data_AWLEN (x_data_AWLEN),
    .TRAN_x_data_AWSIZE (x_data_AWSIZE),
    .TRAN_x_data_AWBURST (x_data_AWBURST),
    .TRAN_x_data_AWLOCK (x_data_AWLOCK),
    .TRAN_x_data_AWCACHE (x_data_AWCACHE),
    .TRAN_x_data_AWPROT (x_data_AWPROT),
    .TRAN_x_data_AWQOS (x_data_AWQOS),
    .TRAN_x_data_AWREGION (x_data_AWREGION),
    .TRAN_x_data_AWUSER (x_data_AWUSER),
    .TRAN_x_data_WVALID (x_data_WVALID),
    .TRAN_x_data_WREADY (x_data_WREADY),
    .TRAN_x_data_WDATA (x_data_WDATA),
    .TRAN_x_data_WSTRB (x_data_WSTRB),
    .TRAN_x_data_WLAST (x_data_WLAST),
    .TRAN_x_data_WID (x_data_WID),
    .TRAN_x_data_WUSER (x_data_WUSER),
    .TRAN_x_data_ARVALID (x_data_ARVALID),
    .TRAN_x_data_ARREADY (x_data_ARREADY),
    .TRAN_x_data_ARADDR (x_data_ARADDR),
    .TRAN_x_data_ARID (x_data_ARID),
    .TRAN_x_data_ARLEN (x_data_ARLEN),
    .TRAN_x_data_ARSIZE (x_data_ARSIZE),
    .TRAN_x_data_ARBURST (x_data_ARBURST),
    .TRAN_x_data_ARLOCK (x_data_ARLOCK),
    .TRAN_x_data_ARCACHE (x_data_ARCACHE),
    .TRAN_x_data_ARPROT (x_data_ARPROT),
    .TRAN_x_data_ARQOS (x_data_ARQOS),
    .TRAN_x_data_ARREGION (x_data_ARREGION),
    .TRAN_x_data_ARUSER (x_data_ARUSER),
    .TRAN_x_data_RVALID (x_data_RVALID),
    .TRAN_x_data_RREADY (x_data_RREADY),
    .TRAN_x_data_RDATA (x_data_RDATA),
    .TRAN_x_data_RLAST (x_data_RLAST),
    .TRAN_x_data_RID (x_data_RID),
    .TRAN_x_data_RUSER (x_data_RUSER),
    .TRAN_x_data_RRESP (x_data_RRESP),
    .TRAN_x_data_BVALID (x_data_BVALID),
    .TRAN_x_data_BREADY (x_data_BREADY),
    .TRAN_x_data_BRESP (x_data_BRESP),
    .TRAN_x_data_BID (x_data_BID),
    .TRAN_x_data_BUSER (x_data_BUSER),
    .ready (AESL_axi_master_x_data_ready),
    .done  (AESL_axi_master_x_data_done)
);
assign    AESL_axi_master_x_data_ready    =   ready;
assign    AESL_axi_master_x_data_done    =   AESL_done_delay;
wire    AESL_axi_master_y_colptr_ready;
wire    AESL_axi_master_y_colptr_done;
AESL_axi_master_y_colptr AESL_AXI_MASTER_y_colptr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_y_colptr_AWVALID (y_colptr_AWVALID),
    .TRAN_y_colptr_AWREADY (y_colptr_AWREADY),
    .TRAN_y_colptr_AWADDR (y_colptr_AWADDR),
    .TRAN_y_colptr_AWID (y_colptr_AWID),
    .TRAN_y_colptr_AWLEN (y_colptr_AWLEN),
    .TRAN_y_colptr_AWSIZE (y_colptr_AWSIZE),
    .TRAN_y_colptr_AWBURST (y_colptr_AWBURST),
    .TRAN_y_colptr_AWLOCK (y_colptr_AWLOCK),
    .TRAN_y_colptr_AWCACHE (y_colptr_AWCACHE),
    .TRAN_y_colptr_AWPROT (y_colptr_AWPROT),
    .TRAN_y_colptr_AWQOS (y_colptr_AWQOS),
    .TRAN_y_colptr_AWREGION (y_colptr_AWREGION),
    .TRAN_y_colptr_AWUSER (y_colptr_AWUSER),
    .TRAN_y_colptr_WVALID (y_colptr_WVALID),
    .TRAN_y_colptr_WREADY (y_colptr_WREADY),
    .TRAN_y_colptr_WDATA (y_colptr_WDATA),
    .TRAN_y_colptr_WSTRB (y_colptr_WSTRB),
    .TRAN_y_colptr_WLAST (y_colptr_WLAST),
    .TRAN_y_colptr_WID (y_colptr_WID),
    .TRAN_y_colptr_WUSER (y_colptr_WUSER),
    .TRAN_y_colptr_ARVALID (y_colptr_ARVALID),
    .TRAN_y_colptr_ARREADY (y_colptr_ARREADY),
    .TRAN_y_colptr_ARADDR (y_colptr_ARADDR),
    .TRAN_y_colptr_ARID (y_colptr_ARID),
    .TRAN_y_colptr_ARLEN (y_colptr_ARLEN),
    .TRAN_y_colptr_ARSIZE (y_colptr_ARSIZE),
    .TRAN_y_colptr_ARBURST (y_colptr_ARBURST),
    .TRAN_y_colptr_ARLOCK (y_colptr_ARLOCK),
    .TRAN_y_colptr_ARCACHE (y_colptr_ARCACHE),
    .TRAN_y_colptr_ARPROT (y_colptr_ARPROT),
    .TRAN_y_colptr_ARQOS (y_colptr_ARQOS),
    .TRAN_y_colptr_ARREGION (y_colptr_ARREGION),
    .TRAN_y_colptr_ARUSER (y_colptr_ARUSER),
    .TRAN_y_colptr_RVALID (y_colptr_RVALID),
    .TRAN_y_colptr_RREADY (y_colptr_RREADY),
    .TRAN_y_colptr_RDATA (y_colptr_RDATA),
    .TRAN_y_colptr_RLAST (y_colptr_RLAST),
    .TRAN_y_colptr_RID (y_colptr_RID),
    .TRAN_y_colptr_RUSER (y_colptr_RUSER),
    .TRAN_y_colptr_RRESP (y_colptr_RRESP),
    .TRAN_y_colptr_BVALID (y_colptr_BVALID),
    .TRAN_y_colptr_BREADY (y_colptr_BREADY),
    .TRAN_y_colptr_BRESP (y_colptr_BRESP),
    .TRAN_y_colptr_BID (y_colptr_BID),
    .TRAN_y_colptr_BUSER (y_colptr_BUSER),
    .ready (AESL_axi_master_y_colptr_ready),
    .done  (AESL_axi_master_y_colptr_done)
);
assign    AESL_axi_master_y_colptr_ready    =   ready;
assign    AESL_axi_master_y_colptr_done    =   AESL_done_delay;
wire    AESL_axi_master_y_rowind_ready;
wire    AESL_axi_master_y_rowind_done;
AESL_axi_master_y_rowind AESL_AXI_MASTER_y_rowind(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_y_rowind_AWVALID (y_rowind_AWVALID),
    .TRAN_y_rowind_AWREADY (y_rowind_AWREADY),
    .TRAN_y_rowind_AWADDR (y_rowind_AWADDR),
    .TRAN_y_rowind_AWID (y_rowind_AWID),
    .TRAN_y_rowind_AWLEN (y_rowind_AWLEN),
    .TRAN_y_rowind_AWSIZE (y_rowind_AWSIZE),
    .TRAN_y_rowind_AWBURST (y_rowind_AWBURST),
    .TRAN_y_rowind_AWLOCK (y_rowind_AWLOCK),
    .TRAN_y_rowind_AWCACHE (y_rowind_AWCACHE),
    .TRAN_y_rowind_AWPROT (y_rowind_AWPROT),
    .TRAN_y_rowind_AWQOS (y_rowind_AWQOS),
    .TRAN_y_rowind_AWREGION (y_rowind_AWREGION),
    .TRAN_y_rowind_AWUSER (y_rowind_AWUSER),
    .TRAN_y_rowind_WVALID (y_rowind_WVALID),
    .TRAN_y_rowind_WREADY (y_rowind_WREADY),
    .TRAN_y_rowind_WDATA (y_rowind_WDATA),
    .TRAN_y_rowind_WSTRB (y_rowind_WSTRB),
    .TRAN_y_rowind_WLAST (y_rowind_WLAST),
    .TRAN_y_rowind_WID (y_rowind_WID),
    .TRAN_y_rowind_WUSER (y_rowind_WUSER),
    .TRAN_y_rowind_ARVALID (y_rowind_ARVALID),
    .TRAN_y_rowind_ARREADY (y_rowind_ARREADY),
    .TRAN_y_rowind_ARADDR (y_rowind_ARADDR),
    .TRAN_y_rowind_ARID (y_rowind_ARID),
    .TRAN_y_rowind_ARLEN (y_rowind_ARLEN),
    .TRAN_y_rowind_ARSIZE (y_rowind_ARSIZE),
    .TRAN_y_rowind_ARBURST (y_rowind_ARBURST),
    .TRAN_y_rowind_ARLOCK (y_rowind_ARLOCK),
    .TRAN_y_rowind_ARCACHE (y_rowind_ARCACHE),
    .TRAN_y_rowind_ARPROT (y_rowind_ARPROT),
    .TRAN_y_rowind_ARQOS (y_rowind_ARQOS),
    .TRAN_y_rowind_ARREGION (y_rowind_ARREGION),
    .TRAN_y_rowind_ARUSER (y_rowind_ARUSER),
    .TRAN_y_rowind_RVALID (y_rowind_RVALID),
    .TRAN_y_rowind_RREADY (y_rowind_RREADY),
    .TRAN_y_rowind_RDATA (y_rowind_RDATA),
    .TRAN_y_rowind_RLAST (y_rowind_RLAST),
    .TRAN_y_rowind_RID (y_rowind_RID),
    .TRAN_y_rowind_RUSER (y_rowind_RUSER),
    .TRAN_y_rowind_RRESP (y_rowind_RRESP),
    .TRAN_y_rowind_BVALID (y_rowind_BVALID),
    .TRAN_y_rowind_BREADY (y_rowind_BREADY),
    .TRAN_y_rowind_BRESP (y_rowind_BRESP),
    .TRAN_y_rowind_BID (y_rowind_BID),
    .TRAN_y_rowind_BUSER (y_rowind_BUSER),
    .ready (AESL_axi_master_y_rowind_ready),
    .done  (AESL_axi_master_y_rowind_done)
);
assign    AESL_axi_master_y_rowind_ready    =   ready;
assign    AESL_axi_master_y_rowind_done    =   AESL_done_delay;
wire    AESL_axi_master_y_data_ready;
wire    AESL_axi_master_y_data_done;
AESL_axi_master_y_data AESL_AXI_MASTER_y_data(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_y_data_AWVALID (y_data_AWVALID),
    .TRAN_y_data_AWREADY (y_data_AWREADY),
    .TRAN_y_data_AWADDR (y_data_AWADDR),
    .TRAN_y_data_AWID (y_data_AWID),
    .TRAN_y_data_AWLEN (y_data_AWLEN),
    .TRAN_y_data_AWSIZE (y_data_AWSIZE),
    .TRAN_y_data_AWBURST (y_data_AWBURST),
    .TRAN_y_data_AWLOCK (y_data_AWLOCK),
    .TRAN_y_data_AWCACHE (y_data_AWCACHE),
    .TRAN_y_data_AWPROT (y_data_AWPROT),
    .TRAN_y_data_AWQOS (y_data_AWQOS),
    .TRAN_y_data_AWREGION (y_data_AWREGION),
    .TRAN_y_data_AWUSER (y_data_AWUSER),
    .TRAN_y_data_WVALID (y_data_WVALID),
    .TRAN_y_data_WREADY (y_data_WREADY),
    .TRAN_y_data_WDATA (y_data_WDATA),
    .TRAN_y_data_WSTRB (y_data_WSTRB),
    .TRAN_y_data_WLAST (y_data_WLAST),
    .TRAN_y_data_WID (y_data_WID),
    .TRAN_y_data_WUSER (y_data_WUSER),
    .TRAN_y_data_ARVALID (y_data_ARVALID),
    .TRAN_y_data_ARREADY (y_data_ARREADY),
    .TRAN_y_data_ARADDR (y_data_ARADDR),
    .TRAN_y_data_ARID (y_data_ARID),
    .TRAN_y_data_ARLEN (y_data_ARLEN),
    .TRAN_y_data_ARSIZE (y_data_ARSIZE),
    .TRAN_y_data_ARBURST (y_data_ARBURST),
    .TRAN_y_data_ARLOCK (y_data_ARLOCK),
    .TRAN_y_data_ARCACHE (y_data_ARCACHE),
    .TRAN_y_data_ARPROT (y_data_ARPROT),
    .TRAN_y_data_ARQOS (y_data_ARQOS),
    .TRAN_y_data_ARREGION (y_data_ARREGION),
    .TRAN_y_data_ARUSER (y_data_ARUSER),
    .TRAN_y_data_RVALID (y_data_RVALID),
    .TRAN_y_data_RREADY (y_data_RREADY),
    .TRAN_y_data_RDATA (y_data_RDATA),
    .TRAN_y_data_RLAST (y_data_RLAST),
    .TRAN_y_data_RID (y_data_RID),
    .TRAN_y_data_RUSER (y_data_RUSER),
    .TRAN_y_data_RRESP (y_data_RRESP),
    .TRAN_y_data_BVALID (y_data_BVALID),
    .TRAN_y_data_BREADY (y_data_BREADY),
    .TRAN_y_data_BRESP (y_data_BRESP),
    .TRAN_y_data_BID (y_data_BID),
    .TRAN_y_data_BUSER (y_data_BUSER),
    .ready (AESL_axi_master_y_data_ready),
    .done  (AESL_axi_master_y_data_done)
);
assign    AESL_axi_master_y_data_ready    =   ready;
assign    AESL_axi_master_y_data_done    =   AESL_done_delay;
wire    AESL_axi_master_z_rowptr_ready;
wire    AESL_axi_master_z_rowptr_done;
AESL_axi_master_z_rowptr AESL_AXI_MASTER_z_rowptr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_z_rowptr_AWVALID (z_rowptr_AWVALID),
    .TRAN_z_rowptr_AWREADY (z_rowptr_AWREADY),
    .TRAN_z_rowptr_AWADDR (z_rowptr_AWADDR),
    .TRAN_z_rowptr_AWID (z_rowptr_AWID),
    .TRAN_z_rowptr_AWLEN (z_rowptr_AWLEN),
    .TRAN_z_rowptr_AWSIZE (z_rowptr_AWSIZE),
    .TRAN_z_rowptr_AWBURST (z_rowptr_AWBURST),
    .TRAN_z_rowptr_AWLOCK (z_rowptr_AWLOCK),
    .TRAN_z_rowptr_AWCACHE (z_rowptr_AWCACHE),
    .TRAN_z_rowptr_AWPROT (z_rowptr_AWPROT),
    .TRAN_z_rowptr_AWQOS (z_rowptr_AWQOS),
    .TRAN_z_rowptr_AWREGION (z_rowptr_AWREGION),
    .TRAN_z_rowptr_AWUSER (z_rowptr_AWUSER),
    .TRAN_z_rowptr_WVALID (z_rowptr_WVALID),
    .TRAN_z_rowptr_WREADY (z_rowptr_WREADY),
    .TRAN_z_rowptr_WDATA (z_rowptr_WDATA),
    .TRAN_z_rowptr_WSTRB (z_rowptr_WSTRB),
    .TRAN_z_rowptr_WLAST (z_rowptr_WLAST),
    .TRAN_z_rowptr_WID (z_rowptr_WID),
    .TRAN_z_rowptr_WUSER (z_rowptr_WUSER),
    .TRAN_z_rowptr_ARVALID (z_rowptr_ARVALID),
    .TRAN_z_rowptr_ARREADY (z_rowptr_ARREADY),
    .TRAN_z_rowptr_ARADDR (z_rowptr_ARADDR),
    .TRAN_z_rowptr_ARID (z_rowptr_ARID),
    .TRAN_z_rowptr_ARLEN (z_rowptr_ARLEN),
    .TRAN_z_rowptr_ARSIZE (z_rowptr_ARSIZE),
    .TRAN_z_rowptr_ARBURST (z_rowptr_ARBURST),
    .TRAN_z_rowptr_ARLOCK (z_rowptr_ARLOCK),
    .TRAN_z_rowptr_ARCACHE (z_rowptr_ARCACHE),
    .TRAN_z_rowptr_ARPROT (z_rowptr_ARPROT),
    .TRAN_z_rowptr_ARQOS (z_rowptr_ARQOS),
    .TRAN_z_rowptr_ARREGION (z_rowptr_ARREGION),
    .TRAN_z_rowptr_ARUSER (z_rowptr_ARUSER),
    .TRAN_z_rowptr_RVALID (z_rowptr_RVALID),
    .TRAN_z_rowptr_RREADY (z_rowptr_RREADY),
    .TRAN_z_rowptr_RDATA (z_rowptr_RDATA),
    .TRAN_z_rowptr_RLAST (z_rowptr_RLAST),
    .TRAN_z_rowptr_RID (z_rowptr_RID),
    .TRAN_z_rowptr_RUSER (z_rowptr_RUSER),
    .TRAN_z_rowptr_RRESP (z_rowptr_RRESP),
    .TRAN_z_rowptr_BVALID (z_rowptr_BVALID),
    .TRAN_z_rowptr_BREADY (z_rowptr_BREADY),
    .TRAN_z_rowptr_BRESP (z_rowptr_BRESP),
    .TRAN_z_rowptr_BID (z_rowptr_BID),
    .TRAN_z_rowptr_BUSER (z_rowptr_BUSER),
    .ready (AESL_axi_master_z_rowptr_ready),
    .done  (AESL_axi_master_z_rowptr_done)
);
assign    AESL_axi_master_z_rowptr_ready    =   ready;
assign    AESL_axi_master_z_rowptr_done    =   AESL_done_delay;
wire    AESL_axi_master_z_colind_ready;
wire    AESL_axi_master_z_colind_done;
AESL_axi_master_z_colind AESL_AXI_MASTER_z_colind(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_z_colind_AWVALID (z_colind_AWVALID),
    .TRAN_z_colind_AWREADY (z_colind_AWREADY),
    .TRAN_z_colind_AWADDR (z_colind_AWADDR),
    .TRAN_z_colind_AWID (z_colind_AWID),
    .TRAN_z_colind_AWLEN (z_colind_AWLEN),
    .TRAN_z_colind_AWSIZE (z_colind_AWSIZE),
    .TRAN_z_colind_AWBURST (z_colind_AWBURST),
    .TRAN_z_colind_AWLOCK (z_colind_AWLOCK),
    .TRAN_z_colind_AWCACHE (z_colind_AWCACHE),
    .TRAN_z_colind_AWPROT (z_colind_AWPROT),
    .TRAN_z_colind_AWQOS (z_colind_AWQOS),
    .TRAN_z_colind_AWREGION (z_colind_AWREGION),
    .TRAN_z_colind_AWUSER (z_colind_AWUSER),
    .TRAN_z_colind_WVALID (z_colind_WVALID),
    .TRAN_z_colind_WREADY (z_colind_WREADY),
    .TRAN_z_colind_WDATA (z_colind_WDATA),
    .TRAN_z_colind_WSTRB (z_colind_WSTRB),
    .TRAN_z_colind_WLAST (z_colind_WLAST),
    .TRAN_z_colind_WID (z_colind_WID),
    .TRAN_z_colind_WUSER (z_colind_WUSER),
    .TRAN_z_colind_ARVALID (z_colind_ARVALID),
    .TRAN_z_colind_ARREADY (z_colind_ARREADY),
    .TRAN_z_colind_ARADDR (z_colind_ARADDR),
    .TRAN_z_colind_ARID (z_colind_ARID),
    .TRAN_z_colind_ARLEN (z_colind_ARLEN),
    .TRAN_z_colind_ARSIZE (z_colind_ARSIZE),
    .TRAN_z_colind_ARBURST (z_colind_ARBURST),
    .TRAN_z_colind_ARLOCK (z_colind_ARLOCK),
    .TRAN_z_colind_ARCACHE (z_colind_ARCACHE),
    .TRAN_z_colind_ARPROT (z_colind_ARPROT),
    .TRAN_z_colind_ARQOS (z_colind_ARQOS),
    .TRAN_z_colind_ARREGION (z_colind_ARREGION),
    .TRAN_z_colind_ARUSER (z_colind_ARUSER),
    .TRAN_z_colind_RVALID (z_colind_RVALID),
    .TRAN_z_colind_RREADY (z_colind_RREADY),
    .TRAN_z_colind_RDATA (z_colind_RDATA),
    .TRAN_z_colind_RLAST (z_colind_RLAST),
    .TRAN_z_colind_RID (z_colind_RID),
    .TRAN_z_colind_RUSER (z_colind_RUSER),
    .TRAN_z_colind_RRESP (z_colind_RRESP),
    .TRAN_z_colind_BVALID (z_colind_BVALID),
    .TRAN_z_colind_BREADY (z_colind_BREADY),
    .TRAN_z_colind_BRESP (z_colind_BRESP),
    .TRAN_z_colind_BID (z_colind_BID),
    .TRAN_z_colind_BUSER (z_colind_BUSER),
    .ready (AESL_axi_master_z_colind_ready),
    .done  (AESL_axi_master_z_colind_done)
);
assign    AESL_axi_master_z_colind_ready    =   ready;
assign    AESL_axi_master_z_colind_done    =   AESL_done_delay;
wire    AESL_axi_master_z_data_ready;
wire    AESL_axi_master_z_data_done;
AESL_axi_master_z_data AESL_AXI_MASTER_z_data(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_z_data_AWVALID (z_data_AWVALID),
    .TRAN_z_data_AWREADY (z_data_AWREADY),
    .TRAN_z_data_AWADDR (z_data_AWADDR),
    .TRAN_z_data_AWID (z_data_AWID),
    .TRAN_z_data_AWLEN (z_data_AWLEN),
    .TRAN_z_data_AWSIZE (z_data_AWSIZE),
    .TRAN_z_data_AWBURST (z_data_AWBURST),
    .TRAN_z_data_AWLOCK (z_data_AWLOCK),
    .TRAN_z_data_AWCACHE (z_data_AWCACHE),
    .TRAN_z_data_AWPROT (z_data_AWPROT),
    .TRAN_z_data_AWQOS (z_data_AWQOS),
    .TRAN_z_data_AWREGION (z_data_AWREGION),
    .TRAN_z_data_AWUSER (z_data_AWUSER),
    .TRAN_z_data_WVALID (z_data_WVALID),
    .TRAN_z_data_WREADY (z_data_WREADY),
    .TRAN_z_data_WDATA (z_data_WDATA),
    .TRAN_z_data_WSTRB (z_data_WSTRB),
    .TRAN_z_data_WLAST (z_data_WLAST),
    .TRAN_z_data_WID (z_data_WID),
    .TRAN_z_data_WUSER (z_data_WUSER),
    .TRAN_z_data_ARVALID (z_data_ARVALID),
    .TRAN_z_data_ARREADY (z_data_ARREADY),
    .TRAN_z_data_ARADDR (z_data_ARADDR),
    .TRAN_z_data_ARID (z_data_ARID),
    .TRAN_z_data_ARLEN (z_data_ARLEN),
    .TRAN_z_data_ARSIZE (z_data_ARSIZE),
    .TRAN_z_data_ARBURST (z_data_ARBURST),
    .TRAN_z_data_ARLOCK (z_data_ARLOCK),
    .TRAN_z_data_ARCACHE (z_data_ARCACHE),
    .TRAN_z_data_ARPROT (z_data_ARPROT),
    .TRAN_z_data_ARQOS (z_data_ARQOS),
    .TRAN_z_data_ARREGION (z_data_ARREGION),
    .TRAN_z_data_ARUSER (z_data_ARUSER),
    .TRAN_z_data_RVALID (z_data_RVALID),
    .TRAN_z_data_RREADY (z_data_RREADY),
    .TRAN_z_data_RDATA (z_data_RDATA),
    .TRAN_z_data_RLAST (z_data_RLAST),
    .TRAN_z_data_RID (z_data_RID),
    .TRAN_z_data_RUSER (z_data_RUSER),
    .TRAN_z_data_RRESP (z_data_RRESP),
    .TRAN_z_data_BVALID (z_data_BVALID),
    .TRAN_z_data_BREADY (z_data_BREADY),
    .TRAN_z_data_BRESP (z_data_BRESP),
    .TRAN_z_data_BID (z_data_BID),
    .TRAN_z_data_BUSER (z_data_BUSER),
    .ready (AESL_axi_master_z_data_ready),
    .done  (AESL_axi_master_z_data_done)
);
assign    AESL_axi_master_z_data_ready    =   ready;
assign    AESL_axi_master_z_data_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_x_rowptr;
reg [31:0] size_x_rowptr;
reg [31:0] size_x_rowptr_backup;
reg end_x_colind;
reg [31:0] size_x_colind;
reg [31:0] size_x_colind_backup;
reg end_x_data;
reg [31:0] size_x_data;
reg [31:0] size_x_data_backup;
reg end_y_colptr;
reg [31:0] size_y_colptr;
reg [31:0] size_y_colptr_backup;
reg end_y_rowind;
reg [31:0] size_y_rowind;
reg [31:0] size_y_rowind_backup;
reg end_y_data;
reg [31:0] size_y_data;
reg [31:0] size_y_data_backup;
reg end_z_rowptr;
reg [31:0] size_z_rowptr;
reg [31:0] size_z_rowptr_backup;
reg end_z_colind;
reg [31:0] size_z_colind;
reg [31:0] size_z_colind_backup;
reg end_z_data;
reg [31:0] size_z_data;
reg [31:0] size_z_data_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_z_rowptr;

initial begin : dump_tvout_runtime_sign_z_rowptr
    integer fp;
    dump_tvout_finish_z_rowptr = 0;
    fp = $fopen(`AUTOTB_TVOUT_z_rowptr_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_rowptr_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_z_rowptr_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_rowptr_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_z_rowptr = 1;
end


reg dump_tvout_finish_z_colind;

initial begin : dump_tvout_runtime_sign_z_colind
    integer fp;
    dump_tvout_finish_z_colind = 0;
    fp = $fopen(`AUTOTB_TVOUT_z_colind_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_colind_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_z_colind_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_colind_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_z_colind = 1;
end


reg dump_tvout_finish_z_data;

initial begin : dump_tvout_runtime_sign_z_data
    integer fp;
    dump_tvout_finish_z_data = 0;
    fp = $fopen(`AUTOTB_TVOUT_z_data_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_z_data_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_z_data_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_z_data = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
