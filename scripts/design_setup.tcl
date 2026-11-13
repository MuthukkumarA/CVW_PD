####################################################
#RISC_V project in the Fc
####################################################

##############################
#Design Setup
##############################

set Path "../../../Fusion_compiler_labs/FC_LABS/ref/"

set TECH "$Path/tech/saed32nm_1p9m.tf"

set REF_LIB "$Path/CLIBs/saed32_sram_lp.ndm/ \
	   $Path/CLIBs/saed32_hvt.ndm/ \
             $Path/CLIBs/saed32_lvt.ndm/ \ 
             $Path/CLIBs/saed32_rvt.ndm/"


################################
#creating the libraray
#################################

create_lib -technology $TECH -ref_libs $REF_LIB RISC_V.dlib

#################################
#reading the rtl
#################################

set RTL_Path "../../../Project/router_pnr_flow/routericc2flow/rtl/"

analyze -format verilog [glob $RTL_Path/*.v ]

elaborate msrv32_top

set_top_module msrv32_top

#################################
#reading the para
#################################

set map ../../../Fusion_compiler_labs/FC_LABS/ref/tech/saed32nm_tf_itf_tluplus.map

set max ../../../Fusion_compiler_labs/FC_LABS/ref/tech/saed32nm_1p9m_Cmax.lv.nxtgrd

set min ../../../Fusion_compiler_labs/FC_LABS/ref/tech/saed32nm_1p9m_Cmin.lv.nxtgrd

read_parasitic_tech -layermap $map -tlup $max -name maxTLU

read_parasitic_tech -layermap $map -tlup $min -name minTLU

report_lib RISC_V.dlib

set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal

set_attribute [get_layers {M2 M4 M6 M8}] routing_direction vertical

set_ignored_layers -max_routing_layer M8

report_ignored_layers

########################################
#UPF
########################################

create_supply_net VDD

create_supply_net VDDH

create_supply_net VSS

create_supply_set ss_high -function {power VDD} -function {ground VSS}

create_supply_set ss_low -function {power VDDH} -function {ground VSS}

create_power_domain RISC_V_Top -supply {primary ss_high}

create_power_domain RISC_V_ALU -supply {primary ss_low} -elements {ALU}

create_supply_port VDD -domain RISC_V_Top -direction in

create_supply_port VDDH -domain RISC_V_Top -direction in

create_supply_port VSS -domain RISC_V_Top -direction in

connect_supply_net VDDH -ports VDDH

connect_supply_net VDD -ports VDD

connect_supply_net VSS -ports VSS

set_level_shifter alu_in -domain RISC_V_ALU -applies_to input -rule high_to_low -location self

set_level_shifter alu_out -domain RISC_V_ALU -rule low_to_high -applies_to output -location parent


add_power_state -supply ss_high -state ON { -supply_expr {power == {FULL_ON 1.16} && ground == {FULL_ON 0.0}} }
add_power_state -supply ss_low -state ON { -supply_expr {power == {FULL_ON 0.95} && ground == {FULL_ON 0.0}} }

create_power_state_group PST
add_power_state -group PST -state RUN { -logic_expr {ss_low==ON&&ss_high==ON} }

set_voltage 1.16 -object_list VDD

set_voltage 0.95 -object_list VDDH

set_voltage 0.00 -object_list VSS

commit_upf

check_mv_design

#######################################
#MCMM
#######################################

create_mode func_mode
create_clock -period 5 -name func_clk [get_ports ms_riscv32_mp_clk_in]

create_mode test_mode
create_clock -period 7 -name test_clk [get_ports ms_riscv32_mp_clk_in]

report_modes

report_lib saed32_hvt
report_lib saed32_lvt
report_lib saed32_rvt

###################################
#below corner does not have the ss corner for 1.16 voltage so i will get pvt miss match
#####################################

#create_corner ss_125

#set_process_number 0.99 -corners ss_125
#set_process_label slow -corners ss_125
#set_voltage 1.16 -object_list VDD -corners ss_125
#set_voltage 0.95 -object_list VDDH -corner ss_125
#set_voltage 0.00 -object_list VSS -corners ss_125
#set_temperature 125 -corners ss_125 
#set_parasitic_parameters -late_spec maxTLU -early_spec maxTLU -corners ss_125



create_corner ff_125

set_process_number 1.01 -corners ff_125
set_process_label fast -corners ff_125
set_voltage 1.16 -object_list VDD -corners ff_125
set_voltage 0.00 -object_list VSS -corners ff_125
set_voltage 0.95 -object_list VDDH -corner ff_125
set_temperature 125 -corners ff_125
set_parasitic_parameters -late_spec minTLU -early_spec minTLU -corners ff_125



create_scenario -name func.ff_125 -corner ff_125 -mode func_mode

#create_scenario -name func.ss_125 -corner ss_125 -mode func_mode

create_scenario -name test.ss_125 -corner ff_125 -mode test_mode


current_scenario func.ff_125

current_corner

current_mode

set_driving_cell -lib_cell INVX8_LVT [get_ports ms_riscv32_mp_clk_in]
set_driving_cell -lib_cell INVX8_RVT [remove_from_collection [all_inputs] [get_ports ms_riscv32_mp_clk_in]]


set_clock_uncertainty -setup 0.1 [get_clocks func_clk]
set_clock_latency 0.3 [get_clocks func_clk]
set_clock_transition 0.1 [get_clocks func_clk]

set_input_delay  -add_delay -max 0.6 -clock func_clk [remove_from_collection [all_inputs] [get_ports ms_riscv32_mp_clk_in]]
set_output_delay -add_delay -max 0.3 -clock func_clk [all_outputs]


report_pvt

#remove_corners -all
#remove_modes -all 
#remove_scenarios -all 

save_block -as design_setup


##############################
#enable the tie before synthesis
#################################
#id for tie high and low

get_lib_cells -filter "function_id==a0.0"
get_lib_cells -filter "function_id==Ia0.0"

#available to synthesis

set_dont_touch [get_lib_cells *TIE*] false
set_lib_cell_purpose -include optimization [get_lib_cells *TIE*]


####################################################
#Synthesis
####################################################

compile_fusion -from initial_map -to initial_map

report_mv_cells

report_design > ../reports/synthesis/rpt_design
report_qor  > ../reports/synthesis/rpt_qor
report_unloaded_registers 
report_transformed_registers > ../reports/synthesis/rpt_transformed_registers
report_clock_gating > ../reports/synthesis/rpt_clk_gating

report_mv_cells #this cmd i get how many level shifter is added 100 LS
report_mv_cells -level_shifter > ../reports/synthesis/rpt_mv_cells


compile_fusion -from logic_opto -to logic_opto 

report_mv_design > ../reports/synthesis/rpt_mv_design


save_block -as synthesis

report_area > ../reports/synthesis/rpt_area	
#####################################################
#floor plan
#####################################################
fc_shell> expr "25513.77/0.7"
36448.2428571
fc_shell> expr "36448.2428571/5"
7289.64857142
fc_shell> expr "sqrt(7289.64857142)"
85.3794388095

initialize_floorplan -boundary {{85.000 0.000} {170.000 0.000} {170.000 85.000} {255.000 85.000} {255.000 170.000} {170.000 170.000} {170.000 255.000} {85.000 255.000} {85.000 170.000} {0.000 170.000} {0.000 85.000} {85.000 85.000}} -core_offset {10}
shape_blocks

#set_attribute -objects [get_voltage_area_shapes VOLTAGE_AREA_SHAPE_1] -name guard_band_overall -value {1.0000 1.0000 1.0640 1.67200}

set_attribute -objects [get_voltage_area_shapes VOLTAGE_AREA_SHAPE_1] -name guard_band_overall -value {1.000 1.6720 1.0640 1.6720}

set_block_pin_constraints -sides {1 2 3 11 12} -allowed_layers {M3 M4} -self

place_pins -ports [get_ports -filter "direction==in"]

set_block_pin_constraints -sides {5 6 7 8 9} -allowed_layers {M3 M4} -self

place_pins -ports [get_ports -filter "direction==out"]

set_attr [get_ports *] physical_status fixed

get_lib_cells *CAP*

create_boundary_cells -left_boundary_cell saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-right_boundary_cell saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-bottom_boundary_cells saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-top_boundary_cells saed32_hvt|saed32_hvt_std/DCAP_HVT


connect_pg_net

#remove_cells [get_flat_cells -filter *DCAP* -all]

report_utilization

save_block -as floor_plan
########################################################################

remove_pg_strategies -all
remove_pg_patterns -all

remove_routes -ring

remove_routes -lib_cell_pin_connect

remove_routes -stripe

create_pg_ring_pattern ring_pattern -horizontal_layer M7 \
   -horizontal_width {1} -horizontal_spacing {1} \
   -vertical_layer M8 -vertical_width {1} -vertical_spacing {1}

set_pg_strategy core_ring -core \
  -pattern {{name: ring_pattern}  {nets: {VDD VDDH VSS}} {offset: {1 1}}} \
  -extension {{{side : 3}{direction : T }{stop : design_boundary_and_generate_pin}}}

compile_pg -strategies core_ring

#############################################
#rails
#############################################

create_pg_std_cell_conn_pattern rail_pattern -layers M1

set_pg_strategy M1_rails -voltage_areas DEFAULT_VA -pattern {{name: rail_pattern}{nets: VDD VSS}}

set_pg_strategy M1_rails_alu -voltage_areas RISC_V_ALU -pattern {{name: rail_pattern}{nets: VDDH VSS}}

compile_pg -strategies {M1_rails M1_rails_alu}
 
############################################
#mesh
############################################

#if it is multi voltage design the give in the voltage not use -core

create_pg_mesh_pattern mesh_pattern \
   -layers {{{vertical_layer: M6} {width: 0.2}\
             {pitch: 10} {spacing: interleaving} {offset: 5}}\
            {{horizontal_layer: M7} {width: 0.2}\
             {pitch: 10} {spacing: interleaving} {offset: 4.5}}}

set_pg_strategy M5M6_mesh -voltage_areas DEFAULT_VA -pattern {{name : mesh_pattern}{nets : {VDD VSS}}} \
	-blockage {{{voltage_areas : {RISC_V_ALU}}}} \
	-extension {{{side: 1 2 3} {direction:L T B R} {nets: VDD VSS} {stop : outermost_ring}}}

set_pg_strategy M5M6_mesh_alu -voltage_areas RISC_V_ALU -pattern {{name : mesh_pattern}{nets : {VDDH VSS}}} \
	-blockage {{{voltage_areas : {DEFAULT_VA}}}} \
	 -extension {{ {nets: VDDH VSS} {side: 5 6} {direction: T R} {stop : outermost_ring}}}

compile_pg -strategies {M5M6_mesh M5M6_mesh_alu}
################
#latha#
##########################
create_pg_mesh_pattern mesh_pattern \
   -layers {{{vertical_layer: M6} {width: 0.2}\
             {pitch: 10} {offset: 5} {spacing: interleaving}}\
            {{horizontal_layer: M7} {width: 0.2}\
             {pitch: 10} {offset: 4.5} {spacing: interleaving}}}

set_pg_strategy M5M6_mesh \
   -pattern {{name: mesh_pattern} \
             {nets: VDDH VSS}} -voltage_areas RISC_V_ALU \
   -blockage {{voltage_areas : DEFAULT_VA} {nets: VDDH VSS}} \
   -extension { {nets: VDDH VSS} {side: 5 6} {direction: T R} {stop: outermost_ring}}

set_pg_strategy M5M6_mesh1 \
   -pattern {{name: mesh_pattern} \
             {nets: VDD VSS}} -voltage_areas DEFAULT_VA \
   -blockage {{voltage_areas : RISC_V_ALU} {nets: VDD VSS}} \
   -extension { {side: 1 2 3} {direction: L R T B} {nets: VDD VSS} {stop: outermost_ring}}


compile_pg -strategies {M5M6_mesh M5M6_mesh1}
################################################################
check_pg_drc
check_pg_missing_vias

check_pg_connectivity

save_block -as powerplan


#####################################################
#placement
######################################################


create_placement -congestion -timing_driven

compile_fusion -from initial_place -to final_opto

########################
#add Tie cells
########################

add_tie_cells

connect_pg_net -tie

sizeof_collection [ get_lib_cells *TIE*] #library 6 cells are there

sizeof_collection [get_cells -of_objects [get_lib_cells *TIE*]] #total cell added in my design is 111

change_selection [get_cells -of_objects [get_lib_cells *TIE*]]

################################
#reports
################################

check_pg_drc

check_pg_missing_vias

check_pg_connectivity

report_utilization
report_design
report_qor
report_power_domains
report_constraint
report_clock
report_global_timing
report_constraints -all_violators -scenarios func.ff_125
report_constraints -all_violators -scenarios test.ss_125
report_constraints -all_violators
report_timing
report_timing -max_paths 10
report_threshold_voltage_group

##############################################
#CTS
##############################################

source ../scripts/cts.tcl

###############################################

save_block -as cts

##############################################
#Route
##############################################

set_app_options -name route.detail.timing_driven -value true

set_app_options -name route.track.timing_driven -value true

set_app_options -name route.track.crosstalk_driven -value true

set_app_options -name route.global.timing_driven -value true

set_app_options -name route.common.global_min_layer_mode -value allow_pin_connection

set_app_option -name route.common.global_max_layer_mode -value soft

set_app_option -name time.si_enable_analysis -value true

set_app_option -name time.enable_si_timing_windows -value true

set_app_option -name time.enable_ccs_rcv_cap -value true











