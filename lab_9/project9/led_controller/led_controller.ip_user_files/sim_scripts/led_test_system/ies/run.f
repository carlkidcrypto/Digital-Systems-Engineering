-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/led_test_system/ipshared/6964/hdl/led_controller_v1_0_S00_AXI.v" \
  "../../../bd/led_test_system/ipshared/6964/hdl/led_controller_v1_0.v" \
  "../../../bd/led_test_system/ip/led_test_system_led_controller_0_0/sim/led_test_system_led_controller_0_0.v" \
  "../../../bd/led_test_system/ip/led_test_system_processing_system7_0_0/led_test_system_processing_system7_0_0_sim_netlist.v" \
  "../../../bd/led_test_system/ip/led_test_system_rst_ps7_0_50M_0/led_test_system_rst_ps7_0_50M_0_sim_netlist.v" \
  "../../../bd/led_test_system/hdl/led_test_system.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../led_controller.srcs/sources_1/bd/led_test_system/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/led_test_system/ip/led_test_system_auto_pc_0/sim/led_test_system_auto_pc_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

