`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2023 07:30:08 PM
// Design Name: 
// Module Name: tb_spi_module
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


module spi_module_tb;

    // Parameters
    parameter DATA_WIDTH = 24;
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk;
    reg rst_n;
    reg sdo_valid_i;
    reg sdi_ready_i;
    wire sck_o;
    wire cs_n_o;
    wire mosi_o;
    reg miso_i;
    reg [DATA_WIDTH-1:0] sdo_data_i;
    wire sdo_ready_o;
    wire [DATA_WIDTH-1:0] sdi_data_o;
    wire sdi_valid_o;
    //wire [5:0] st_cur;
    //wire [5:0] st_nxt;
    //wire [$clog2(DATA_WIDTH):0] sdo_counter_r;

    // Instantiate SPI module
    spi_module #(.DATA_WIDTH(DATA_WIDTH)) spi (
        .clk(clk),
        .rst_n(rst_n),
        .sdo_valid_i(sdo_valid_i),
        .sdi_ready_i(sdi_ready_i),
        .sck_o(sck_o),
        .cs_n_o(cs_n_o),
        .mosi_o(mosi_o),
        .miso_i(miso_i),
        .sdo_data_i(sdo_data_i),
        .sdo_ready_o(sdo_ready_o),
        .sdi_data_o(sdi_data_o),
        .sdi_valid_o(sdi_valid_o)
        //,.st_cur(st_cur)
        //,.st_nxt(st_nxt)
        //,.sdo_counter_r(sdo_counter_r)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Testbench stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        rst_n = 0;
        sdo_valid_i = 0;
        sdi_ready_i = 0;
        //sdo_data_i = 0;
        sdo_data_i = 24'hAB;
        miso_i = 0;

        // Reset
        #10 rst_n = 1;

        // Send data
        #10 sdo_valid_i = 1;
        #10 sdo_valid_i = 0;
        //sdo_data_i = 0;
        //#20 sdo_valid_i = 1;
        //#30 sdo_valid_i = 0;
        //#40 sdo_data_i = 8'hAB;
        //#50 sdo_data_i = 8'hCD;
        //#60 sdo_valid_i = 1;
        //#70 sdo_valid_i = 0;
        //#80 sdo_data_i = 8'hEF;
        //#90 sdo_data_i = 8'h12;

        // Receive data
        //#255 sdo_data_i = 24'hAB;
        //sdi_ready_i = 1;
        //miso_i = sdo_data_i[23];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[22];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[21];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[20];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[19];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[18];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[17];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[16];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[15];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[14];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[13];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[12];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[11];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[10];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[9];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[8];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[7];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[6];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[5];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[4];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[3];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[2];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[1];
        //#10 sdi_ready_i = 1;
        //miso_i = sdo_data_i[0];
        //#10 sdi_ready_i = 0;
        //miso_i = 0;
        


        // Finish simulation
        #400 $finish;
    end

    // Monitor
    always @(posedge clk) begin
        $display("sdo_ready_o = %b, sdi_valid_o = %b, sdi_data_o = %h, miso_i = %h", sdo_ready_o, sdi_valid_o, sdi_data_o, miso_i);
    end

endmodule
