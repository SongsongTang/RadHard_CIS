// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun 14 14:34:05 2023
// Host        : DESKTOP-JFN1RUN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Dropbox/Verilog_HDL/RadHard_CIS_Pixel_Array_Testing/TB/TB.srcs/sources_1/ip/adc_tri/adc_tri_stub.v
// Design      : adc_tri
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.4" *)
module adc_tri(clk, probe_in0, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[15:0],probe_out0[0:0]" */;
  input clk;
  input [15:0]probe_in0;
  output [0:0]probe_out0;
endmodule
