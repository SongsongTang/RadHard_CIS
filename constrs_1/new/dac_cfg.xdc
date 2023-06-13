#create_clock -period 20.000 -name sys_clk

set_property PACKAGE_PIN J14 [get_ports dac_clk]
set_property PACKAGE_PIN AC21 [get_ports dac_cs_n_o]
set_property PACKAGE_PIN AF15 [get_ports dac_miso_i]
set_property PACKAGE_PIN AB12 [get_ports dac_mosi_o]
set_property PACKAGE_PIN H6 [get_ports rst_n]
set_property PACKAGE_PIN AD23 [get_ports dac_sck_o]
#set_property PACKAGE_PIN F5 [get_ports mmcm_locked]
set_property IOSTANDARD LVCMOS18 [get_ports dac_clk]
set_property IOSTANDARD LVCMOS25 [get_ports dac_cs_n_o]
set_property IOSTANDARD LVCMOS25 [get_ports dac_miso_i]
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
connect_debug_port u_ila_0/clk [get_nets [list dac_clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 5 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {spi_module_inst/sdo_counter_r[0]} {spi_module_inst/sdo_counter_r[1]} {spi_module_inst/sdo_counter_r[2]} {spi_module_inst/sdo_counter_r[3]} {spi_module_inst/sdo_counter_r[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {spi_module_inst/sdo_data_i[0]} {spi_module_inst/sdo_data_i[1]} {spi_module_inst/sdo_data_i[2]} {spi_module_inst/sdo_data_i[3]} {spi_module_inst/sdo_data_i[4]} {spi_module_inst/sdo_data_i[5]} {spi_module_inst/sdo_data_i[6]} {spi_module_inst/sdo_data_i[7]} {spi_module_inst/sdo_data_i[8]} {spi_module_inst/sdo_data_i[9]} {spi_module_inst/sdo_data_i[10]} {spi_module_inst/sdo_data_i[11]} {spi_module_inst/sdo_data_i[12]} {spi_module_inst/sdo_data_i[13]} {spi_module_inst/sdo_data_i[14]} {spi_module_inst/sdo_data_i[15]} {spi_module_inst/sdo_data_i[16]} {spi_module_inst/sdo_data_i[17]} {spi_module_inst/sdo_data_i[18]} {spi_module_inst/sdo_data_i[19]} {spi_module_inst/sdo_data_i[20]} {spi_module_inst/sdo_data_i[21]} {spi_module_inst/sdo_data_i[22]} {spi_module_inst/sdo_data_i[23]} {spi_module_inst/sdo_data_i[24]} {spi_module_inst/sdo_data_i[25]} {spi_module_inst/sdo_data_i[26]} {spi_module_inst/sdo_data_i[27]} {spi_module_inst/sdo_data_i[28]} {spi_module_inst/sdo_data_i[29]} {spi_module_inst/sdo_data_i[30]} {spi_module_inst/sdo_data_i[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 7 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {spi_module_inst/st_nxt[0]} {spi_module_inst/st_nxt[1]} {spi_module_inst/st_nxt[2]} {spi_module_inst/st_nxt[3]} {spi_module_inst/st_nxt[4]} {spi_module_inst/st_nxt[5]} {spi_module_inst/st_nxt[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {spi_module_inst/sdo_data_r[0]} {spi_module_inst/sdo_data_r[1]} {spi_module_inst/sdo_data_r[2]} {spi_module_inst/sdo_data_r[3]} {spi_module_inst/sdo_data_r[4]} {spi_module_inst/sdo_data_r[5]} {spi_module_inst/sdo_data_r[6]} {spi_module_inst/sdo_data_r[7]} {spi_module_inst/sdo_data_r[8]} {spi_module_inst/sdo_data_r[9]} {spi_module_inst/sdo_data_r[10]} {spi_module_inst/sdo_data_r[11]} {spi_module_inst/sdo_data_r[12]} {spi_module_inst/sdo_data_r[13]} {spi_module_inst/sdo_data_r[14]} {spi_module_inst/sdo_data_r[15]} {spi_module_inst/sdo_data_r[16]} {spi_module_inst/sdo_data_r[17]} {spi_module_inst/sdo_data_r[18]} {spi_module_inst/sdo_data_r[19]} {spi_module_inst/sdo_data_r[20]} {spi_module_inst/sdo_data_r[21]} {spi_module_inst/sdo_data_r[22]} {spi_module_inst/sdo_data_r[23]} {spi_module_inst/sdo_data_r[24]} {spi_module_inst/sdo_data_r[25]} {spi_module_inst/sdo_data_r[26]} {spi_module_inst/sdo_data_r[27]} {spi_module_inst/sdo_data_r[28]} {spi_module_inst/sdo_data_r[29]} {spi_module_inst/sdo_data_r[30]} {spi_module_inst/sdo_data_r[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 7 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {spi_module_inst/st_cur[0]} {spi_module_inst/st_cur[1]} {spi_module_inst/st_cur[2]} {spi_module_inst/st_cur[3]} {spi_module_inst/st_cur[4]} {spi_module_inst/st_cur[5]} {spi_module_inst/st_cur[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list spi_module_inst/cs_n_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list spi_module_inst/miso_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list spi_module_inst/mosi_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list spi_module_inst/sck_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list spi_module_inst/sck_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list spi_module_inst/sdo_ready_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list spi_module_inst/sdo_valid_i]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets dac_clk_IBUF_BUFG]
