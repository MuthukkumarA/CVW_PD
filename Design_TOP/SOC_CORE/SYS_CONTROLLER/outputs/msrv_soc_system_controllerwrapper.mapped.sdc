###################################################################

# Created by write_sdc on Wed Apr 15 10:43:12 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_operating_conditions ss0p585v125c -library saed14hvt_cg_ss0p585v125c
set_max_fanout 200 [current_design]
set_max_transition 0.1 [current_design]
set_max_capacitance 100 [current_design]
set_load -pin_load 0.004 [get_ports HRESPSYS_CTRL]
set_load -pin_load 0.004 [get_ports HREADYSYS_CTRL]
set_load -pin_load 0.004 [get_ports HSELSYS_CTRL]
set_load -pin_load 0.004 [get_ports reset]
set_load -pin_load 0.004 [get_ports clk_out]
create_clock [get_ports clk]  -name MAIN  -period 4  -waveform {0 2}
group_path -name in2out  -from [list [get_ports {HADDR[55]}] [get_ports {HADDR[54]}] [get_ports        \
{HADDR[53]}] [get_ports {HADDR[52]}] [get_ports {HADDR[51]}] [get_ports        \
{HADDR[50]}] [get_ports {HADDR[49]}] [get_ports {HADDR[48]}] [get_ports        \
{HADDR[47]}] [get_ports {HADDR[46]}] [get_ports {HADDR[45]}] [get_ports        \
{HADDR[44]}] [get_ports {HADDR[43]}] [get_ports {HADDR[42]}] [get_ports        \
{HADDR[41]}] [get_ports {HADDR[40]}] [get_ports {HADDR[39]}] [get_ports        \
{HADDR[38]}] [get_ports {HADDR[37]}] [get_ports {HADDR[36]}] [get_ports        \
{HADDR[35]}] [get_ports {HADDR[34]}] [get_ports {HADDR[33]}] [get_ports        \
{HADDR[32]}] [get_ports {HADDR[31]}] [get_ports {HADDR[30]}] [get_ports        \
{HADDR[29]}] [get_ports {HADDR[28]}] [get_ports {HADDR[27]}] [get_ports        \
{HADDR[26]}] [get_ports {HADDR[25]}] [get_ports {HADDR[24]}] [get_ports        \
{HADDR[23]}] [get_ports {HADDR[22]}] [get_ports {HADDR[21]}] [get_ports        \
{HADDR[20]}] [get_ports {HADDR[19]}] [get_ports {HADDR[18]}] [get_ports        \
{HADDR[17]}] [get_ports {HADDR[16]}] [get_ports {HADDR[15]}] [get_ports        \
{HADDR[14]}] [get_ports {HADDR[13]}] [get_ports {HADDR[12]}] [get_ports        \
{HADDR[11]}] [get_ports {HADDR[10]}] [get_ports {HADDR[9]}] [get_ports         \
{HADDR[8]}] [get_ports {HADDR[7]}] [get_ports {HADDR[6]}] [get_ports           \
{HADDR[5]}] [get_ports {HADDR[4]}] [get_ports {HADDR[3]}] [get_ports           \
{HADDR[2]}] [get_ports {HADDR[1]}] [get_ports {HADDR[0]}] [get_ports HWRITE]   \
[get_ports {HSIZE[2]}] [get_ports {HSIZE[1]}] [get_ports {HSIZE[0]}]           \
[get_ports {HWDATA[63]}] [get_ports {HWDATA[62]}] [get_ports {HWDATA[61]}]     \
[get_ports {HWDATA[60]}] [get_ports {HWDATA[59]}] [get_ports {HWDATA[58]}]     \
[get_ports {HWDATA[57]}] [get_ports {HWDATA[56]}] [get_ports {HWDATA[55]}]     \
[get_ports {HWDATA[54]}] [get_ports {HWDATA[53]}] [get_ports {HWDATA[52]}]     \
[get_ports {HWDATA[51]}] [get_ports {HWDATA[50]}] [get_ports {HWDATA[49]}]     \
[get_ports {HWDATA[48]}] [get_ports {HWDATA[47]}] [get_ports {HWDATA[46]}]     \
[get_ports {HWDATA[45]}] [get_ports {HWDATA[44]}] [get_ports {HWDATA[43]}]     \
[get_ports {HWDATA[42]}] [get_ports {HWDATA[41]}] [get_ports {HWDATA[40]}]     \
[get_ports {HWDATA[39]}] [get_ports {HWDATA[38]}] [get_ports {HWDATA[37]}]     \
[get_ports {HWDATA[36]}] [get_ports {HWDATA[35]}] [get_ports {HWDATA[34]}]     \
[get_ports {HWDATA[33]}] [get_ports {HWDATA[32]}] [get_ports {HWDATA[31]}]     \
[get_ports {HWDATA[30]}] [get_ports {HWDATA[29]}] [get_ports {HWDATA[28]}]     \
[get_ports {HWDATA[27]}] [get_ports {HWDATA[26]}] [get_ports {HWDATA[25]}]     \
[get_ports {HWDATA[24]}] [get_ports {HWDATA[23]}] [get_ports {HWDATA[22]}]     \
[get_ports {HWDATA[21]}] [get_ports {HWDATA[20]}] [get_ports {HWDATA[19]}]     \
[get_ports {HWDATA[18]}] [get_ports {HWDATA[17]}] [get_ports {HWDATA[16]}]     \
[get_ports {HWDATA[15]}] [get_ports {HWDATA[14]}] [get_ports {HWDATA[13]}]     \
[get_ports {HWDATA[12]}] [get_ports {HWDATA[11]}] [get_ports {HWDATA[10]}]     \
[get_ports {HWDATA[9]}] [get_ports {HWDATA[8]}] [get_ports {HWDATA[7]}]        \
[get_ports {HWDATA[6]}] [get_ports {HWDATA[5]}] [get_ports {HWDATA[4]}]        \
[get_ports {HWDATA[3]}] [get_ports {HWDATA[2]}] [get_ports {HWDATA[1]}]        \
[get_ports {HWDATA[0]}] [get_ports {HWSTRB[7]}] [get_ports {HWSTRB[6]}]        \
[get_ports {HWSTRB[5]}] [get_ports {HWSTRB[4]}] [get_ports {HWSTRB[3]}]        \
[get_ports {HWSTRB[2]}] [get_ports {HWSTRB[1]}] [get_ports {HWSTRB[0]}]        \
[get_ports HREADY] [get_ports {HTRANS[1]}] [get_ports {HTRANS[0]}] [get_ports  \
clk] [get_ports reset_ext]]  -to [list [get_ports HRESPSYS_CTRL] [get_ports HREADYSYS_CTRL] [get_ports     \
HSELSYS_CTRL] [get_ports reset] [get_ports clk_out]]
group_path -name in2reg  -from [list [get_ports {HADDR[55]}] [get_ports {HADDR[54]}] [get_ports        \
{HADDR[53]}] [get_ports {HADDR[52]}] [get_ports {HADDR[51]}] [get_ports        \
{HADDR[50]}] [get_ports {HADDR[49]}] [get_ports {HADDR[48]}] [get_ports        \
{HADDR[47]}] [get_ports {HADDR[46]}] [get_ports {HADDR[45]}] [get_ports        \
{HADDR[44]}] [get_ports {HADDR[43]}] [get_ports {HADDR[42]}] [get_ports        \
{HADDR[41]}] [get_ports {HADDR[40]}] [get_ports {HADDR[39]}] [get_ports        \
{HADDR[38]}] [get_ports {HADDR[37]}] [get_ports {HADDR[36]}] [get_ports        \
{HADDR[35]}] [get_ports {HADDR[34]}] [get_ports {HADDR[33]}] [get_ports        \
{HADDR[32]}] [get_ports {HADDR[31]}] [get_ports {HADDR[30]}] [get_ports        \
{HADDR[29]}] [get_ports {HADDR[28]}] [get_ports {HADDR[27]}] [get_ports        \
{HADDR[26]}] [get_ports {HADDR[25]}] [get_ports {HADDR[24]}] [get_ports        \
{HADDR[23]}] [get_ports {HADDR[22]}] [get_ports {HADDR[21]}] [get_ports        \
{HADDR[20]}] [get_ports {HADDR[19]}] [get_ports {HADDR[18]}] [get_ports        \
{HADDR[17]}] [get_ports {HADDR[16]}] [get_ports {HADDR[15]}] [get_ports        \
{HADDR[14]}] [get_ports {HADDR[13]}] [get_ports {HADDR[12]}] [get_ports        \
{HADDR[11]}] [get_ports {HADDR[10]}] [get_ports {HADDR[9]}] [get_ports         \
{HADDR[8]}] [get_ports {HADDR[7]}] [get_ports {HADDR[6]}] [get_ports           \
{HADDR[5]}] [get_ports {HADDR[4]}] [get_ports {HADDR[3]}] [get_ports           \
{HADDR[2]}] [get_ports {HADDR[1]}] [get_ports {HADDR[0]}] [get_ports HWRITE]   \
[get_ports {HSIZE[2]}] [get_ports {HSIZE[1]}] [get_ports {HSIZE[0]}]           \
[get_ports {HWDATA[63]}] [get_ports {HWDATA[62]}] [get_ports {HWDATA[61]}]     \
[get_ports {HWDATA[60]}] [get_ports {HWDATA[59]}] [get_ports {HWDATA[58]}]     \
[get_ports {HWDATA[57]}] [get_ports {HWDATA[56]}] [get_ports {HWDATA[55]}]     \
[get_ports {HWDATA[54]}] [get_ports {HWDATA[53]}] [get_ports {HWDATA[52]}]     \
[get_ports {HWDATA[51]}] [get_ports {HWDATA[50]}] [get_ports {HWDATA[49]}]     \
[get_ports {HWDATA[48]}] [get_ports {HWDATA[47]}] [get_ports {HWDATA[46]}]     \
[get_ports {HWDATA[45]}] [get_ports {HWDATA[44]}] [get_ports {HWDATA[43]}]     \
[get_ports {HWDATA[42]}] [get_ports {HWDATA[41]}] [get_ports {HWDATA[40]}]     \
[get_ports {HWDATA[39]}] [get_ports {HWDATA[38]}] [get_ports {HWDATA[37]}]     \
[get_ports {HWDATA[36]}] [get_ports {HWDATA[35]}] [get_ports {HWDATA[34]}]     \
[get_ports {HWDATA[33]}] [get_ports {HWDATA[32]}] [get_ports {HWDATA[31]}]     \
[get_ports {HWDATA[30]}] [get_ports {HWDATA[29]}] [get_ports {HWDATA[28]}]     \
[get_ports {HWDATA[27]}] [get_ports {HWDATA[26]}] [get_ports {HWDATA[25]}]     \
[get_ports {HWDATA[24]}] [get_ports {HWDATA[23]}] [get_ports {HWDATA[22]}]     \
[get_ports {HWDATA[21]}] [get_ports {HWDATA[20]}] [get_ports {HWDATA[19]}]     \
[get_ports {HWDATA[18]}] [get_ports {HWDATA[17]}] [get_ports {HWDATA[16]}]     \
[get_ports {HWDATA[15]}] [get_ports {HWDATA[14]}] [get_ports {HWDATA[13]}]     \
[get_ports {HWDATA[12]}] [get_ports {HWDATA[11]}] [get_ports {HWDATA[10]}]     \
[get_ports {HWDATA[9]}] [get_ports {HWDATA[8]}] [get_ports {HWDATA[7]}]        \
[get_ports {HWDATA[6]}] [get_ports {HWDATA[5]}] [get_ports {HWDATA[4]}]        \
[get_ports {HWDATA[3]}] [get_ports {HWDATA[2]}] [get_ports {HWDATA[1]}]        \
[get_ports {HWDATA[0]}] [get_ports {HWSTRB[7]}] [get_ports {HWSTRB[6]}]        \
[get_ports {HWSTRB[5]}] [get_ports {HWSTRB[4]}] [get_ports {HWSTRB[3]}]        \
[get_ports {HWSTRB[2]}] [get_ports {HWSTRB[1]}] [get_ports {HWSTRB[0]}]        \
[get_ports HREADY] [get_ports {HTRANS[1]}] [get_ports {HTRANS[0]}] [get_ports  \
clk] [get_ports reset_ext]]  -to [list [get_cells dut/PMU/spi_isolation_enb_reg] [get_cells                \
dut/PMU/uart_isolation_enb_reg] [get_cells dut/PMU/eeprom_isolation_enb_reg]   \
[get_cells dut/PMU/eeprom_powergate_enb_reg] [get_cells                        \
dut/PMU/spi_powergate_enb_reg] [get_cells dut/PMU/uart_powergate_enb_reg]      \
[get_cells dut/PMU/spi_isolation_enb_delay4_reg] [get_cells                    \
dut/PMU/uart_isolation_enb_delay4_reg] [get_cells                              \
dut/PMU/spi_isolation_enb_delay3_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay3_reg] [get_cells                              \
dut/PMU/eeprom_isolation_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_isolation_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay2_reg] [get_cells                              \
dut/PMU/eeprom_powergate_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_powergate_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_powergate_enb_delay2_reg] [get_cells                              \
dut/reg_bank/clk_shift_enb_register_reg_0_] [get_cells                         \
dut/reg_bank/clk_div_register_reg_0_] [get_cells                               \
dut/reg_bank/clk_div_register_reg_1_] [get_cells                               \
dut/reg_bank/pmu_state_config_register_reg_0_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_1_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_2_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_3_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_4_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_5_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_6_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_7_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_8_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_9_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_10_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_11_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_12_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_13_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_14_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_15_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_16_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_17_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_18_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_19_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_20_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_21_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_22_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_23_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_24_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_25_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_26_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_27_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_28_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_29_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_30_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_31_] [get_cells                     \
dut/reg_bank/readyreg/q_reg_0_] [get_cells dut/reg_bank/haddrreg/q_reg_0_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_1_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_2_] [get_cells dut/reg_bank/haddrreg/q_reg_3_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_4_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_5_] [get_cells dut/reg_bank/haddrreg/q_reg_6_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_7_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_8_] [get_cells dut/reg_bank/haddrreg/q_reg_9_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_10_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_11_] [get_cells dut/reg_bank/haddrreg/q_reg_12_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_13_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_14_] [get_cells dut/reg_bank/haddrreg/q_reg_15_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_16_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_17_] [get_cells dut/reg_bank/haddrreg/q_reg_18_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_19_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_20_] [get_cells dut/reg_bank/haddrreg/q_reg_21_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_22_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_23_] [get_cells dut/reg_bank/haddrreg/q_reg_24_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_25_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_26_] [get_cells dut/reg_bank/haddrreg/q_reg_27_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_28_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_29_] [get_cells dut/reg_bank/haddrreg/q_reg_30_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_31_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_32_] [get_cells dut/reg_bank/haddrreg/q_reg_33_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_34_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_35_] [get_cells dut/reg_bank/haddrreg/q_reg_36_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_37_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_38_] [get_cells dut/reg_bank/haddrreg/q_reg_39_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_40_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_41_] [get_cells dut/reg_bank/haddrreg/q_reg_42_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_43_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_44_] [get_cells dut/reg_bank/haddrreg/q_reg_45_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_46_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_47_] [get_cells dut/reg_bank/haddrreg/q_reg_48_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_49_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_50_] [get_cells dut/reg_bank/haddrreg/q_reg_51_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_52_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_53_] [get_cells dut/reg_bank/haddrreg/q_reg_54_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_55_] [get_cells                         \
dut/reg_bank/writereg/q_reg_0_] [get_cells dut/clk_gen/apb_clk_shift_reg]      \
[get_cells dut/clk_gen/GLITCH_FREE_CKT1/q3_reg] [get_cells                     \
dut/clk_gen/GLITCH_FREE_CKT1/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q0_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q3_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q0_reg] [get_cells dut/clk_gen/counter_reg_0_]    \
[get_cells dut/clk_gen/counter_reg_1_] [get_cells dut/resetsync/q_reg]         \
[get_cells dut/resetsync/mid_reg]]
group_path -name reg2out  -from [list [get_cells dut/PMU/spi_isolation_enb_reg] [get_cells              \
dut/PMU/uart_isolation_enb_reg] [get_cells dut/PMU/eeprom_isolation_enb_reg]   \
[get_cells dut/PMU/eeprom_powergate_enb_reg] [get_cells                        \
dut/PMU/spi_powergate_enb_reg] [get_cells dut/PMU/uart_powergate_enb_reg]      \
[get_cells dut/PMU/spi_isolation_enb_delay4_reg] [get_cells                    \
dut/PMU/uart_isolation_enb_delay4_reg] [get_cells                              \
dut/PMU/spi_isolation_enb_delay3_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay3_reg] [get_cells                              \
dut/PMU/eeprom_isolation_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_isolation_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay2_reg] [get_cells                              \
dut/PMU/eeprom_powergate_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_powergate_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_powergate_enb_delay2_reg] [get_cells                              \
dut/reg_bank/clk_shift_enb_register_reg_0_] [get_cells                         \
dut/reg_bank/clk_div_register_reg_0_] [get_cells                               \
dut/reg_bank/clk_div_register_reg_1_] [get_cells                               \
dut/reg_bank/pmu_state_config_register_reg_0_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_1_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_2_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_3_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_4_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_5_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_6_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_7_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_8_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_9_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_10_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_11_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_12_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_13_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_14_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_15_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_16_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_17_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_18_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_19_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_20_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_21_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_22_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_23_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_24_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_25_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_26_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_27_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_28_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_29_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_30_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_31_] [get_cells                     \
dut/reg_bank/readyreg/q_reg_0_] [get_cells dut/reg_bank/haddrreg/q_reg_0_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_1_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_2_] [get_cells dut/reg_bank/haddrreg/q_reg_3_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_4_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_5_] [get_cells dut/reg_bank/haddrreg/q_reg_6_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_7_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_8_] [get_cells dut/reg_bank/haddrreg/q_reg_9_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_10_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_11_] [get_cells dut/reg_bank/haddrreg/q_reg_12_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_13_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_14_] [get_cells dut/reg_bank/haddrreg/q_reg_15_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_16_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_17_] [get_cells dut/reg_bank/haddrreg/q_reg_18_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_19_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_20_] [get_cells dut/reg_bank/haddrreg/q_reg_21_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_22_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_23_] [get_cells dut/reg_bank/haddrreg/q_reg_24_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_25_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_26_] [get_cells dut/reg_bank/haddrreg/q_reg_27_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_28_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_29_] [get_cells dut/reg_bank/haddrreg/q_reg_30_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_31_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_32_] [get_cells dut/reg_bank/haddrreg/q_reg_33_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_34_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_35_] [get_cells dut/reg_bank/haddrreg/q_reg_36_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_37_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_38_] [get_cells dut/reg_bank/haddrreg/q_reg_39_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_40_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_41_] [get_cells dut/reg_bank/haddrreg/q_reg_42_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_43_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_44_] [get_cells dut/reg_bank/haddrreg/q_reg_45_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_46_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_47_] [get_cells dut/reg_bank/haddrreg/q_reg_48_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_49_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_50_] [get_cells dut/reg_bank/haddrreg/q_reg_51_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_52_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_53_] [get_cells dut/reg_bank/haddrreg/q_reg_54_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_55_] [get_cells                         \
dut/reg_bank/writereg/q_reg_0_] [get_cells dut/clk_gen/apb_clk_shift_reg]      \
[get_cells dut/clk_gen/GLITCH_FREE_CKT1/q3_reg] [get_cells                     \
dut/clk_gen/GLITCH_FREE_CKT1/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q0_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q3_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q0_reg] [get_cells dut/clk_gen/counter_reg_0_]    \
[get_cells dut/clk_gen/counter_reg_1_] [get_cells dut/resetsync/q_reg]         \
[get_cells dut/resetsync/mid_reg]]  -to [list [get_ports HRESPSYS_CTRL] [get_ports HREADYSYS_CTRL] [get_ports     \
HSELSYS_CTRL] [get_ports reset] [get_ports clk_out]]
group_path -name reg2reg  -from [list [get_cells dut/PMU/spi_isolation_enb_reg] [get_cells              \
dut/PMU/uart_isolation_enb_reg] [get_cells dut/PMU/eeprom_isolation_enb_reg]   \
[get_cells dut/PMU/eeprom_powergate_enb_reg] [get_cells                        \
dut/PMU/spi_powergate_enb_reg] [get_cells dut/PMU/uart_powergate_enb_reg]      \
[get_cells dut/PMU/spi_isolation_enb_delay4_reg] [get_cells                    \
dut/PMU/uart_isolation_enb_delay4_reg] [get_cells                              \
dut/PMU/spi_isolation_enb_delay3_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay3_reg] [get_cells                              \
dut/PMU/eeprom_isolation_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_isolation_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay2_reg] [get_cells                              \
dut/PMU/eeprom_powergate_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_powergate_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_powergate_enb_delay2_reg] [get_cells                              \
dut/reg_bank/clk_shift_enb_register_reg_0_] [get_cells                         \
dut/reg_bank/clk_div_register_reg_0_] [get_cells                               \
dut/reg_bank/clk_div_register_reg_1_] [get_cells                               \
dut/reg_bank/pmu_state_config_register_reg_0_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_1_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_2_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_3_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_4_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_5_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_6_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_7_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_8_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_9_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_10_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_11_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_12_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_13_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_14_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_15_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_16_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_17_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_18_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_19_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_20_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_21_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_22_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_23_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_24_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_25_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_26_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_27_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_28_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_29_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_30_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_31_] [get_cells                     \
dut/reg_bank/readyreg/q_reg_0_] [get_cells dut/reg_bank/haddrreg/q_reg_0_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_1_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_2_] [get_cells dut/reg_bank/haddrreg/q_reg_3_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_4_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_5_] [get_cells dut/reg_bank/haddrreg/q_reg_6_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_7_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_8_] [get_cells dut/reg_bank/haddrreg/q_reg_9_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_10_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_11_] [get_cells dut/reg_bank/haddrreg/q_reg_12_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_13_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_14_] [get_cells dut/reg_bank/haddrreg/q_reg_15_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_16_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_17_] [get_cells dut/reg_bank/haddrreg/q_reg_18_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_19_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_20_] [get_cells dut/reg_bank/haddrreg/q_reg_21_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_22_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_23_] [get_cells dut/reg_bank/haddrreg/q_reg_24_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_25_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_26_] [get_cells dut/reg_bank/haddrreg/q_reg_27_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_28_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_29_] [get_cells dut/reg_bank/haddrreg/q_reg_30_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_31_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_32_] [get_cells dut/reg_bank/haddrreg/q_reg_33_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_34_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_35_] [get_cells dut/reg_bank/haddrreg/q_reg_36_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_37_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_38_] [get_cells dut/reg_bank/haddrreg/q_reg_39_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_40_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_41_] [get_cells dut/reg_bank/haddrreg/q_reg_42_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_43_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_44_] [get_cells dut/reg_bank/haddrreg/q_reg_45_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_46_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_47_] [get_cells dut/reg_bank/haddrreg/q_reg_48_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_49_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_50_] [get_cells dut/reg_bank/haddrreg/q_reg_51_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_52_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_53_] [get_cells dut/reg_bank/haddrreg/q_reg_54_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_55_] [get_cells                         \
dut/reg_bank/writereg/q_reg_0_] [get_cells dut/clk_gen/apb_clk_shift_reg]      \
[get_cells dut/clk_gen/GLITCH_FREE_CKT1/q3_reg] [get_cells                     \
dut/clk_gen/GLITCH_FREE_CKT1/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q0_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q3_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q0_reg] [get_cells dut/clk_gen/counter_reg_0_]    \
[get_cells dut/clk_gen/counter_reg_1_] [get_cells dut/resetsync/q_reg]         \
[get_cells dut/resetsync/mid_reg]]  -to [list [get_cells dut/PMU/spi_isolation_enb_reg] [get_cells                \
dut/PMU/uart_isolation_enb_reg] [get_cells dut/PMU/eeprom_isolation_enb_reg]   \
[get_cells dut/PMU/eeprom_powergate_enb_reg] [get_cells                        \
dut/PMU/spi_powergate_enb_reg] [get_cells dut/PMU/uart_powergate_enb_reg]      \
[get_cells dut/PMU/spi_isolation_enb_delay4_reg] [get_cells                    \
dut/PMU/uart_isolation_enb_delay4_reg] [get_cells                              \
dut/PMU/spi_isolation_enb_delay3_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay3_reg] [get_cells                              \
dut/PMU/eeprom_isolation_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_isolation_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_isolation_enb_delay2_reg] [get_cells                              \
dut/PMU/eeprom_powergate_enb_delay2_reg] [get_cells                            \
dut/PMU/spi_powergate_enb_delay2_reg] [get_cells                               \
dut/PMU/uart_powergate_enb_delay2_reg] [get_cells                              \
dut/reg_bank/clk_shift_enb_register_reg_0_] [get_cells                         \
dut/reg_bank/clk_div_register_reg_0_] [get_cells                               \
dut/reg_bank/clk_div_register_reg_1_] [get_cells                               \
dut/reg_bank/pmu_state_config_register_reg_0_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_1_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_2_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_3_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_4_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_5_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_6_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_7_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_8_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_9_] [get_cells                      \
dut/reg_bank/pmu_state_config_register_reg_10_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_11_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_12_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_13_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_14_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_15_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_16_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_17_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_18_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_19_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_20_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_21_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_22_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_23_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_24_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_25_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_26_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_27_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_28_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_29_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_30_] [get_cells                     \
dut/reg_bank/pmu_state_config_register_reg_31_] [get_cells                     \
dut/reg_bank/readyreg/q_reg_0_] [get_cells dut/reg_bank/haddrreg/q_reg_0_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_1_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_2_] [get_cells dut/reg_bank/haddrreg/q_reg_3_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_4_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_5_] [get_cells dut/reg_bank/haddrreg/q_reg_6_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_7_] [get_cells                          \
dut/reg_bank/haddrreg/q_reg_8_] [get_cells dut/reg_bank/haddrreg/q_reg_9_]     \
[get_cells dut/reg_bank/haddrreg/q_reg_10_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_11_] [get_cells dut/reg_bank/haddrreg/q_reg_12_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_13_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_14_] [get_cells dut/reg_bank/haddrreg/q_reg_15_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_16_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_17_] [get_cells dut/reg_bank/haddrreg/q_reg_18_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_19_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_20_] [get_cells dut/reg_bank/haddrreg/q_reg_21_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_22_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_23_] [get_cells dut/reg_bank/haddrreg/q_reg_24_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_25_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_26_] [get_cells dut/reg_bank/haddrreg/q_reg_27_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_28_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_29_] [get_cells dut/reg_bank/haddrreg/q_reg_30_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_31_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_32_] [get_cells dut/reg_bank/haddrreg/q_reg_33_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_34_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_35_] [get_cells dut/reg_bank/haddrreg/q_reg_36_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_37_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_38_] [get_cells dut/reg_bank/haddrreg/q_reg_39_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_40_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_41_] [get_cells dut/reg_bank/haddrreg/q_reg_42_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_43_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_44_] [get_cells dut/reg_bank/haddrreg/q_reg_45_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_46_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_47_] [get_cells dut/reg_bank/haddrreg/q_reg_48_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_49_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_50_] [get_cells dut/reg_bank/haddrreg/q_reg_51_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_52_] [get_cells                         \
dut/reg_bank/haddrreg/q_reg_53_] [get_cells dut/reg_bank/haddrreg/q_reg_54_]   \
[get_cells dut/reg_bank/haddrreg/q_reg_55_] [get_cells                         \
dut/reg_bank/writereg/q_reg_0_] [get_cells dut/clk_gen/apb_clk_shift_reg]      \
[get_cells dut/clk_gen/GLITCH_FREE_CKT1/q3_reg] [get_cells                     \
dut/clk_gen/GLITCH_FREE_CKT1/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT1/q0_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q3_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q2_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q1_reg] [get_cells                                \
dut/clk_gen/GLITCH_FREE_CKT0/q0_reg] [get_cells dut/clk_gen/counter_reg_0_]    \
[get_cells dut/clk_gen/counter_reg_1_] [get_cells dut/resetsync/q_reg]         \
[get_cells dut/resetsync/mid_reg]]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[55]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[54]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[53]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[52]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[51]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[50]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[49]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[48]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[47]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[46]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[45]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[44]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[43]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[42]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[41]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[40]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[39]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[38]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[37]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[36]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[35]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[34]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[33]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[32]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[31]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[30]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[29]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[28]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[27]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[26]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[25]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[24]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[23]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[22]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[21]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[20]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[19]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[18]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[17]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[16]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[15]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[14]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[13]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[12]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[11]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[10]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[9]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[8]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[7]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[6]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[5]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[4]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[3]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[2]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[1]}]
set_input_delay -clock MAIN  0.75  [get_ports {HADDR[0]}]
set_input_delay -clock MAIN  0.75  [get_ports HWRITE]
set_input_delay -clock MAIN  0.75  [get_ports {HSIZE[2]}]
set_input_delay -clock MAIN  0.75  [get_ports {HSIZE[1]}]
set_input_delay -clock MAIN  0.75  [get_ports {HSIZE[0]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[63]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[62]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[61]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[60]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[59]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[58]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[57]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[56]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[55]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[54]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[53]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[52]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[51]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[50]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[49]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[48]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[47]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[46]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[45]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[44]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[43]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[42]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[41]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[40]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[39]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[38]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[37]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[36]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[35]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[34]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[33]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[32]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[31]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[30]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[29]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[28]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[27]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[26]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[25]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[24]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[23]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[22]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[21]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[20]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[19]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[18]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[17]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[16]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[15]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[14]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[13]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[12]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[11]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[10]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[9]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[8]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[7]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[6]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[5]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[4]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[3]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[2]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[1]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWDATA[0]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[7]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[6]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[5]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[4]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[3]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[2]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[1]}]
set_input_delay -clock MAIN  0.75  [get_ports {HWSTRB[0]}]
set_input_delay -clock MAIN  0.75  [get_ports HREADY]
set_input_delay -clock MAIN  0.75  [get_ports {HTRANS[1]}]
set_input_delay -clock MAIN  0.75  [get_ports {HTRANS[0]}]
set_input_delay -clock MAIN  0.75  [get_ports reset_ext]
set_output_delay -clock MAIN  0.75  [get_ports HRESPSYS_CTRL]
set_output_delay -clock MAIN  0.75  [get_ports HREADYSYS_CTRL]
set_output_delay -clock MAIN  0.75  [get_ports HSELSYS_CTRL]
set_output_delay -clock MAIN  0.75  [get_ports reset]
set_output_delay -clock MAIN  0.75  [get_ports clk_out]
set_voltage 0.585  -min 0.585  -object_list VDDL
set_voltage 0  -min 0  -object_list VSS
