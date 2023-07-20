// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module row_product_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [63:0]                   x_rowptr,
    output wire [63:0]                   x_colind,
    output wire [63:0]                   x_data,
    output wire [63:0]                   y_rowptr,
    output wire [63:0]                   y_colind,
    output wire [63:0]                   y_data,
    output wire [63:0]                   z_rowptr,
    output wire [63:0]                   z_colind,
    output wire [63:0]                   z_data
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of x_rowptr
//        bit 31~0 - x_rowptr[31:0] (Read/Write)
// 0x14 : Data signal of x_rowptr
//        bit 31~0 - x_rowptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of x_colind
//        bit 31~0 - x_colind[31:0] (Read/Write)
// 0x20 : Data signal of x_colind
//        bit 31~0 - x_colind[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of x_data
//        bit 31~0 - x_data[31:0] (Read/Write)
// 0x2c : Data signal of x_data
//        bit 31~0 - x_data[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of y_rowptr
//        bit 31~0 - y_rowptr[31:0] (Read/Write)
// 0x38 : Data signal of y_rowptr
//        bit 31~0 - y_rowptr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of y_colind
//        bit 31~0 - y_colind[31:0] (Read/Write)
// 0x44 : Data signal of y_colind
//        bit 31~0 - y_colind[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of y_data
//        bit 31~0 - y_data[31:0] (Read/Write)
// 0x50 : Data signal of y_data
//        bit 31~0 - y_data[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of z_rowptr
//        bit 31~0 - z_rowptr[31:0] (Read/Write)
// 0x5c : Data signal of z_rowptr
//        bit 31~0 - z_rowptr[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of z_colind
//        bit 31~0 - z_colind[31:0] (Read/Write)
// 0x68 : Data signal of z_colind
//        bit 31~0 - z_colind[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of z_data
//        bit 31~0 - z_data[31:0] (Read/Write)
// 0x74 : Data signal of z_data
//        bit 31~0 - z_data[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_X_ROWPTR_DATA_0 = 7'h10,
    ADDR_X_ROWPTR_DATA_1 = 7'h14,
    ADDR_X_ROWPTR_CTRL   = 7'h18,
    ADDR_X_COLIND_DATA_0 = 7'h1c,
    ADDR_X_COLIND_DATA_1 = 7'h20,
    ADDR_X_COLIND_CTRL   = 7'h24,
    ADDR_X_DATA_DATA_0   = 7'h28,
    ADDR_X_DATA_DATA_1   = 7'h2c,
    ADDR_X_DATA_CTRL     = 7'h30,
    ADDR_Y_ROWPTR_DATA_0 = 7'h34,
    ADDR_Y_ROWPTR_DATA_1 = 7'h38,
    ADDR_Y_ROWPTR_CTRL   = 7'h3c,
    ADDR_Y_COLIND_DATA_0 = 7'h40,
    ADDR_Y_COLIND_DATA_1 = 7'h44,
    ADDR_Y_COLIND_CTRL   = 7'h48,
    ADDR_Y_DATA_DATA_0   = 7'h4c,
    ADDR_Y_DATA_DATA_1   = 7'h50,
    ADDR_Y_DATA_CTRL     = 7'h54,
    ADDR_Z_ROWPTR_DATA_0 = 7'h58,
    ADDR_Z_ROWPTR_DATA_1 = 7'h5c,
    ADDR_Z_ROWPTR_CTRL   = 7'h60,
    ADDR_Z_COLIND_DATA_0 = 7'h64,
    ADDR_Z_COLIND_DATA_1 = 7'h68,
    ADDR_Z_COLIND_CTRL   = 7'h6c,
    ADDR_Z_DATA_DATA_0   = 7'h70,
    ADDR_Z_DATA_DATA_1   = 7'h74,
    ADDR_Z_DATA_CTRL     = 7'h78,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    WRRESET              = 2'd3,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    RDRESET              = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [63:0]                   int_x_rowptr = 'b0;
    reg  [63:0]                   int_x_colind = 'b0;
    reg  [63:0]                   int_x_data = 'b0;
    reg  [63:0]                   int_y_rowptr = 'b0;
    reg  [63:0]                   int_y_colind = 'b0;
    reg  [63:0]                   int_y_data = 'b0;
    reg  [63:0]                   int_z_rowptr = 'b0;
    reg  [63:0]                   int_z_colind = 'b0;
    reg  [63:0]                   int_z_data = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_X_ROWPTR_DATA_0: begin
                    rdata <= int_x_rowptr[31:0];
                end
                ADDR_X_ROWPTR_DATA_1: begin
                    rdata <= int_x_rowptr[63:32];
                end
                ADDR_X_COLIND_DATA_0: begin
                    rdata <= int_x_colind[31:0];
                end
                ADDR_X_COLIND_DATA_1: begin
                    rdata <= int_x_colind[63:32];
                end
                ADDR_X_DATA_DATA_0: begin
                    rdata <= int_x_data[31:0];
                end
                ADDR_X_DATA_DATA_1: begin
                    rdata <= int_x_data[63:32];
                end
                ADDR_Y_ROWPTR_DATA_0: begin
                    rdata <= int_y_rowptr[31:0];
                end
                ADDR_Y_ROWPTR_DATA_1: begin
                    rdata <= int_y_rowptr[63:32];
                end
                ADDR_Y_COLIND_DATA_0: begin
                    rdata <= int_y_colind[31:0];
                end
                ADDR_Y_COLIND_DATA_1: begin
                    rdata <= int_y_colind[63:32];
                end
                ADDR_Y_DATA_DATA_0: begin
                    rdata <= int_y_data[31:0];
                end
                ADDR_Y_DATA_DATA_1: begin
                    rdata <= int_y_data[63:32];
                end
                ADDR_Z_ROWPTR_DATA_0: begin
                    rdata <= int_z_rowptr[31:0];
                end
                ADDR_Z_ROWPTR_DATA_1: begin
                    rdata <= int_z_rowptr[63:32];
                end
                ADDR_Z_COLIND_DATA_0: begin
                    rdata <= int_z_colind[31:0];
                end
                ADDR_Z_COLIND_DATA_1: begin
                    rdata <= int_z_colind[63:32];
                end
                ADDR_Z_DATA_DATA_0: begin
                    rdata <= int_z_data[31:0];
                end
                ADDR_Z_DATA_DATA_1: begin
                    rdata <= int_z_data[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign x_rowptr = int_x_rowptr;
assign x_colind = int_x_colind;
assign x_data   = int_x_data;
assign y_rowptr = int_y_rowptr;
assign y_colind = int_y_colind;
assign y_data   = int_y_data;
assign z_rowptr = int_z_rowptr;
assign z_colind = int_z_colind;
assign z_data   = int_z_data;
// int_x_rowptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_rowptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_ROWPTR_DATA_0)
            int_x_rowptr[31:0] <= (WDATA[31:0] & wmask) | (int_x_rowptr[31:0] & ~wmask);
    end
end

// int_x_rowptr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_rowptr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_ROWPTR_DATA_1)
            int_x_rowptr[63:32] <= (WDATA[31:0] & wmask) | (int_x_rowptr[63:32] & ~wmask);
    end
end

// int_x_colind[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_colind[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_COLIND_DATA_0)
            int_x_colind[31:0] <= (WDATA[31:0] & wmask) | (int_x_colind[31:0] & ~wmask);
    end
end

// int_x_colind[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_colind[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_COLIND_DATA_1)
            int_x_colind[63:32] <= (WDATA[31:0] & wmask) | (int_x_colind[63:32] & ~wmask);
    end
end

// int_x_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_DATA_DATA_0)
            int_x_data[31:0] <= (WDATA[31:0] & wmask) | (int_x_data[31:0] & ~wmask);
    end
end

// int_x_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_DATA_DATA_1)
            int_x_data[63:32] <= (WDATA[31:0] & wmask) | (int_x_data[63:32] & ~wmask);
    end
end

// int_y_rowptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_rowptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_ROWPTR_DATA_0)
            int_y_rowptr[31:0] <= (WDATA[31:0] & wmask) | (int_y_rowptr[31:0] & ~wmask);
    end
end

// int_y_rowptr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_rowptr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_ROWPTR_DATA_1)
            int_y_rowptr[63:32] <= (WDATA[31:0] & wmask) | (int_y_rowptr[63:32] & ~wmask);
    end
end

// int_y_colind[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_colind[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_COLIND_DATA_0)
            int_y_colind[31:0] <= (WDATA[31:0] & wmask) | (int_y_colind[31:0] & ~wmask);
    end
end

// int_y_colind[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_colind[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_COLIND_DATA_1)
            int_y_colind[63:32] <= (WDATA[31:0] & wmask) | (int_y_colind[63:32] & ~wmask);
    end
end

// int_y_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_DATA_DATA_0)
            int_y_data[31:0] <= (WDATA[31:0] & wmask) | (int_y_data[31:0] & ~wmask);
    end
end

// int_y_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_y_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y_DATA_DATA_1)
            int_y_data[63:32] <= (WDATA[31:0] & wmask) | (int_y_data[63:32] & ~wmask);
    end
end

// int_z_rowptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_rowptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_ROWPTR_DATA_0)
            int_z_rowptr[31:0] <= (WDATA[31:0] & wmask) | (int_z_rowptr[31:0] & ~wmask);
    end
end

// int_z_rowptr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_rowptr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_ROWPTR_DATA_1)
            int_z_rowptr[63:32] <= (WDATA[31:0] & wmask) | (int_z_rowptr[63:32] & ~wmask);
    end
end

// int_z_colind[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_colind[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_COLIND_DATA_0)
            int_z_colind[31:0] <= (WDATA[31:0] & wmask) | (int_z_colind[31:0] & ~wmask);
    end
end

// int_z_colind[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_colind[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_COLIND_DATA_1)
            int_z_colind[63:32] <= (WDATA[31:0] & wmask) | (int_z_colind[63:32] & ~wmask);
    end
end

// int_z_data[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_data[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_DATA_DATA_0)
            int_z_data[31:0] <= (WDATA[31:0] & wmask) | (int_z_data[31:0] & ~wmask);
    end
end

// int_z_data[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_z_data[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Z_DATA_DATA_1)
            int_z_data[63:32] <= (WDATA[31:0] & wmask) | (int_z_data[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
