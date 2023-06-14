create_clock -period 20.000 -name clk_in

set_property PACKAGE_PIN J14 [get_ports clk_in]
set_property PACKAGE_PIN AC21 [get_ports dac_cs_n_o]
set_property PACKAGE_PIN AB12 [get_ports dac_mosi_o]
set_property PACKAGE_PIN H6 [get_ports rst_n]
set_property PACKAGE_PIN AD23 [get_ports dac_sck_o]
#set_property PACKAGE_PIN F5 [get_ports mmcm_locked]
set_property IOSTANDARD LVCMOS18 [get_ports clk_in]
set_property IOSTANDARD LVCMOS25 [get_ports dac_cs_n_o]
set_property IOSTANDARD LVCMOS25 [get_ports dac_mosi_o]
set_property IOSTANDARD LVCMOS25 [get_ports dac_sck_o]
set_property IOSTANDARD LVCMOS15 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS15 [get_ports mmcm_locked]

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
connect_debug_port u_ila_0/probe0 [get_nets [list {config_dac_module_inst/spi_module_inst/st_nxt[0]} {config_dac_module_inst/spi_module_inst/st_nxt[1]} {config_dac_module_inst/spi_module_inst/st_nxt[2]} {config_dac_module_inst/spi_module_inst/st_nxt[3]} {config_dac_module_inst/spi_module_inst/st_nxt[4]} {config_dac_module_inst/spi_module_inst/st_nxt[5]} {config_dac_module_inst/spi_module_inst/st_nxt[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {config_dac_module_inst/spi_module_inst/sdo_data_r[0]} {config_dac_module_inst/spi_module_inst/sdo_data_r[1]} {config_dac_module_inst/spi_module_inst/sdo_data_r[2]} {config_dac_module_inst/spi_module_inst/sdo_data_r[3]} {config_dac_module_inst/spi_module_inst/sdo_data_r[4]} {config_dac_module_inst/spi_module_inst/sdo_data_r[5]} {config_dac_module_inst/spi_module_inst/sdo_data_r[6]} {config_dac_module_inst/spi_module_inst/sdo_data_r[7]} {config_dac_module_inst/spi_module_inst/sdo_data_r[8]} {config_dac_module_inst/spi_module_inst/sdo_data_r[9]} {config_dac_module_inst/spi_module_inst/sdo_data_r[10]} {config_dac_module_inst/spi_module_inst/sdo_data_r[11]} {config_dac_module_inst/spi_module_inst/sdo_data_r[12]} {config_dac_module_inst/spi_module_inst/sdo_data_r[13]} {config_dac_module_inst/spi_module_inst/sdo_data_r[14]} {config_dac_module_inst/spi_module_inst/sdo_data_r[15]} {config_dac_module_inst/spi_module_inst/sdo_data_r[16]} {config_dac_module_inst/spi_module_inst/sdo_data_r[17]} {config_dac_module_inst/spi_module_inst/sdo_data_r[18]} {config_dac_module_inst/spi_module_inst/sdo_data_r[19]} {config_dac_module_inst/spi_module_inst/sdo_data_r[20]} {config_dac_module_inst/spi_module_inst/sdo_data_r[21]} {config_dac_module_inst/spi_module_inst/sdo_data_r[22]} {config_dac_module_inst/spi_module_inst/sdo_data_r[23]} {config_dac_module_inst/spi_module_inst/sdo_data_r[24]} {config_dac_module_inst/spi_module_inst/sdo_data_r[25]} {config_dac_module_inst/spi_module_inst/sdo_data_r[26]} {config_dac_module_inst/spi_module_inst/sdo_data_r[27]} {config_dac_module_inst/spi_module_inst/sdo_data_r[28]} {config_dac_module_inst/spi_module_inst/sdo_data_r[29]} {config_dac_module_inst/spi_module_inst/sdo_data_r[30]} {config_dac_module_inst/spi_module_inst/sdo_data_r[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {config_dac_module_inst/spi_module_inst/sdo_counter_r[0]} {config_dac_module_inst/spi_module_inst/sdo_counter_r[1]} {config_dac_module_inst/spi_module_inst/sdo_counter_r[2]} {config_dac_module_inst/spi_module_inst/sdo_counter_r[3]} {config_dac_module_inst/spi_module_inst/sdo_counter_r[4]} {config_dac_module_inst/spi_module_inst/sdo_counter_r[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {config_dac_module_inst/spi_module_inst/sdo_data_i[0]} {config_dac_module_inst/spi_module_inst/sdo_data_i[1]} {config_dac_module_inst/spi_module_inst/sdo_data_i[2]} {config_dac_module_inst/spi_module_inst/sdo_data_i[3]} {config_dac_module_inst/spi_module_inst/sdo_data_i[4]} {config_dac_module_inst/spi_module_inst/sdo_data_i[5]} {config_dac_module_inst/spi_module_inst/sdo_data_i[6]} {config_dac_module_inst/spi_module_inst/sdo_data_i[7]} {config_dac_module_inst/spi_module_inst/sdo_data_i[8]} {config_dac_module_inst/spi_module_inst/sdo_data_i[9]} {config_dac_module_inst/spi_module_inst/sdo_data_i[10]} {config_dac_module_inst/spi_module_inst/sdo_data_i[11]} {config_dac_module_inst/spi_module_inst/sdo_data_i[12]} {config_dac_module_inst/spi_module_inst/sdo_data_i[13]} {config_dac_module_inst/spi_module_inst/sdo_data_i[14]} {config_dac_module_inst/spi_module_inst/sdo_data_i[15]} {config_dac_module_inst/spi_module_inst/sdo_data_i[16]} {config_dac_module_inst/spi_module_inst/sdo_data_i[17]} {config_dac_module_inst/spi_module_inst/sdo_data_i[18]} {config_dac_module_inst/spi_module_inst/sdo_data_i[19]} {config_dac_module_inst/spi_module_inst/sdo_data_i[20]} {config_dac_module_inst/spi_module_inst/sdo_data_i[21]} {config_dac_module_inst/spi_module_inst/sdo_data_i[22]} {config_dac_module_inst/spi_module_inst/sdo_data_i[23]} {config_dac_module_inst/spi_module_inst/sdo_data_i[24]} {config_dac_module_inst/spi_module_inst/sdo_data_i[25]} {config_dac_module_inst/spi_module_inst/sdo_data_i[26]} {config_dac_module_inst/spi_module_inst/sdo_data_i[27]} {config_dac_module_inst/spi_module_inst/sdo_data_i[28]} {config_dac_module_inst/spi_module_inst/sdo_data_i[29]} {config_dac_module_inst/spi_module_inst/sdo_data_i[30]} {config_dac_module_inst/spi_module_inst/sdo_data_i[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 7 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {config_dac_module_inst/spi_module_inst/st_cur[0]} {config_dac_module_inst/spi_module_inst/st_cur[1]} {config_dac_module_inst/spi_module_inst/st_cur[2]} {config_dac_module_inst/spi_module_inst/st_cur[3]} {config_dac_module_inst/spi_module_inst/st_cur[4]} {config_dac_module_inst/spi_module_inst/st_cur[5]} {config_dac_module_inst/spi_module_inst/st_cur[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list config_dac_module_inst/spi_module_inst/clk_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list config_dac_module_inst/spi_module_inst/cs_n_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list config_dac_module_inst/spi_module_inst/miso_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list config_dac_module_inst/spi_module_inst/mosi_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list config_dac_module_inst/spi_module_inst/sck_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list config_dac_module_inst/spi_module_inst/sck_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list config_dac_module_inst/spi_module_inst/sdo_ready_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list config_dac_module_inst/spi_module_inst/sdo_valid_i]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_dac]
