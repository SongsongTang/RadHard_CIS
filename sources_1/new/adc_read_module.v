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

    wire [15:0] adc_data_r;
    wire enable;

    adc_tri adc_tri_inst (
        .clk(clk_adc),
        .probe_in0(adc_data_r),
        .probe_out0(enable)
    );

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

        .sdi_ready_i(enable),
        .sdi_ready_o(),
        .sdi_data_o(adc_data_r),
        .sdi_valid_o()
    );

endmodule
