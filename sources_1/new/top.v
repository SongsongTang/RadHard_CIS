`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2023 09:22:35 PM
// Design Name: 
// Module Name: top
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


module top(
    input wire clk_in,
    input wire rst_n,  // active low

    output wire dac_sck_o,
    output wire dac_cs_n_o,
    output wire dac_mosi_o
    );

    clk_mmcm clk_mmcm_inst (
        .clk_in(clk_in),
        .resetn(rst_n),
        .clk_dac(clk_dac),
        .clk_mux(),
        .clk_adc(),
        .clk_ic(),
        .locked()
    );

    config_dac_module config_dac_module_inst (
        .dac_clk(clk_dac),
        .rst_n(rst_n),
        .dac_sck_o(dac_sck_o),
        .dac_cs_n_o(dac_cs_n_o),
        .dac_mosi_o(dac_mosi_o)
    );
endmodule
