`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2023 01:06:10 PM
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
    input wire clk,
    input wire rst_n,  // active low

    output wire sck_o,
    output wire cs_n_o,
    output wire mosi_o,
    input wire miso_i
);
    

    
    wire sdo_ready_o;
    wire [31:0] sdi_data_o;
    wire sdi_valid_o;

    
    wire [31:0] sdo_data_i;
    wire sdo_valid_i;
    wire sdi_ready_i;

    //mmcm_clk mmcm_clk_inst (
    //    .clk(clk),
    //    .resetn(rst_n),
    //    .locked(mmcm_locked),
    //    .DAC_CLK(),
    //    .MUX_CLK(),
    //    .ADC_CLK(),
    //    .IC_CLK()
    //);


    spi_module #(
        .DATA_WIDTH(32)
        ) 
    spi_module_inst (
        .clk(clk),
        .rst_n(rst_n),
        .sck_o(sck_o),
        .cs_n_o(cs_n_o),
        .mosi_o(mosi_o),
        .miso_i(miso_i),
        .sdo_data_i(sdo_data_i),
        .sdo_valid_i(sdo_valid_i),
        .sdo_ready_o(sdo_ready_o),
        .sdi_data_o(sdi_data_o),
        .sdi_valid_o(sdi_valid_o),
        .sdi_ready_i(sdi_ready_i)
    );

    config_dac_module #(
        )
    config_dac_module_inst (
        .clk(clk),
        .rst_n(rst_n),
        .config_data_i(sdo_data_i),
        .config_valid_i(sdo_valid_i),
        .config_ready_o(sdo_ready_o),
        .config_data_o(sdi_data_o)
    );

    //assign sdo_data_i = 32'h00000000;
endmodule
