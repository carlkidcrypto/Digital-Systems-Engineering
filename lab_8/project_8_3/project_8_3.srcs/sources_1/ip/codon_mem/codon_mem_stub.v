// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Mar 29 22:17:03 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/carlo/OneDrive - University of
//               Idaho/UofI_19-20/Spring_2020/ECE_440/lab_8/port3116-440-p8-attempt2/project_8_3/project_8_3.srcs/sources_1/ip/codon_mem/codon_mem_stub.v}
// Design      : codon_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.4" *)
module codon_mem(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[4:0],spo[3:0]" */;
  input [4:0]a;
  output [3:0]spo;
endmodule
