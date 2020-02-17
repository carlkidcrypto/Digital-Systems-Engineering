//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Wed Feb 12 17:42:02 2020
//Host        : ece-bel215-15 running 64-bit major release  (build 9200)
//Command     : generate_target my_test_mem.bd
//Design      : my_test_mem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "my_test_mem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=my_test_mem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "my_test_mem.hwdef" *) 
module my_test_mem
   ();


  my_test_mem_dist_mem_gen_0_0 dist_mem_gen_0
       (.a({1'b0,1'b0,1'b0,1'b0}),
        .clk(1'b0),
        .d({1'b0,1'b0}),
        .we(1'b0));
endmodule
