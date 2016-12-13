# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/project/zynq_base_trd_2014.4.cache/wt [current_project]
set_property parent.project_path /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/project/zynq_base_trd_2014.4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zc702:part0:1.0 [current_project]
set_property ip_repo_paths /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/srcs/ip [current_project]
add_files /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/project/zynq_base_trd_2014.4.srcs/sources_1/bd/system_top/system_top.bd
set_property used_in_implementation false [get_files -all /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/project/zynq_base_trd_2014.4.srcs/sources_1/bd/system_top/system_top_ooc.xdc]
set_property is_locked true [get_files /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/project/zynq_base_trd_2014.4.srcs/sources_1/bd/system_top/system_top.bd]

read_verilog -library xil_defaultlib /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/srcs/hdl/system_top_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/constrs/system_top.xdc
set_property used_in_implementation false [get_files /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/hardware/vivado/constrs/system_top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top system_top_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef system_top_wrapper.dcp

catch { report_utilization -file system_top_wrapper_utilization_synth.rpt -pb system_top_wrapper_utilization_synth.pb }
