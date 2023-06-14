// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun 14 11:51:44 2023
// Host        : DESKTOP-JFN1RUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Dropbox/Verilog_HDL/RadHard_CIS_Pixel_Array_Testing/TB/TB.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_dac, clk_mux, clk_adc, clk_ic, resetn, locked, 
  clk_in)
/* synthesis syn_black_box black_box_pad_pin="clk_dac,clk_mux,clk_adc,clk_ic,resetn,locked,clk_in" */;
  output clk_dac;
  output clk_mux;
  output clk_adc;
  output clk_ic;
  input resetn;
  output locked;
  input clk_in;
endmodule
