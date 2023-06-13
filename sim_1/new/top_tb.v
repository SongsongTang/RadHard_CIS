`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2023 03:38:40 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
    reg sys_clk;
    reg rst_n;  // active low

    wire sck_o;
    wire cs_n_o;
    wire mosi_o;
    wire miso_i;
    wire dac_clk;
    wire mmcm_locked;

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        #100 rst_n = 1;

    end

    top top_inst(
        .sys_clk(sys_clk),
        .rst_n(rst_n),  // active low
        .sck_o(sck_o),
        .cs_n_o(cs_n_o),
        .mosi_o(mosi_o),
        .miso_i(miso_i),
        .dac_clk(dac_clk),
        .mmcm_locked(mmcm_locked)
    );

endmodule
