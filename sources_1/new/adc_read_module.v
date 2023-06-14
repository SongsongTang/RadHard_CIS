`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2023 12:16:28 PM
// Design Name: 
// Module Name: adc_read_module
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


module adc_read_module(
    input wire clk_adc,
    input wire rst_n,  // active low

    input wire adc_sck_i,
    input wire adc_miso_i,
    output wire adc_sck_o,
    output wire adc_cnv_n_o

    //,output reg [15:0] adc_data_o
    );

    wire [15:0] adc_data_w;
    wire enable;
    wire adc_sdi_valid_o;
    reg [15:0] adc_data_r;

    always @(posedge clk_adc or negedge rst_n) begin
        if (!rst_n) begin
            adc_data_r <= 0;
        end else if (adc_sdi_valid_o) begin
            adc_data_r <= adc_data_w;
        end
        else begin
            adc_data_r <= adc_data_r;
        end
    end

    adc_tri adc_tri_inst (
        .clk(clk_adc),
        .probe_in0(adc_data_r),
        .probe_out0(enable)
    );

    reg enable1, enable2;

    always @(posedge clk_adc or negedge rst_n) begin
        if (!rst_n) begin
            enable1 <= 0;
            enable2 <= 0;
        end else begin
            enable1 <= enable;
            enable2 <= enable1;
        end
    end

    assign adc_cnv_n_o = enable1 ^ enable2;

    spi_module 
    #(
        .DATA_WIDTH(16),
        .RD1_WR0(1'b1)
    )
    spi_module_inst
    (
        .clk_i(clk_adc),
        .rst_n(rst_n),

        .sck_o(adc_sck_o),
        .cs_n_o(),
        .mosi_o(),
        .sck_i(adc_sck_i),
        .miso_i(adc_miso_i),

        .sdo_data_i(),
        .sdo_valid_i(),
        .sdo_ready_o(),

        .sdi_ready_i(adc_cnv_n_o),
        .sdi_ready_o(),
        .sdi_data_o(adc_data_w),
        .sdi_valid_o(adc_sdi_valid_o)
    );

endmodule
