-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jun 12 17:01:47 2023
-- Host        : DESKTOP-JFN1RUN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Dropbox/Verilog_HDL/RadHard_CIS_Pixel_Array_Testing/TB/TB.srcs/sources_1/ip/mmcm_clk/mmcm_clk_stub.vhdl
-- Design      : mmcm_clk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mmcm_clk is
  Port ( 
    DAC_CLK : out STD_LOGIC;
    MUX_CLK : out STD_LOGIC;
    ADC_CLK : out STD_LOGIC;
    IC_CLK : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end mmcm_clk;

architecture stub of mmcm_clk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DAC_CLK,MUX_CLK,ADC_CLK,IC_CLK,resetn,locked,clk";
begin
end;
