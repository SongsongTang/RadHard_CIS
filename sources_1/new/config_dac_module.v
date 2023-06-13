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
    input wire dac_clk,
    input wire rst_n,  // active low

    output wire dac_sck_o,
    output wire dac_cs_n_o,
    output wire dac_mosi_o,
    input wire dac_miso_i
    );

    wire [31:0] sdo_data_w;
    wire sdo_valid_w;

    wire [31:0] sdi_data_w;
    // registers defined here
    wire [31:0] enable;
    wire ena1;
    reg ena2;

    assign ena1 = enable[0];


    always @(posedge dac_clk or negedge rst_n) begin
        if (!rst_n) begin
            ena2 <= 0;
        end else begin
            ena2 <= ena1;
        end
    end

    assign sdo_valid_w = ena1 ^ ena2;


    dac_cfg dac_cfg_enable (
        .clk(dac_clk),
        .probe_in0(sdo_valid_w),
        .probe_out0(enable)
    );

    dac_cfg dac_cfg_inst (
        .clk(dac_clk),
        .probe_in0(sdi_data_w),
        .probe_out0(sdo_data_w)
    );


    spi_module #(
        .DATA_WIDTH(32),
        .RD1_WR0(0)
        ) 
    spi_module_inst (
        .clk_i(dac_clk),
        .rst_n(rst_n),  // active low

        .sck_o(dac_sck_o),
        .cs_n_o(dac_cs_n_o),
        .mosi_o(dac_mosi_o),
        .sck_i(),
        .miso_i(dac_miso_i),

        .sdo_data_i(sdo_data_w),
        .sdo_valid_i(sdo_valid_w),
        .sdo_ready_o(),

        .sdi_ready_i(),
        .sdi_ready_o(),
        .sdi_data_o(sdi_data_w),
        .sdi_valid_o()
    );
endmodule
