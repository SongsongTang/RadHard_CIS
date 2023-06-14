-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jun 14 14:34:05 2023
-- Host        : DESKTOP-JFN1RUN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Dropbox/Verilog_HDL/RadHard_CIS_Pixel_Array_Testing/TB/TB.srcs/sources_1/ip/adc_tri/adc_tri_stub.vhdl
-- Design      : adc_tri
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_tri is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end adc_tri;

architecture stub of adc_tri is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[15:0],probe_out0[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2017.4";
begin
end;
