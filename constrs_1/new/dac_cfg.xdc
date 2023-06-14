create_clock -period 20.000 -name clk_in

set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS18} [get_ports clk_in]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS15} [get_ports rst_n]

set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS15} [get_ports mmcm_locked]

set_property -dict {PACKAGE_PIN AC21 IOSTANDARD LVCMOS25} [get_ports dac_cs_n_o]
set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS25} [get_ports dac_mosi_o]
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVCMOS25} [get_ports dac_sck_o]

set_property -dict {PACKAGE_PIN AC13 IOSTANDARD LVDS_25} [get_ports adc_sck_i_p]
set_property -dict {PACKAGE_PIN AD13 IOSTANDARD LVDS_25} [get_ports adc_sck_i_n]
set_property -dict {PACKAGE_PIN AD20 IOSTANDARD LVDS_25} [get_ports adc_cnv_n_o_p]
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVDS_25} [get_ports adc_cnv_n_o_n]
set_property -dict {PACKAGE_PIN AC14 IOSTANDARD LVDS_25} [get_ports adc_sck_o_p]
set_property -dict {PACKAGE_PIN AD14 IOSTANDARD LVDS_25} [get_ports adc_sck_o_n]

# SDO1
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVDS_25} [get_ports adc_miso_i_p]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVDS_25} [get_ports adc_miso_i_n]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_mmcm_inst/inst/clkfbout_buf_clk_wiz_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 7 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {adc_read_module_inst/spi_module_inst/st_cur[0]} {adc_read_module_inst/spi_module_inst/st_cur[1]} {adc_read_module_inst/spi_module_inst/st_cur[2]} {adc_read_module_inst/spi_module_inst/st_cur[3]} {adc_read_module_inst/spi_module_inst/st_cur[4]} {adc_read_module_inst/spi_module_inst/st_cur[5]} {adc_read_module_inst/spi_module_inst/st_cur[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 5 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {adc_read_module_inst/spi_module_inst/sdi_counter_r[0]} {adc_read_module_inst/spi_module_inst/sdi_counter_r[1]} {adc_read_module_inst/spi_module_inst/sdi_counter_r[2]} {adc_read_module_inst/spi_module_inst/sdi_counter_r[3]} {adc_read_module_inst/spi_module_inst/sdi_counter_r[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 7 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {adc_read_module_inst/spi_module_inst/st_nxt[0]} {adc_read_module_inst/spi_module_inst/st_nxt[1]} {adc_read_module_inst/spi_module_inst/st_nxt[2]} {adc_read_module_inst/spi_module_inst/st_nxt[3]} {adc_read_module_inst/spi_module_inst/st_nxt[4]} {adc_read_module_inst/spi_module_inst/st_nxt[5]} {adc_read_module_inst/spi_module_inst/st_nxt[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {adc_read_module_inst/spi_module_inst/sdi_data_o[0]} {adc_read_module_inst/spi_module_inst/sdi_data_o[1]} {adc_read_module_inst/spi_module_inst/sdi_data_o[2]} {adc_read_module_inst/spi_module_inst/sdi_data_o[3]} {adc_read_module_inst/spi_module_inst/sdi_data_o[4]} {adc_read_module_inst/spi_module_inst/sdi_data_o[5]} {adc_read_module_inst/spi_module_inst/sdi_data_o[6]} {adc_read_module_inst/spi_module_inst/sdi_data_o[7]} {adc_read_module_inst/spi_module_inst/sdi_data_o[8]} {adc_read_module_inst/spi_module_inst/sdi_data_o[9]} {adc_read_module_inst/spi_module_inst/sdi_data_o[10]} {adc_read_module_inst/spi_module_inst/sdi_data_o[11]} {adc_read_module_inst/spi_module_inst/sdi_data_o[12]} {adc_read_module_inst/spi_module_inst/sdi_data_o[13]} {adc_read_module_inst/spi_module_inst/sdi_data_o[14]} {adc_read_module_inst/spi_module_inst/sdi_data_o[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 6 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {config_dac_module_inst/spi_module_inst/sdi_counter_r[0]} {config_dac_module_inst/spi_module_inst/sdi_counter_r[1]} {config_dac_module_inst/spi_module_inst/sdi_counter_r[2]} {config_dac_module_inst/spi_module_inst/sdi_counter_r[3]} {config_dac_module_inst/spi_module_inst/sdi_counter_r[4]} {config_dac_module_inst/spi_module_inst/sdi_counter_r[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 7 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {config_dac_module_inst/spi_module_inst/st_nxt[0]} {config_dac_module_inst/spi_module_inst/st_nxt[1]} {config_dac_module_inst/spi_module_inst/st_nxt[2]} {config_dac_module_inst/spi_module_inst/st_nxt[3]} {config_dac_module_inst/spi_module_inst/st_nxt[4]} {config_dac_module_inst/spi_module_inst/st_nxt[5]} {config_dac_module_inst/spi_module_inst/st_nxt[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {config_dac_module_inst/spi_module_inst/sdi_data_o[0]} {config_dac_module_inst/spi_module_inst/sdi_data_o[1]} {config_dac_module_inst/spi_module_inst/sdi_data_o[2]} {config_dac_module_inst/spi_module_inst/sdi_data_o[3]} {config_dac_module_inst/spi_module_inst/sdi_data_o[4]} {config_dac_module_inst/spi_module_inst/sdi_data_o[5]} {config_dac_module_inst/spi_module_inst/sdi_data_o[6]} {config_dac_module_inst/spi_module_inst/sdi_data_o[7]} {config_dac_module_inst/spi_module_inst/sdi_data_o[8]} {config_dac_module_inst/spi_module_inst/sdi_data_o[9]} {config_dac_module_inst/spi_module_inst/sdi_data_o[10]} {config_dac_module_inst/spi_module_inst/sdi_data_o[11]} {config_dac_module_inst/spi_module_inst/sdi_data_o[12]} {config_dac_module_inst/spi_module_inst/sdi_data_o[13]} {config_dac_module_inst/spi_module_inst/sdi_data_o[14]} {config_dac_module_inst/spi_module_inst/sdi_data_o[15]} {config_dac_module_inst/spi_module_inst/sdi_data_o[16]} {config_dac_module_inst/spi_module_inst/sdi_data_o[17]} {config_dac_module_inst/spi_module_inst/sdi_data_o[18]} {config_dac_module_inst/spi_module_inst/sdi_data_o[19]} {config_dac_module_inst/spi_module_inst/sdi_data_o[20]} {config_dac_module_inst/spi_module_inst/sdi_data_o[21]} {config_dac_module_inst/spi_module_inst/sdi_data_o[22]} {config_dac_module_inst/spi_module_inst/sdi_data_o[23]} {config_dac_module_inst/spi_module_inst/sdi_data_o[24]} {config_dac_module_inst/spi_module_inst/sdi_data_o[25]} {config_dac_module_inst/spi_module_inst/sdi_data_o[26]} {config_dac_module_inst/spi_module_inst/sdi_data_o[27]} {config_dac_module_inst/spi_module_inst/sdi_data_o[28]} {config_dac_module_inst/spi_module_inst/sdi_data_o[29]} {config_dac_module_inst/spi_module_inst/sdi_data_o[30]} {config_dac_module_inst/spi_module_inst/sdi_data_o[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 7 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {config_dac_module_inst/spi_module_inst/st_cur[0]} {config_dac_module_inst/spi_module_inst/st_cur[1]} {config_dac_module_inst/spi_module_inst/st_cur[2]} {config_dac_module_inst/spi_module_inst/st_cur[3]} {config_dac_module_inst/spi_module_inst/st_cur[4]} {config_dac_module_inst/spi_module_inst/st_cur[5]} {config_dac_module_inst/spi_module_inst/st_cur[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list adc_read_module_inst/spi_module_inst/clk_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list config_dac_module_inst/spi_module_inst/clk_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list adc_read_module_inst/spi_module_inst/cs_n_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list config_dac_module_inst/spi_module_inst/cs_n_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list adc_read_module_inst/spi_module_inst/miso_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list config_dac_module_inst/spi_module_inst/miso_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list adc_read_module_inst/spi_module_inst/mosi_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list config_dac_module_inst/spi_module_inst/mosi_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list config_dac_module_inst/spi_module_inst/sck_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list adc_read_module_inst/spi_module_inst/sck_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list adc_read_module_inst/spi_module_inst/sck_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list config_dac_module_inst/spi_module_inst/sck_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list config_dac_module_inst/spi_module_inst/sdi_ready_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list adc_read_module_inst/spi_module_inst/sdi_ready_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list config_dac_module_inst/spi_module_inst/sdi_ready_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list adc_read_module_inst/spi_module_inst/sdi_ready_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list adc_read_module_inst/spi_module_inst/sdi_valid_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list config_dac_module_inst/spi_module_inst/sdi_valid_o]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_dac]
