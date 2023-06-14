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

    reg [15:0] adc_data_r;
    wire enable;

endmodule
