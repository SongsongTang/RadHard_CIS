`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2023 10:32:30 PM
// Design Name: 
// Module Name: config_dac_module
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


module config_dac_module(
    input wire clk,
    input wire rst_n,  // active low

    output wire [31:0] config_data_i,
    output wire  config_valid_i,

    output reg config_ready_o,
    input [31:0] config_data_o
    );

    // registers defined here
    wire [31:0] enable;
    wire ena1;
    reg ena2;

    assign ena1 = enable[0];


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ena2 <= 0;
        end else begin
            ena2 <= ena1;
        end
    end

    assign config_valid_i = ena1 ^ ena2;


    dac_cfg dac_cfg_enable (
        .clk(clk),
        .probe_in0(config_valid_i),
        .probe_out0(enable)
    );

    dac_cfg dac_cfg_inst (
        .clk(clk),
        .probe_in0(config_data_o),
        .probe_out0(config_data_i)
    );
endmodule
