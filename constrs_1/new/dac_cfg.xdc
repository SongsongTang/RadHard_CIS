create_clock -period 20.000 -name clk_in

set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS18} [get_ports clk_in]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS15} [get_ports rst_n]

set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS15} [get_ports mmcm_locked]

set_property -dict {PACKAGE_PIN AC21 IOSTANDARD LVCMOS25} [get_ports dac_cs_n_o]
set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS25} [get_ports dac_mosi_o]
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVCMOS25} [get_ports dac_sck_o]

set_property -dict {PACKAGE_PIN AC13 IOSTANDARD LVCMOS25} [get_ports adc_sck_i_p]
set_property -dict {PACKAGE_PIN AD13 IOSTANDARD LVCMOS25} [get_ports adc_sck_i_n]
set_property -dict {PACKAGE_PIN AD20 IOSTANDARD LVCMOS25} [get_ports adc_cnv_n_o_p]
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVCMOS25} [get_ports adc_cnv_n_o_n]
set_property -dict {PACKAGE_PIN AC14 IOSTANDARD LVCMOS25} [get_ports adc_sck_o_p]
set_property -dict {PACKAGE_PIN AD14 IOSTANDARD LVCMOS25} [get_ports adc_sck_o_n]

# SDO1
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS25} [get_ports adc_miso_i_p]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS25} [get_ports adc_miso_i_n]
