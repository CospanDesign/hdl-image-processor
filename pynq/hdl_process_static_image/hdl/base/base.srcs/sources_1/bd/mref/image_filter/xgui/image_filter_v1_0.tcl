# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_BUS_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_BUS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_CONTROL_BUS_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_WSTRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_int64_8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv16_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv2_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_B" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_BUS_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_BUS_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_BUS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_BUS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_BUS_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_BUS_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to update C_S_AXI_WSTRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_WSTRB_WIDTH { PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to validate C_S_AXI_WSTRB_WIDTH
	return true
}

proc update_PARAM_VALUE.ap_const_int64_8 { PARAM_VALUE.ap_const_int64_8 } {
	# Procedure called to update ap_const_int64_8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_int64_8 { PARAM_VALUE.ap_const_int64_8 } {
	# Procedure called to validate ap_const_int64_8
	return true
}

proc update_PARAM_VALUE.ap_const_lv16_0 { PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to update ap_const_lv16_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv16_0 { PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to validate ap_const_lv16_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv2_0 { PARAM_VALUE.ap_const_lv2_0 } {
	# Procedure called to update ap_const_lv2_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv2_0 { PARAM_VALUE.ap_const_lv2_0 } {
	# Procedure called to validate ap_const_lv2_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_0 { PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to update ap_const_lv32_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_0 { PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to validate ap_const_lv32_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_B { PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to update ap_const_lv32_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_B { PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to validate ap_const_lv32_B
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ap_const_int64_8 { MODELPARAM_VALUE.ap_const_int64_8 PARAM_VALUE.ap_const_int64_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_int64_8}] ${MODELPARAM_VALUE.ap_const_int64_8}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.ap_const_lv16_0 { MODELPARAM_VALUE.ap_const_lv16_0 PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv16_0}] ${MODELPARAM_VALUE.ap_const_lv16_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv2_0 { MODELPARAM_VALUE.ap_const_lv2_0 PARAM_VALUE.ap_const_lv2_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv2_0}] ${MODELPARAM_VALUE.ap_const_lv2_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_0 { MODELPARAM_VALUE.ap_const_lv32_0 PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_0}] ${MODELPARAM_VALUE.ap_const_lv32_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_B { MODELPARAM_VALUE.ap_const_lv32_B PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_B}] ${MODELPARAM_VALUE.ap_const_lv32_B}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_BUS_WSTRB_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH { MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH PARAM_VALUE.C_S_AXI_WSTRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_WSTRB_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_WSTRB_WIDTH}
}

