create_clock -name ap_clk -period 6.667 -waveform {0.000 3.333} [get_ports ap_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports ap_clk]

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]

set_false_path -from [get_cells image_filter_CONTROL_BUS_s_axi_U/int_rows_reg[*]]
set_false_path -from [get_cells image_filter_CONTROL_BUS_s_axi_U/int_cols_reg[*]]

