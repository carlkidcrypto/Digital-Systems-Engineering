vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_1_3
vlib riviera/axi_data_fifo_v2_1_10
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_11
vlib riviera/axi_protocol_converter_v2_1_11

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_3 riviera/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 riviera/axi_data_fifo_v2_1_10
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 riviera/axi_register_slice_v2_1_11
vmap axi_protocol_converter_v2_1_11 riviera/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../bd/led_test_system/ipshared/6964/hdl/led_controller_v1_0_S00_AXI.v" \
"../../../bd/led_test_system/ipshared/6964/hdl/led_controller_v1_0.v" \
"../../../bd/led_test_system/ip/led_test_system_led_controller_0_0/sim/led_test_system_led_controller_0_0.v" \
"../../../bd/led_test_system/ip/led_test_system_processing_system7_0_0/led_test_system_processing_system7_0_0_sim_netlist.v" \
"../../../bd/led_test_system/ip/led_test_system_rst_ps7_0_50M_0/led_test_system_rst_ps7_0_50M_0_sim_netlist.v" \
"../../../bd/led_test_system/hdl/led_test_system.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl" "+incdir+../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7dd0/hdl" \
"../../../bd/led_test_system/ip/led_test_system_auto_pc_0/sim/led_test_system_auto_pc_0.v" \

vlog -work xil_defaultlib "glbl.v"

