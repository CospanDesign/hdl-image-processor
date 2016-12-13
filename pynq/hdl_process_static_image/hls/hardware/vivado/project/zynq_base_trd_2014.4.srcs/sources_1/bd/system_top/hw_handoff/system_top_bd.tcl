
################################################################
# This is a generated script based on design: system_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART xilinx.com:zc702:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name system_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create port connections

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   Display-IntfAXI4Lite: "false",
   Display-PortTypeClock: "false",
   Display-PortTypeInterrupt: "false",
   Display-PortTypeOthers: "true",
   Display-PortTypeReset: "false",
   DisplayPinAutomationMissing: "1",
   DisplayTieOff: "1",
   HideNet: "/proc_sys_reset_1_interconnect_aresetn|/processing_system7_1_fclk_reset0_n|/proc_sys_reset_1_bus_struct_reset|",
   comment_0: "ZYNQ Base TRD 2014.4",
   commentid: "comment_0|",
   fillcolor_comment_0: "",
   font_comment_0: "54",
   guistr: "# # String gsaved with Nlview 6.4.10  2014-10-02 bk=1.3207 VDI=35 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port hdmio_int_b -pg 1 -y 520 -defaultsOSRD
preplace port hdmio -pg 1 -y 560 -defaultsOSRD
preplace port DDR -pg 1 -y 310 -defaultsOSRD
preplace port hdmio_clk -pg 1 -y 580 -defaultsOSRD
preplace port fmc_imageon_iic -pg 1 -y 350 -defaultsOSRD
preplace port fmc_imageon_hdmii_clk -pg 1 -y 500 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 330 -defaultsOSRD
preplace port si570_clk -pg 1 -y 540 -defaultsOSRD
preplace port fmc_imageon_hdmii -pg 1 -y 240 -defaultsOSRD
preplace portBus fmc_imageon_iic_rst_b -pg 1 -y 110 -defaultsOSRD
preplace inst processing_system7_1 -pg 1 -lvl 3 -y 320 -defaultsOSRD -resize 312 214
preplace inst axi_perf_mon_1 -pg 1 -lvl 3 -y 80 -defaultsOSRD
preplace inst emio_gpio -pg 1 -lvl 4 -y 120 -defaultsOSRD
preplace inst axi_interconnect_hp2 -pg 1 -lvl 2 -y 390 -defaultsOSRD
preplace inst hdmi_output -pg 1 -lvl 1 -y 560 -defaultsOSRD -resize 207 120
preplace inst processing -pg 1 -lvl 1 -y 390 -defaultsOSRD -resize 209 96
preplace inst axi_interconnect_gp0 -pg 1 -lvl 4 -y 440 -defaultsOSRD -resize 237 142
preplace inst xlconcat_1 -pg 1 -lvl 2 -y 500 -defaultsOSRD -resize 109 72
preplace inst proc_sys_reset_1 -pg 1 -lvl 2 -y 70 -defaultsOSRD -resize 230 96
preplace inst fmc_hdmi_input -pg 1 -lvl 1 -y 250 -defaultsOSRD -resize 211 107
preplace inst clk_wiz_1 -pg 1 -lvl 1 -y 90 -defaultsOSRD -resize 109 78
preplace inst axi_interconnect_hp0 -pg 1 -lvl 2 -y 250 -defaultsOSRD
preplace netloc processing_system7_1_ddr 1 3 2 N 310 NJ
preplace netloc fmc_hdmi_input_s2mm_fsync_out 1 0 2 220 320 480
preplace netloc axi_interconnect_3_m00_axi 1 2 1 810
preplace netloc processing_system7_1_fixed_io 1 3 2 N 330 NJ
preplace netloc xlconcat_3_dout 1 2 1 820
preplace netloc tpg_rst1_dout 1 4 1 N
preplace netloc processing_system7_1_GPIO_O 1 3 1 1210
preplace netloc s00_axi_1 1 3 1 1210
preplace netloc logicvc_1_pix_clk_o 1 1 4 N 580 NJ 580 NJ 580 NJ
preplace netloc processing_system7_1_iic_1 1 3 2 N 350 NJ
preplace netloc clk_wiz_1_locked 1 1 1 N
preplace netloc S00_AXI_2 1 1 1 N
preplace netloc axi_interconnect_1_m00_axi 1 2 1 820
preplace netloc S01_AXI1_1 1 1 1 N
preplace netloc emio_gpio_video_sel 1 0 5 220 180 NJ 180 NJ 180 NJ 180 1550
preplace netloc hdmi_output_vid_io 1 1 4 N 560 NJ 560 NJ 560 NJ
preplace netloc IO_HDMII_1 1 0 1 N
preplace netloc s01_axi_1 1 1 1 490
preplace netloc S00_AXI1_1 1 1 1 N
preplace cgraphic comment_0 place abs 498 -96 textcolor 4 linecolor 3 linewidth 0
levelinfo -pg 1 200 350 672 1032 1402 1570
",
   linecolor_comment_0: "",
   textcolor_comment_0: "",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


