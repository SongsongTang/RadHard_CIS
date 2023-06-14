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

    output wire mmcm_locked,

    output wire dac_sck_o,
    output wire dac_cs_n_o,
    output wire dac_mosi_o,
    
    input wire adc_sck_i_p,
    input wire adc_sck_i_n,
    input wire adc_miso_i_p,
    input wire adc_miso_i_n,
    output wire adc_sck_o_p,
    output wire adc_sck_o_n,
    output wire adc_cnv_n_o_p,
    output wire adc_cnv_n_o_n
    );

    wire clk_dac;
    wire clk_adc;

    wire adc_sck_i;
    wire adc_miso_i;
    wire adc_sck_o;
    wire adc_cnv_n_o;

    IBUFDS #(
        .DIFF_TERM("TRUE")
    ) ADC_SCK_I_BUF (
        .O(adc_sck_i),
        .I(adc_sck_i_p),
        .IB(adc_sck_i_n)
    );

    IBUFDS #(
        .DIFF_TERM("TRUE")
    ) ADC_MISO_I_BUF (
        .O(adc_miso_i),
        .I(adc_miso_i_p),
        .IB(adc_miso_i_n)
    );

    OBUFDS ADC_SCK_O_BUF (
        .O(adc_sck_o_p),
        .OB(adc_sck_o_n),
        .I(adc_sck_o)
    );

    OBUFDS ADC_CNV_N_O_BUF (
        .O(adc_cnv_n_o_p),
        .OB(adc_cnv_n_o_n),
        .I(adc_cnv_n_o)
    );

    clk_mmcm clk_mmcm_inst (
        .clk_in(clk_in),
        .resetn(rst_n),
        .clk_dac(clk_dac),
        .clk_mux(),
        .clk_adc(clk_adc),
        .clk_ic(),
        .locked(mmcm_locked)
    );

    adc_read_module adc_read_module_inst (
        .clk_adc(clk_adc),
        .rst_n(rst_n),  // active low

        .adc_sck_i(adc_sck_i),
        .adc_miso_i(adc_miso_i),
        .adc_sck_o(adc_sck_o),
        .adc_cnv_n_o(adc_cnv_n_o)

        //,output reg [15:0] adc_data_o
    );

    config_dac_module config_dac_module_inst (
        .dac_clk(clk_dac),
        .rst_n(rst_n),
        .dac_sck_o(dac_sck_o),
        .dac_cs_n_o(dac_cs_n_o),
        .dac_mosi_o(dac_mosi_o)
    );
endmodule
