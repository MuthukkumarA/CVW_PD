set_host_options -max_cores 8

#################
#Global Variables
#################
set DESIGN_NAME msrv_soc_uncorewrapper
set OUTPUTS_DIR ../outputs/
set SCRIPTS ../scripts
set DESIGN_STYLE hier
set PHYSICAL_HIERARCHY_LEVEL top
set DC_BLOCK_ABSTRACTION_DESIGNS ""
set DDC_HIER_DESIGNS "msrv_soc_uart_apbwrapper msrv_soc_clint_apbwrapper msrv_soc_plic_apbwrapper msrv_soc_spi_apbwrapper msrv_soc_gpio_apbwrapper msrv_soc_ahbapbbridgewrapper msrv_soc_rom_ahbwrapper msrv_soc_adrdecswrapper"
set UPF_MODE golden
set UPF_FILE ${SCRIPTS}/${DESIGN_NAME}.upf
set DCRM_NDM_LIBRARY_NAME ${DESIGN_NAME}.ndm

set TECH_FILE "/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_TECH_DATA/tf/saed14nm_1p9m.tf"   
set REFERENCE_LIBRARY             "/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_dlvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_iso_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_ret_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_cg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_frame_only.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_pg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_base_frame_timing.ndm \                     
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/ndm/saed14lvt_ulvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_base_frame_timing.ndm \                 
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_dlvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_iso_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_ret_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_cg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_frame_only.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_pg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/ndm/saed14hvt_ulvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_base_frame_timing.ndm \                 
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_dlvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_iso_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_ret_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_cg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_frame_only.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_pg_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/ndm/saed14rvt_ulvl_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_SRAM/ndm/saed14sram_frame_only.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_SRAM/ndm/saed14sram_frame_timing.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_IO_FC/ndm/saed14io_fc_frame_only.ndm \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_IO_FC/ndm/saed14io_fc_frame_timing.ndm"  


##################################
#RTL Variables
##################################
set msrv_soc "/home1/Harini_MTS/Project_CVW/Synth/rtl"

set rtl_path {}
set rtl_path "$rtl_path $msrv_soc/msrv_soc_cache"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ebu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_fpu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_fpu/msrv_soc_fdivsqrt"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_fpu/msrv_soc_fma"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_fpu/msrv_soc_postproc"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_generic"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_generic/msrv_soc_mem"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_generic/msrv_soc_flop"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_hazard"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ieu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ifu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ieu/msrv_soc_aes"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ieu/msrv_soc_bmu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ieu/msrv_soc_kmu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ieu/msrv_soc_sha"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_ifu/msrv_soc_bpred"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_lsu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_mdu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_mmu/msrv_soc_tlb"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_mmu"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_privileged"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_top"
set rtl_path "$rtl_path $msrv_soc/msrv_soc_uncore"
#set rtl_path "$rtl_path $msrv_soc/wrapper"




if {$DESIGN_STYLE == "hier" && $PHYSICAL_HIERARCHY_LEVEL == "top"} {
  # For a hierarchical flow, add the block-level results directories to the
  # search path to find the block-level design files.
  set HIER_DESIGNS "${DDC_HIER_DESIGNS} ${DC_BLOCK_ABSTRACTION_DESIGNS}"
  foreach design $HIER_DESIGNS {
    lappend search_path ../../${design}/outputs/
  }
  # For a hierarchical UPF flow, add the results directory to the search path for
  # Formality to find the output UPF files.
  lappend search_path ${OUTPUTS_DIR}
}

# Change alib_library_analysis_path to point to a central cache of analyzed libraries
# to save runtime and disk space.  The following setting only reflects the
# default value and should be changed to a central location for best results.
set_app_var alib_library_analysis_path .
if {![file exists $OUTPUTS_DIR]} {file mkdir $OUTPUTS_DIR} ;# do not change this line or directory may not be created properly

if {$UPF_MODE == "golden"} {
  # Enable the Golden UPF mode to use same originla UPF script file throughout the synthesis,
  # physical implementation, and verification flow.
  set_app_var enable_golden_upf true
}


###################################################################################
# Library Setup
#################################################################################
set TARGET_LIBRARY_FILES  "/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/cg/saed14lvt_cg_ff0p715v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/pg/saed14lvt_pg_tt0p65vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/ulvl/saed14lvt_ulvl_tt0p8v125c_i0p8v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/dlvl/saed14lvt_dlvl_ss0p72v25c_i0p72v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/dlvl/saed14lvt_dlvl_ss0p72vm40c_i0p72v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/cg/saed14hvt_cg_ff0p715v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/cg/saed14hvt_cg_ff0p715v25c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/dlvl/saed14hvt_dlvl_ss0p72v125c_i0p72v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/dlvl/saed14hvt_dlvl_ss0p72v25c_i0p72v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/pg/saed14hvt_pg_tt0p8v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/pg/saed14hvt_pg_tt0p8v25c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/base/saed14hvt_base_tt0p8v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ff0p715v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_tt0p65v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/base/saed14lvt_base_tt0p65v25c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/base/saed14lvt_base_tt0p65vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/base/saed14lvt_base_tt0p8v25c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/base/saed14rvt_base_ss0p585vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/base/saed14lvt_base_tt0p8vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/cg/saed14rvt_cg_ff0p715vm40c.db \ 
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/dlvl/saed14rvt_dlvl_ff0p88v25c_i0p88v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/dlvl/saed14rvt_dlvl_ff0p88vm40c_i0p88v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/dlvl/saed14rvt_dlvl_tt0p65v25c_i0p8v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/pg/saed14rvt_pg_tt0p65v125c.db \  
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/pg/saed14rvt_pg_ss0p585vm40c.db \  
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/ulvl/saed14rvt_ulvl_ss0p72vm40c_i0p585v.db \   
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_RVT/liberty/nldm/ulvl/saed14rvt_ulvl_tt0p8vm40c_i0p65v.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_SRAM/liberty/nldm/saed14sram_ss0p72vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/ret/saed14lvt_ret_ff0p715v125c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/ret/saed14lvt_ret_ss0p585v25c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_HVT/liberty/nldm/pg/saed14hvt_pg_ss0p585vm40c.db \
/home1/Harini_MTS/SAED14_EDK/SAED14nm_EDK_STD_LVT/liberty/nldm/ret/saed14lvt_ret_tt0p65v125c.db"



set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var synthetic_library dw_foundation.sldb
set_app_var link_library "* $target_library $synthetic_library"

if {[shell_is_in_topographical_mode]} {
  if {[info exists view_target] && [file exists $DCRM_NDM_LIBRARY_NAME]} {
    puts "RM-info: opening existing lib $DCRM_NDM_LIBRARY_NAME"
    open_lib $DCRM_NDM_LIBRARY_NAME
  } else {
    if {[file exists $DCRM_NDM_LIBRARY_NAME]} {
      puts "RM-info: deleting existing lib $DCRM_NDM_LIBRARY_NAME"
      file delete -force $DCRM_NDM_LIBRARY_NAME
    }
   
    set create_lib_cmd "create_lib -technology $TECH_FILE $DCRM_NDM_LIBRARY_NAME"
    if {${REFERENCE_LIBRARY} != ""} { lappend create_lib_cmd " -ref_libs \"${REFERENCE_LIBRARY}\""}
    puts "RM-info: Running $create_lib_cmd"
    eval ${create_lib_cmd}
  }
}

set set_check_library_cmd "set_check_library_options -mcmm"
if {$UPF_MODE != "none"} {lappend set_check_library_cmd -upf}
puts "RM-info: Running $set_check_library_cmd"
eval ${set_check_library_cmd}
redirect -file ${OUTPUTS_DIR}/${DESIGN_NAME}.check_library.rpt {check_library}

#################################################################################
# Library Modifications
# Apply library modifications after the libraries are loaded.
#################################################################################
#source ${SCRIPTS}/dont_use.tcl

########################################################################################## 
## Message handling
##########################################################################################
# The following setting removes new variable info messages from the end of the log file
set_app_var sh_new_variable_message false
# Enable the insertion of level-shifters on clock nets for a multivoltage flow
set_app_var auto_insert_level_shifters_on_clocks all
# Enable the support of via resistance for RC estimation to improve the timing correlation with IC Compiler
set_app_var spg_enable_via_resistance_support true 


#################################################################################
# Setup for Formality Verification
#################################################################################
# In the event of an inconclusive (or hard) verification, we recommend using
# the set_verification_priority commands provided from the analyze_points command
# in Formality. The set_verification_priority commands target specific
# operators to reduce verification complexity while minimizing QoR impact.
# The set_verification_priority commands should be applied after the design
# is read and elaborated.

# For designs that don't have tight QoR constraints and don't have register retiming,
# you can use the following variable to enable the highest productivity single pass flow.
# This flow modifies the optimizations to make verification easier.
# This variable setting should be applied prior to reading in the RTL for the design.
set_app_var simplified_verification_mode true
# Define the verification setup file for Formality
set_svf ${OUTPUTS_DIR}/${DESIGN_NAME}.mapped.svf


#################################################################################
# Read in the RTL Design
# Read in the RTL source files or read in the elaborated design (.ddc).
#################################################################################

#Analyze
analyze -f sverilog $msrv_soc/cvw.sv
foreach path $rtl_path { 
    analyze -f sverilog [glob $path/*.sv] 
}
analyze -f sverilog $msrv_soc/wrapper/${DESIGN_NAME}.sv

if {$DESIGN_STYLE == "hier" && $PHYSICAL_HIERARCHY_LEVEL == "top"} {
  # The set_top_implementation_options command defines which blocks should be
  # read as block abstractions.
  # Note: You can use the -block_update_setup_script option to pass any variable 
  #       setting for the block update process. 
  if { (${DC_BLOCK_ABSTRACTION_DESIGNS} != "")} {
    set HIER_DESIGNS [concat ${DC_BLOCK_ABSTRACTION_DESIGNS}]
    set set_top_implementation_options_cmd "set_top_implementation_options -block_references \"$HIER_DESIGNS\""
    puts "RM-info: Running $set_top_implementation_options_cmd"
    eval ${set_top_implementation_options_cmd}
  }
  # Remove the RTL version of the hierarchical blocks in case they were read in
  set HIER_DESIGNS "${DDC_HIER_DESIGNS} ${DC_BLOCK_ABSTRACTION_DESIGNS}" 
  foreach design $HIER_DESIGNS {
    if {[filter [get_designs -quiet *] "@hdl_template == $design"] != "" } {
      remove_design -hierarchy [filter [get_designs -quiet *] "@hdl_template == $design"]
    }
  }
  #################################################################################
  # Load Hierarchical Designs
  #################################################################################
  
  # Read in compiled hierarchical blocks
  # For topographical mode top-level synthesis all physical blocks are required to
  # be compiled in topographical mode.
  
  foreach design ${DDC_HIER_DESIGNS} {
    set ddc_file ${design}.mapped.ddc
    puts "RM-info: Reading design $design as hierarchical DDC [which $ddc_file]"
    read_ddc $ddc_file
  }
  
  foreach design ${DC_BLOCK_ABSTRACTION_DESIGNS} {
    set ddc_file ${design}.mapped.ddc
    puts "RM-info: Reading design $design as block abstract [which $ddc_file]"
    read_ddc $ddc_file
  }
}



#Elaborate
elaborate ${DESIGN_NAME}
current_design ${DESIGN_NAME}
link

  
if {$DESIGN_STYLE == "hier" && $PHYSICAL_HIERARCHY_LEVEL == "top"} {
  # Check to make sure that all the correct designs were linked
  # Pay special attention to the source location of your physical blocks
  list_designs -show_file
  
  # Don't optimize ${DDC_HIER_DESIGNS}
  if { ${DDC_HIER_DESIGNS} != ""} {
    if {[shell_is_in_topographical_mode]} {
      # Hierarchical .ddc blocks must be marked as physical hierarchy
      # In case of multiply instantiated designs, only set_physical_hierarchy on ONE instance
      set_physical_hierarchy [sub_instances_of -hierarchy -master_instance -of_references ${DDC_HIER_DESIGNS} ${DESIGN_NAME}]
      puts "RM-info: Marked as physical hierarchy: [get_physical_hierarchy]"
    } else {
      # Don't touch these blocks in DC-WLM
      # TODO
      set_dont_touch [get_designs ${DDC_HIER_DESIGNS}]
    }
#TODO
    #create_link_block_abstraction
  }
  #TODO
  set HIER_DESIGNS "${DDC_HIER_DESIGNS} ${DC_BLOCK_ABSTRACTION_DESIGNS}"
  # Prevent optimization of top-level logic based on physical block contents
  # (required for hierarchical formal verification flow)
  set_boundary_optimization ${HIER_DESIGNS} false
  set_app_var compile_preserve_subdesign_interfaces true
  set_app_var compile_enable_constant_propagation_with_no_boundary_opt false
  
  #################################################################################
  # Propagate UPF Data from Hierarchical Blocks to Top
  #################################################################################
  
  # For the top-level design in a UPF hierarchical flow, remove the block-level
  # scenarios in memory before propagating the power supply data.
  remove_scenario -all
  propagate_constraints -power_supply_data
}

#################################################################################
# Load UPF MV Setup
#
# golden.upf, a UPF template file, can be used as a reference to develop a UPF-based
# low power intent file.
#
# You can also use Visual UPF in Design Vision to generate a UPF template for
# your design. To open the Visual UPF dialog box, choose Power > Visual UPF.
#
#set upf_create_implicit_supply_sets false

  #set_app_var enable_golden_upf false

