###############################################
#Welcome to the CTS Scripts  (Regular Method)
###############################################

###############################################
#set_app_options to be done before cts 
###############################################

#default user 

set_app_options -list {cts.multisource.tap_selection {symmetric}}

set_app_options -list {cts.multisource.cell_em_aware {true}}

########################################################
#CTS special cells to be added like buffer and inverter
#########################################################

set CTS_CELLS [get_lib_cells "*/NBUFF*LVT */NBUFF*RVT */INVX*_LVT */INVX*_RVT */CGL* */LSUP* */*DFF*"]
set_dont_touch $CTS_CELLS false
set_lib_cell_purpose -exclude cts [get_lib_cells] 
set_lib_cell_purpose -include cts $CTS_CELLS

set cts_references [get_lib_cells -filter valid_purposes=~*cts*]

#######################################################
#Pre stage cts 
########################################################

check_design -checks pre_clock_tree_stage

########################################################
#Read the ndr 
########################################################

#source ../scripts/clock_ndr.tcl -echo
source ../../../Project/CTS_RISC_V/scripts/clock_ndr.tcl

####################################################################
#only RVT cells are used if we need add others cells like HVT & LVT 
####################################################################

#-mesh_lib_cells [get_lib_cells { saed32_rvt|saed32_rvt_std/INVX0_RVT saed32_rvt|saed32_rvt_std/INVX16_RVT saed32_rvt|saed32_rvt_std/INVX1_RVT saed32_rvt|saed32_rvt_std/INVX2_RVT saed32_rvt|saed32_rvt_std/INVX32_RVT saed32_rvt|saed32_rvt_std/INVX4_RVT saed32_rvt|saed32_rvt_std/INVX8_RVT saed32_rvt|saed32_rvt_std/NBUFFX16_RVT saed32_rvt|saed32_rvt_std/NBUFFX2_RVT saed32_rvt|saed32_rvt_std/NBUFFX32_RVT saed32_rvt|saed32_rvt_std/NBUFFX4_RVT saed32_rvt|saed32_rvt_std/NBUFFX8_RVT}]\

set_regular_multisource_clock_tree_options -clock func_clk -topology htree_only -tap_boxes {4 4} \
-tap_lib_cells [get_lib_cells { saed32_rvt|saed32_rvt_std/NBUFFX16_RVT saed32_rvt|saed32_rvt_std/NBUFFX2_RVT saed32_rvt|saed32_rvt_std/NBUFFX32_RVT saed32_rvt|saed32_rvt_std/NBUFFX4_RVT saed32_rvt|saed32_rvt_std/NBUFFX8_RVT}] \
-htree_lib_cells [get_lib_cells { saed32_rvt|saed32_rvt_std/NBUFFX16_RVT saed32_rvt|saed32_rvt_std/NBUFFX2_RVT saed32_rvt|saed32_rvt_std/NBUFFX32_RVT saed32_rvt|saed32_rvt_std/NBUFFX4_RVT saed32_rvt|saed32_rvt_std/NBUFFX8_RVT}] \
-htree_layers {M6 M7} -htree_routing_rule cts_w2_s2_vlg

synthesize_regular_multisource_clock_trees

set_lib_cell_purpose -include cts [get_lib_cells $cts_references ]

#remove_regular_multisource_clock_tree_options

report_regular_multisource_clock_tree_options

check_clock_trees

####################################################################
#basic check 
#####################################################################

get_cells *clk*

set tap_drivers [get_cells *clk_drv*]

sizeof_collection $tap_drivers

set tap_driver_pins [get_pins -of_objects $tap_drivers -filter "direction==out"]
puts "Tap-driver output pins = [sizeof_collection $tap_driver_pins ]"
report_collection $tap_driver_pins

set num_taps [sizeof_collection $tap_driver_pins ]

######################################################
#tap 
######################################################

set_multisource_clock_tap_options -clock [get_clocks func_clk] \
 -driver_objects $tap_driver_pins -num_taps $num_taps

report_multisource_clock_tap_options

#remove_multisource_clock_tap_options

synthesize_multisource_clock_taps

############################################
#clock opt
############################################

clock_opt -from build_clock -to route_clock

############################################
#check where in my design 
############################################

set tap [get_cells {clk_drv_r1c1 clk_drv_r1c2 clk_drv_r1c3 clk_drv_r1c4 clk_drv_r2c1 clk_drv_r2c2 clk_drv_r2c3 clk_drv_r2c4 clk_drv_r3c1 clk_drv_r3c2 clk_drv_r3c3 clk_drv_r3c4 clk_drv_r4c1 clk_drv_r4c2 clk_drv_r4c3 clk_drv_r4c4}]

change_selection $tap

#######################################
#completed
#######################################































#set global_driver_pins [get_clock_tree_pins -clocks [get_clocks clock]  -filter is_mscts_global_driver_object]

set global_driver_pins [get_clock_tree_pins -clocks [get_clocks clock] \
-filter "is_on_global_clock_tree && (is_on_buffer || is_on_inverter)"]
puts "MSCTS global drivers = [sizeof_collection $global_driver_pins ]" #it show 1816 pins in my design
report_collection $global_driver_pins

set global_driver_pins [get_clock_tree_pins -clocks [get_clocks clock] -filter is_on_global_clock_tree && is_net_driver]
set global_driver_pins [get_clock_tree_pins -clocks [get_clocks clock] -filter "is_on_global_clock_tree && is_net_driver"]
set global_driver_pins [get_clock_tree_pins -clocks [get_clocks clock]  -filter "is_on_global_clock_tree && (is_on_buffer || is_on_inverter)"]
puts "MSCTS global drivers = [sizeof_collection $global_driver_pins ]"
puts "MSCTS global drivers = [sizeof_collection $global_driver_pins ]"
report_collection $global_driver_pins

