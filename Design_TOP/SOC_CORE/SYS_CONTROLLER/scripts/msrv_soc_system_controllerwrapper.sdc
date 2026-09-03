set scenario default
set ip [remove_from_collection [all_inputs] [get_ports clk]]
 
if {[shell_is_in_topographical_mode]} {
  create_scenario ${scenario}
  create_clock -period 4 -name MAIN [get_ports clk]
  set_input_delay 0.75 -clock MAIN $ip
  set_output_delay -clock MAIN 0.75 [get_ports [all_outputs]]
  set_load -pin_load 0.004 [get_ports [all_outputs]]
  set_max_fanout 200 [current_design]
  set_max_transition 0.1 [current_design]
  set_max_capacitance 100 [current_design]
  set_voltage 0.65 -object_list VDD
  set_voltage 0.585 -object_list VDDL
  set_voltage 0 -object_list VSS
  set_operating_conditions  -min default -max default

  set_tlu_plus_files -max_tluplus /home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tlup/saed14nm_1p9m_Cnom.tlup \
                   -tech2itf_map /home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_TECH_DATA/map/saed14nm_tf_itf_tluplus.map 
  check_tlu_plus_files
  # Set options for worst case setup scenario
  set_scenario_options -setup true -hold false -leakage_power false
  report_scenario_options
} else {
  create_clock -name MAIN -period 4 [get_ports clk]
  set_input_delay 0.75 -clock MAIN $ip
  set_output_delay -clock MAIN 0.75 [get_ports [all_outputs]]
  set_load -pin_load 0.004 [get_ports [all_outputs]]
  set_max_fanout 200 [current_design]
  set_max_transition 0.1 [current_design]
  set_max_capacitance 100 [current_design]
 # set_voltage 0.65 -object_list VDD
  set_voltage 0.585 -object_list VDDL
  set_voltage 0 -object_list VSS

  set_operating_conditions -max ss0p585v125c

 # set_operating_conditions -min tt0p65v25c -max tt0p65v25c
#ss0p585vm40c
}


