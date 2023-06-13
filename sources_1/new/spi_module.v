`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2023 12:40:05 PM
// Design Name: 
// Module Name: spi_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module spi_module
#(
    parameter DATA_WIDTH = 32,
    parameter RD1_WR0 = 1'b1
)
(
    input wire clk_i,
    input wire rst_n,  // active low

    // SPI Interface
    //output wire sck_o,
    //output reg cs_n_o,
    //output reg mosi_o,
    //input wire sck_i,
    //input wire miso_i,
    
    //// SDO Interface
    //input wire [DATA_WIDTH-1:0] sdo_data_i,
    //input wire sdo_valid_i,
    //output reg sdo_ready_o,

    // SPI Interface
    (* MARK_DEBUG = "TRUE" *) output wire sck_o,
    (* MARK_DEBUG = "TRUE" *) output reg cs_n_o,
    (* MARK_DEBUG = "TRUE" *) output reg mosi_o,
    (* MARK_DEBUG = "TRUE" *) input wire sck_i,
    (* MARK_DEBUG = "TRUE" *) input wire miso_i,

    // SDO Interface
    (* MARK_DEBUG = "TRUE" *) input wire [DATA_WIDTH-1:0] sdo_data_i,
    (* MARK_DEBUG = "TRUE" *) input wire sdo_valid_i,
    (* MARK_DEBUG = "TRUE" *) output reg sdo_ready_o,

    // SDI Interface
    input wire sdi_ready_i,
    output reg sdi_ready_o,
    output reg [DATA_WIDTH-1:0] sdi_data_o,
    output reg sdi_valid_o

    //// FSM Interface
    //,output reg [5:0] st_cur
    //,output reg [5:0] st_nxt

    //// Counter Interface
    //,output reg [$clog2(DATA_WIDTH):0] sdo_counter_r
);

wire clk_w;

// parallel to serial counter
(* MARK_DEBUG = "TRUE" *) reg [$clog2(DATA_WIDTH):0] sdo_counter_r;
//reg [$clog2(DATA_WIDTH):0] sdo_counter_r;
reg [$clog2(DATA_WIDTH):0] sdi_counter_r;

// SDO DATA REGISTER
(* MARK_DEBUG = "TRUE" *) reg [DATA_WIDTH-1:0] sdo_data_r;
//reg [DATA_WIDTH-1:0] sdo_data_r;
//reg [DATA_WIDTH-1:0] sdo_data_r1;
//reg [DATA_WIDTH-1:0] sdo_data_r2;
//
//// Extend SDO DATA REGISTER ONE CLOCK CYCLE
//always @(posedge clk_i or negedge rst_n) begin
//    if (!rst_n) begin
//        sdo_data_r1 <= 0;
//    end
//    else begin
//        sdo_data_r1 <= sdo_data_i;
//    end
//end
//always @(negedge clk_i or negedge rst_n) begin
//    if (!rst_n) begin
//        sdo_data_r2 <= 0;
//    end
//    else begin
//        sdo_data_r2 <= sdo_data_r1;
//    end
//end

// machine state decode
localparam IDLE         = 7'b0_000_001;
localparam WRITE_VALID  = 7'b0_000_010;
localparam WRITE_DATA   = 7'b0_000_100;
localparam WRITE_DONE   = 7'b0_001_000;
localparam READ_READY   = 7'b0_010_000;
localparam READ_DATA    = 7'b0_100_000;
localparam READ_DONE    = 7'b1_000_000;

// machine variable
//reg [6:0] st_nxt;
//reg [6:0] st_cur = IDLE;
(* MARK_DEBUG = "TRUE" *) reg [6:0] st_nxt;
(* MARK_DEBUG = "TRUE" *) reg [6:0] st_cur = IDLE;

// (1) state transfer
always @(posedge clk_w or negedge rst_n) begin
    if (!rst_n) begin
        st_cur <= IDLE;
    end
    else begin
        st_cur <= st_nxt;
    end
end

// (2) determine next state, based on current state and input
always @(*) begin
    st_nxt = st_cur;
    case (st_cur)
        IDLE: begin
            if (sdo_valid_i == 1'b1) begin
                st_nxt = WRITE_VALID;
            end
            else if (sdi_ready_i == 1'b1) begin
                st_nxt = READ_READY;
            end
            else begin
                st_nxt = IDLE;
            end
        end

        WRITE_VALID: begin
            if (sdo_valid_i == 1'b1) begin
                st_nxt = WRITE_VALID;
            end
            else begin
                st_nxt = WRITE_DATA;
            end
        end

        WRITE_DATA: begin
            if (sdo_counter_r < DATA_WIDTH) begin
                st_nxt = WRITE_DATA;
            end
            else begin
                st_nxt = WRITE_DONE;
                //st_nxt = READ_READY;
            end
        end

        WRITE_DONE: begin
            if (sdo_valid_i == 1'b1) begin
                st_nxt = WRITE_VALID;
            end
            else begin
                //st_nxt = READ_READY;
                st_nxt = IDLE;
            end
        end

        READ_READY: begin
            if (sdi_ready_i == 1'b1) begin
                st_nxt = READ_READY;
            end
            else begin
                st_nxt = READ_DATA;
            end
        end

        READ_DATA: begin
            if (sdi_counter_r < DATA_WIDTH) begin
                st_nxt = READ_DATA;
            end
            else begin
                st_nxt = READ_DONE;
            end
        end

        READ_DONE: begin
            if (sdi_ready_i == 1'b1) begin
                st_nxt = READ_READY;
            end
            else begin
                st_nxt = IDLE;
            end
        end

        default: st_nxt = IDLE;
    endcase
end

// (3) determine output signal, based on current state and input (Mealy) or current state (Moore)
always @(posedge clk_w or negedge rst_n) begin
    if (!rst_n) begin
        sdi_counter_r <= 1'b0;
        sdi_valid_o <= 1'b0;
        sdi_data_o <= 1'b0;
        sdi_ready_o <= 1'b1;
        sdo_counter_r <= 1'b0;
        sdo_data_r <= 1'b0;
        sdo_ready_o <= 1'b0;
        mosi_o <= 1'b0;
        cs_n_o <= 1'b1;
    end
    else begin
        case (st_nxt)
            IDLE: begin
                sdi_counter_r <= 1'b0;
                sdi_valid_o <= 1'b0;
                sdi_data_o <= 1'b0;
                sdi_ready_o <= 1'b1;
                sdo_counter_r <= 1'b0;
                sdo_data_r <= 1'b0;
                sdo_ready_o <= 1'b0;
                mosi_o <= 1'b0;
                cs_n_o <= 1'b1;
            end

            WRITE_VALID: begin
                sdo_data_r <= sdo_data_i;
            end

            WRITE_DATA: begin
                cs_n_o <= 1'b0;
                sdo_counter_r <= sdo_counter_r + 1'b1;
                mosi_o <= sdo_data_r[(DATA_WIDTH-1)-sdo_counter_r];
                sdo_ready_o <= 1'b1;
            end

            WRITE_DONE: begin
                sdo_counter_r <= 1'b0;
                sdo_ready_o <= 1'b0;
                mosi_o <= 1'b0;
                cs_n_o <= 1'b0;
            end

            READ_READY: begin
                sdi_counter_r <= 1'b0;
                sdi_valid_o <= 1'b0;
                sdi_data_o <= 1'b0;
                sdi_ready_o <= 1'b0;
            end

            READ_DATA: begin
                sdi_counter_r <= sdi_counter_r + 1'b1;
                sdi_data_o[(DATA_WIDTH-1)-sdi_counter_r] <= miso_i;
                if (sdi_counter_r == (DATA_WIDTH-1)) begin
                    sdi_valid_o <= 1'b1;
                end
                else begin
                    sdi_valid_o <= 1'b0;
                end
            end

            READ_DONE: begin
                sdi_counter_r <= 1'b0;
                sdi_valid_o <= 1'b0;
                sdi_data_o <= 1'b0;
                sdi_ready_o <= 1'b1;
            end
        endcase
    end
end

assign sck_o = (st_cur == WRITE_DATA) ? ~clk_i : (st_cur == READ_DATA) ? clk_i : RD1_WR0;
//assign clk_w = ((st_cur == IDLE) || (st_cur == WRITE_VALID) || (st_cur == WRITE_DATA) || (st_cur == WRITE_DONE)) ? clk_i : ((st_cur == READ_READY) || (st_cur == READ_DATA) || (st_cur == READ_DONE)) ? sck_i : clk_i;
//assign clk_w = clk_i;
assign clk_w = (st_cur == READ_DATA) ? sck_i : clk_i;

endmodule
