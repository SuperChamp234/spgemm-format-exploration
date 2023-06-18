// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module multiply_row_col (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        agg_result_rowptr_address0,
        agg_result_rowptr_ce0,
        agg_result_rowptr_we0,
        agg_result_rowptr_d0,
        agg_result_colind_address0,
        agg_result_colind_ce0,
        agg_result_colind_we0,
        agg_result_colind_d0,
        agg_result_data_V_address0,
        agg_result_data_V_ce0,
        agg_result_data_V_we0,
        agg_result_data_V_d0,
        row_V_address0,
        row_V_ce0,
        row_V_q0,
        col_V_address0,
        col_V_ce0,
        col_V_q0
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] agg_result_rowptr_address0;
output   agg_result_rowptr_ce0;
output   agg_result_rowptr_we0;
output  [31:0] agg_result_rowptr_d0;
output  [4:0] agg_result_colind_address0;
output   agg_result_colind_ce0;
output   agg_result_colind_we0;
output  [2:0] agg_result_colind_d0;
output  [4:0] agg_result_data_V_address0;
output   agg_result_data_V_ce0;
output   agg_result_data_V_we0;
output  [31:0] agg_result_data_V_d0;
output  [2:0] row_V_address0;
output   row_V_ce0;
input  [31:0] row_V_q0;
output  [1:0] col_V_address0;
output   col_V_ce0;
input  [31:0] col_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] agg_result_rowptr_address0;
reg agg_result_rowptr_ce0;
reg agg_result_rowptr_we0;
reg[31:0] agg_result_rowptr_d0;
reg agg_result_colind_ce0;
reg agg_result_colind_we0;
reg agg_result_data_V_ce0;
reg agg_result_data_V_we0;
reg row_V_ce0;
reg col_V_ce0;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_2_fu_154_p2;
reg   [2:0] i_2_reg_240;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond1_fu_148_p2;
wire  signed [47:0] tmp_6_cast_fu_165_p1;
reg  signed [47:0] tmp_6_cast_reg_251;
wire    ap_CS_fsm_state3;
wire   [2:0] j_1_fu_175_p2;
reg   [2:0] j_1_reg_259;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_169_p2;
reg   [31:0] row_V_load_reg_269;
wire    ap_CS_fsm_state5;
reg   [31:0] prod_V_reg_274;
wire    ap_CS_fsm_state6;
reg   [2:0] i_reg_115;
reg   [2:0] j_reg_126;
wire    ap_CS_fsm_state7;
wire   [63:0] tmp_fu_160_p1;
wire   [63:0] tmp_9_fu_181_p1;
wire   [63:0] tmp_8_fu_186_p1;
wire  signed [63:0] tmp_2_fu_213_p1;
wire   [0:0] tmp_1_fu_208_p2;
reg   [31:0] z_idx_fu_36;
wire   [31:0] z_idx_1_fu_219_p2;
wire  signed [31:0] r_V_fu_193_p0;
wire  signed [31:0] r_V_fu_193_p1;
wire   [47:0] r_V_fu_193_p2;
wire  signed [31:0] tmp_2_fu_213_p0;
wire  signed [31:0] z_idx_1_fu_219_p0;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_reg_115 <= i_2_reg_240;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_115 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_reg_126 <= j_1_reg_259;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_126 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        z_idx_fu_36 <= z_idx_1_fu_219_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        z_idx_fu_36 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_2_reg_240 <= i_2_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_1_reg_259 <= j_1_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        prod_V_reg_274 <= {{r_V_fu_193_p2[47:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        row_V_load_reg_269 <= row_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_6_cast_reg_251 <= tmp_6_cast_fu_165_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        agg_result_colind_ce0 = 1'b1;
    end else begin
        agg_result_colind_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        agg_result_colind_we0 = 1'b1;
    end else begin
        agg_result_colind_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        agg_result_data_V_ce0 = 1'b1;
    end else begin
        agg_result_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        agg_result_data_V_we0 = 1'b1;
    end else begin
        agg_result_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_rowptr_address0 = tmp_8_fu_186_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        agg_result_rowptr_address0 = 64'd0;
    end else begin
        agg_result_rowptr_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        agg_result_rowptr_ce0 = 1'b1;
    end else begin
        agg_result_rowptr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        agg_result_rowptr_d0 = z_idx_fu_36;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        agg_result_rowptr_d0 = 32'd0;
    end else begin
        agg_result_rowptr_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((exitcond_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        agg_result_rowptr_we0 = 1'b1;
    end else begin
        agg_result_rowptr_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond1_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        col_V_ce0 = 1'b1;
    end else begin
        col_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        row_V_ce0 = 1'b1;
    end else begin
        row_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign agg_result_colind_address0 = tmp_2_fu_213_p1;

assign agg_result_colind_d0 = j_reg_126;

assign agg_result_data_V_address0 = tmp_2_fu_213_p1;

assign agg_result_data_V_d0 = prod_V_reg_274;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign col_V_address0 = tmp_fu_160_p1;

assign exitcond1_fu_148_p2 = ((i_reg_115 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond_fu_169_p2 = ((j_reg_126 == 3'd5) ? 1'b1 : 1'b0);

assign i_2_fu_154_p2 = (i_reg_115 + 3'd1);

assign j_1_fu_175_p2 = (j_reg_126 + 3'd1);

assign r_V_fu_193_p0 = tmp_6_cast_reg_251;

assign r_V_fu_193_p1 = row_V_load_reg_269;

assign r_V_fu_193_p2 = ($signed(r_V_fu_193_p0) * $signed(r_V_fu_193_p1));

assign row_V_address0 = tmp_9_fu_181_p1;

assign tmp_1_fu_208_p2 = ((prod_V_reg_274 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_2_fu_213_p0 = z_idx_fu_36;

assign tmp_2_fu_213_p1 = tmp_2_fu_213_p0;

assign tmp_6_cast_fu_165_p1 = $signed(col_V_q0);

assign tmp_8_fu_186_p1 = i_2_reg_240;

assign tmp_9_fu_181_p1 = j_reg_126;

assign tmp_fu_160_p1 = i_reg_115;

assign z_idx_1_fu_219_p0 = z_idx_fu_36;

assign z_idx_1_fu_219_p2 = ($signed(z_idx_1_fu_219_p0) + $signed(32'd1));

endmodule //multiply_row_col
