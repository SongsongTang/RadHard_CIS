// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jun 12 17:01:47 2023
// Host        : DESKTOP-JFN1RUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Dropbox/Verilog_HDL/RadHard_CIS_Pixel_Array_Testing/TB/TB.srcs/sources_1/ip/mmcm_clk/mmcm_clk_stub.v
// Design      : mmcm_clk
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mmcm_clk(DAC_CLK, MUX_CLK, ADC_CLK, IC_CLK, resetn, locked, 
  clk)
/* synthesis syn_black_box black_box_pad_pin="DAC_CLK,MUX_CLK,ADC_CLK,IC_CLK,resetn,locked,clk" */;
  output DAC_CLK;
  output MUX_CLK;
  output ADC_CLK;
  output IC_CLK;
  input resetn;
  output locked;
  input clk;
endmodule
