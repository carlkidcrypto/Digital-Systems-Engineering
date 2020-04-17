// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Apr 16 20:05:19 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/carlo/Downloads/project_10_3/project_10_3.sim/sim_1/synth/timing/fact_co_processor_wrapper_tb_time_synth.v
// Design      : fact_co_processor_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module fact_co_processor_wrapper
   (n,
    rst,
    go,
    src_clk,
    des_clk,
    done,
    result);
  input [31:0]n;
  input rst;
  input go;
  input src_clk;
  input des_clk;
  output done;
  output [31:0]result;

  wire des_clk;
  wire des_clk_IBUF;
  wire des_clk_IBUF_BUFG;
  wire done;
  wire done_OBUF;
  wire fact_machine_wrapper_1_n_0;
  wire go;
  wire go_IBUF;
  wire [31:0]n;
  wire [31:0]n_IBUF;
  wire ps_out_1;
  wire ps_out_2;
  wire [31:0]result;
  wire [31:0]result_OBUF;
  wire rst;
  wire rst_IBUF;
  wire src_clk;
  wire src_clk_IBUF;
  wire src_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("fact_co_processor_wrapper_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG des_clk_IBUF_BUFG_inst
       (.I(des_clk_IBUF),
        .O(des_clk_IBUF_BUFG));
  IBUF des_clk_IBUF_inst
       (.I(des_clk),
        .O(des_clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  fact_machine_wrapper fact_machine_wrapper_1
       (.CLK(src_clk_IBUF_BUFG),
        .D(fact_machine_wrapper_1_n_0),
        .Q(result_OBUF),
        .SR(ps_out_1),
        .n_IBUF(n_IBUF),
        .ps_out_2(ps_out_2));
  IBUF go_IBUF_inst
       (.I(go),
        .O(go_IBUF));
  IBUF \n_IBUF[0]_inst 
       (.I(n[0]),
        .O(n_IBUF[0]));
  IBUF \n_IBUF[10]_inst 
       (.I(n[10]),
        .O(n_IBUF[10]));
  IBUF \n_IBUF[11]_inst 
       (.I(n[11]),
        .O(n_IBUF[11]));
  IBUF \n_IBUF[12]_inst 
       (.I(n[12]),
        .O(n_IBUF[12]));
  IBUF \n_IBUF[13]_inst 
       (.I(n[13]),
        .O(n_IBUF[13]));
  IBUF \n_IBUF[14]_inst 
       (.I(n[14]),
        .O(n_IBUF[14]));
  IBUF \n_IBUF[15]_inst 
       (.I(n[15]),
        .O(n_IBUF[15]));
  IBUF \n_IBUF[16]_inst 
       (.I(n[16]),
        .O(n_IBUF[16]));
  IBUF \n_IBUF[17]_inst 
       (.I(n[17]),
        .O(n_IBUF[17]));
  IBUF \n_IBUF[18]_inst 
       (.I(n[18]),
        .O(n_IBUF[18]));
  IBUF \n_IBUF[19]_inst 
       (.I(n[19]),
        .O(n_IBUF[19]));
  IBUF \n_IBUF[1]_inst 
       (.I(n[1]),
        .O(n_IBUF[1]));
  IBUF \n_IBUF[20]_inst 
       (.I(n[20]),
        .O(n_IBUF[20]));
  IBUF \n_IBUF[21]_inst 
       (.I(n[21]),
        .O(n_IBUF[21]));
  IBUF \n_IBUF[22]_inst 
       (.I(n[22]),
        .O(n_IBUF[22]));
  IBUF \n_IBUF[23]_inst 
       (.I(n[23]),
        .O(n_IBUF[23]));
  IBUF \n_IBUF[24]_inst 
       (.I(n[24]),
        .O(n_IBUF[24]));
  IBUF \n_IBUF[25]_inst 
       (.I(n[25]),
        .O(n_IBUF[25]));
  IBUF \n_IBUF[26]_inst 
       (.I(n[26]),
        .O(n_IBUF[26]));
  IBUF \n_IBUF[27]_inst 
       (.I(n[27]),
        .O(n_IBUF[27]));
  IBUF \n_IBUF[28]_inst 
       (.I(n[28]),
        .O(n_IBUF[28]));
  IBUF \n_IBUF[29]_inst 
       (.I(n[29]),
        .O(n_IBUF[29]));
  IBUF \n_IBUF[2]_inst 
       (.I(n[2]),
        .O(n_IBUF[2]));
  IBUF \n_IBUF[30]_inst 
       (.I(n[30]),
        .O(n_IBUF[30]));
  IBUF \n_IBUF[31]_inst 
       (.I(n[31]),
        .O(n_IBUF[31]));
  IBUF \n_IBUF[3]_inst 
       (.I(n[3]),
        .O(n_IBUF[3]));
  IBUF \n_IBUF[4]_inst 
       (.I(n[4]),
        .O(n_IBUF[4]));
  IBUF \n_IBUF[5]_inst 
       (.I(n[5]),
        .O(n_IBUF[5]));
  IBUF \n_IBUF[6]_inst 
       (.I(n[6]),
        .O(n_IBUF[6]));
  IBUF \n_IBUF[7]_inst 
       (.I(n[7]),
        .O(n_IBUF[7]));
  IBUF \n_IBUF[8]_inst 
       (.I(n[8]),
        .O(n_IBUF[8]));
  IBUF \n_IBUF[9]_inst 
       (.I(n[9]),
        .O(n_IBUF[9]));
  pulse_sync pulse_sync_1
       (.CLK(src_clk_IBUF_BUFG),
        .D(rst_IBUF),
        .SR(ps_out_1));
  pulse_sync_0 pulse_sync_2
       (.CLK(src_clk_IBUF_BUFG),
        .D(go_IBUF),
        .ps_out_2(ps_out_2));
  pulse_sync_1 pulse_sync_3
       (.CLK(des_clk_IBUF_BUFG),
        .D(fact_machine_wrapper_1_n_0),
        .done_OBUF(done_OBUF));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  OBUF \result_OBUF[31]_inst 
       (.I(result_OBUF[31]),
        .O(result[31]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  BUFG src_clk_IBUF_BUFG_inst
       (.I(src_clk_IBUF),
        .O(src_clk_IBUF_BUFG));
  IBUF src_clk_IBUF_inst
       (.I(src_clk),
        .O(src_clk_IBUF));
endmodule

module fact_machine_wrapper
   (D,
    Q,
    CLK,
    ps_out_2,
    SR,
    n_IBUF);
  output [0:0]D;
  output [31:0]Q;
  input CLK;
  input ps_out_2;
  input [0:0]SR;
  input [31:0]n_IBUF;

  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[11]_i_4_n_0 ;
  wire \FSM_onehot_state[11]_i_5_n_0 ;
  wire \FSM_onehot_state[11]_i_6_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_10_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state[6]_i_8_n_0 ;
  wire \FSM_onehot_state[6]_i_9_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_4_n_0 ;
  wire \FSM_onehot_state[8]_i_5_n_0 ;
  wire \FSM_onehot_state[8]_i_6_n_0 ;
  wire \FSM_onehot_state[8]_i_7_n_0 ;
  wire \FSM_onehot_state[8]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [31:0]add_res_reg;
  wire \add_res_reg[11]_i_3_n_0 ;
  wire \add_res_reg[11]_i_4_n_0 ;
  wire \add_res_reg[11]_i_5_n_0 ;
  wire \add_res_reg[11]_i_6_n_0 ;
  wire \add_res_reg[15]_i_3_n_0 ;
  wire \add_res_reg[15]_i_4_n_0 ;
  wire \add_res_reg[15]_i_5_n_0 ;
  wire \add_res_reg[15]_i_6_n_0 ;
  wire \add_res_reg[19]_i_3_n_0 ;
  wire \add_res_reg[19]_i_4_n_0 ;
  wire \add_res_reg[19]_i_5_n_0 ;
  wire \add_res_reg[19]_i_6_n_0 ;
  wire \add_res_reg[23]_i_3_n_0 ;
  wire \add_res_reg[23]_i_4_n_0 ;
  wire \add_res_reg[23]_i_5_n_0 ;
  wire \add_res_reg[23]_i_6_n_0 ;
  wire \add_res_reg[27]_i_3_n_0 ;
  wire \add_res_reg[27]_i_4_n_0 ;
  wire \add_res_reg[27]_i_5_n_0 ;
  wire \add_res_reg[27]_i_6_n_0 ;
  wire \add_res_reg[31]_i_3_n_0 ;
  wire \add_res_reg[31]_i_4_n_0 ;
  wire \add_res_reg[31]_i_5_n_0 ;
  wire \add_res_reg[31]_i_6_n_0 ;
  wire \add_res_reg[3]_i_3_n_0 ;
  wire \add_res_reg[3]_i_4_n_0 ;
  wire \add_res_reg[3]_i_5_n_0 ;
  wire \add_res_reg[3]_i_6_n_0 ;
  wire \add_res_reg[7]_i_3_n_0 ;
  wire \add_res_reg[7]_i_4_n_0 ;
  wire \add_res_reg[7]_i_5_n_0 ;
  wire \add_res_reg[7]_i_6_n_0 ;
  wire \add_res_reg_reg[11]_i_2_n_0 ;
  wire \add_res_reg_reg[11]_i_2_n_1 ;
  wire \add_res_reg_reg[11]_i_2_n_2 ;
  wire \add_res_reg_reg[11]_i_2_n_3 ;
  wire \add_res_reg_reg[11]_i_2_n_4 ;
  wire \add_res_reg_reg[11]_i_2_n_5 ;
  wire \add_res_reg_reg[11]_i_2_n_6 ;
  wire \add_res_reg_reg[11]_i_2_n_7 ;
  wire \add_res_reg_reg[15]_i_2_n_0 ;
  wire \add_res_reg_reg[15]_i_2_n_1 ;
  wire \add_res_reg_reg[15]_i_2_n_2 ;
  wire \add_res_reg_reg[15]_i_2_n_3 ;
  wire \add_res_reg_reg[15]_i_2_n_4 ;
  wire \add_res_reg_reg[15]_i_2_n_5 ;
  wire \add_res_reg_reg[15]_i_2_n_6 ;
  wire \add_res_reg_reg[15]_i_2_n_7 ;
  wire \add_res_reg_reg[19]_i_2_n_0 ;
  wire \add_res_reg_reg[19]_i_2_n_1 ;
  wire \add_res_reg_reg[19]_i_2_n_2 ;
  wire \add_res_reg_reg[19]_i_2_n_3 ;
  wire \add_res_reg_reg[19]_i_2_n_4 ;
  wire \add_res_reg_reg[19]_i_2_n_5 ;
  wire \add_res_reg_reg[19]_i_2_n_6 ;
  wire \add_res_reg_reg[19]_i_2_n_7 ;
  wire \add_res_reg_reg[23]_i_2_n_0 ;
  wire \add_res_reg_reg[23]_i_2_n_1 ;
  wire \add_res_reg_reg[23]_i_2_n_2 ;
  wire \add_res_reg_reg[23]_i_2_n_3 ;
  wire \add_res_reg_reg[23]_i_2_n_4 ;
  wire \add_res_reg_reg[23]_i_2_n_5 ;
  wire \add_res_reg_reg[23]_i_2_n_6 ;
  wire \add_res_reg_reg[23]_i_2_n_7 ;
  wire \add_res_reg_reg[27]_i_2_n_0 ;
  wire \add_res_reg_reg[27]_i_2_n_1 ;
  wire \add_res_reg_reg[27]_i_2_n_2 ;
  wire \add_res_reg_reg[27]_i_2_n_3 ;
  wire \add_res_reg_reg[27]_i_2_n_4 ;
  wire \add_res_reg_reg[27]_i_2_n_5 ;
  wire \add_res_reg_reg[27]_i_2_n_6 ;
  wire \add_res_reg_reg[27]_i_2_n_7 ;
  wire \add_res_reg_reg[31]_i_2_n_1 ;
  wire \add_res_reg_reg[31]_i_2_n_2 ;
  wire \add_res_reg_reg[31]_i_2_n_3 ;
  wire \add_res_reg_reg[31]_i_2_n_4 ;
  wire \add_res_reg_reg[31]_i_2_n_5 ;
  wire \add_res_reg_reg[31]_i_2_n_6 ;
  wire \add_res_reg_reg[31]_i_2_n_7 ;
  wire \add_res_reg_reg[3]_i_2_n_0 ;
  wire \add_res_reg_reg[3]_i_2_n_1 ;
  wire \add_res_reg_reg[3]_i_2_n_2 ;
  wire \add_res_reg_reg[3]_i_2_n_3 ;
  wire \add_res_reg_reg[3]_i_2_n_4 ;
  wire \add_res_reg_reg[3]_i_2_n_5 ;
  wire \add_res_reg_reg[3]_i_2_n_6 ;
  wire \add_res_reg_reg[3]_i_2_n_7 ;
  wire \add_res_reg_reg[7]_i_2_n_0 ;
  wire \add_res_reg_reg[7]_i_2_n_1 ;
  wire \add_res_reg_reg[7]_i_2_n_2 ;
  wire \add_res_reg_reg[7]_i_2_n_3 ;
  wire \add_res_reg_reg[7]_i_2_n_4 ;
  wire \add_res_reg_reg[7]_i_2_n_5 ;
  wire \add_res_reg_reg[7]_i_2_n_6 ;
  wire \add_res_reg_reg[7]_i_2_n_7 ;
  wire \add_res_reg_reg_n_0_[0] ;
  wire \add_res_reg_reg_n_0_[10] ;
  wire \add_res_reg_reg_n_0_[11] ;
  wire \add_res_reg_reg_n_0_[12] ;
  wire \add_res_reg_reg_n_0_[13] ;
  wire \add_res_reg_reg_n_0_[14] ;
  wire \add_res_reg_reg_n_0_[15] ;
  wire \add_res_reg_reg_n_0_[16] ;
  wire \add_res_reg_reg_n_0_[17] ;
  wire \add_res_reg_reg_n_0_[18] ;
  wire \add_res_reg_reg_n_0_[19] ;
  wire \add_res_reg_reg_n_0_[1] ;
  wire \add_res_reg_reg_n_0_[20] ;
  wire \add_res_reg_reg_n_0_[21] ;
  wire \add_res_reg_reg_n_0_[22] ;
  wire \add_res_reg_reg_n_0_[23] ;
  wire \add_res_reg_reg_n_0_[24] ;
  wire \add_res_reg_reg_n_0_[25] ;
  wire \add_res_reg_reg_n_0_[26] ;
  wire \add_res_reg_reg_n_0_[27] ;
  wire \add_res_reg_reg_n_0_[28] ;
  wire \add_res_reg_reg_n_0_[29] ;
  wire \add_res_reg_reg_n_0_[2] ;
  wire \add_res_reg_reg_n_0_[30] ;
  wire \add_res_reg_reg_n_0_[31] ;
  wire \add_res_reg_reg_n_0_[3] ;
  wire \add_res_reg_reg_n_0_[4] ;
  wire \add_res_reg_reg_n_0_[5] ;
  wire \add_res_reg_reg_n_0_[6] ;
  wire \add_res_reg_reg_n_0_[7] ;
  wire \add_res_reg_reg_n_0_[8] ;
  wire \add_res_reg_reg_n_0_[9] ;
  wire [31:0]cnt_1;
  wire \cnt_1[12]_i_3_n_0 ;
  wire \cnt_1[12]_i_4_n_0 ;
  wire \cnt_1[12]_i_5_n_0 ;
  wire \cnt_1[12]_i_6_n_0 ;
  wire \cnt_1[16]_i_3_n_0 ;
  wire \cnt_1[16]_i_4_n_0 ;
  wire \cnt_1[16]_i_5_n_0 ;
  wire \cnt_1[16]_i_6_n_0 ;
  wire \cnt_1[20]_i_3_n_0 ;
  wire \cnt_1[20]_i_4_n_0 ;
  wire \cnt_1[20]_i_5_n_0 ;
  wire \cnt_1[20]_i_6_n_0 ;
  wire \cnt_1[24]_i_3_n_0 ;
  wire \cnt_1[24]_i_4_n_0 ;
  wire \cnt_1[24]_i_5_n_0 ;
  wire \cnt_1[24]_i_6_n_0 ;
  wire \cnt_1[28]_i_3_n_0 ;
  wire \cnt_1[28]_i_4_n_0 ;
  wire \cnt_1[28]_i_5_n_0 ;
  wire \cnt_1[28]_i_6_n_0 ;
  wire \cnt_1[31]_i_1_n_0 ;
  wire \cnt_1[31]_i_3_n_0 ;
  wire \cnt_1[31]_i_5_n_0 ;
  wire \cnt_1[31]_i_6_n_0 ;
  wire \cnt_1[31]_i_7_n_0 ;
  wire \cnt_1[4]_i_3_n_0 ;
  wire \cnt_1[4]_i_4_n_0 ;
  wire \cnt_1[4]_i_5_n_0 ;
  wire \cnt_1[4]_i_6_n_0 ;
  wire \cnt_1[8]_i_3_n_0 ;
  wire \cnt_1[8]_i_4_n_0 ;
  wire \cnt_1[8]_i_5_n_0 ;
  wire \cnt_1[8]_i_6_n_0 ;
  wire \cnt_1_reg[12]_i_2_n_0 ;
  wire \cnt_1_reg[12]_i_2_n_1 ;
  wire \cnt_1_reg[12]_i_2_n_2 ;
  wire \cnt_1_reg[12]_i_2_n_3 ;
  wire \cnt_1_reg[12]_i_2_n_4 ;
  wire \cnt_1_reg[12]_i_2_n_5 ;
  wire \cnt_1_reg[12]_i_2_n_6 ;
  wire \cnt_1_reg[12]_i_2_n_7 ;
  wire \cnt_1_reg[16]_i_2_n_0 ;
  wire \cnt_1_reg[16]_i_2_n_1 ;
  wire \cnt_1_reg[16]_i_2_n_2 ;
  wire \cnt_1_reg[16]_i_2_n_3 ;
  wire \cnt_1_reg[16]_i_2_n_4 ;
  wire \cnt_1_reg[16]_i_2_n_5 ;
  wire \cnt_1_reg[16]_i_2_n_6 ;
  wire \cnt_1_reg[16]_i_2_n_7 ;
  wire \cnt_1_reg[20]_i_2_n_0 ;
  wire \cnt_1_reg[20]_i_2_n_1 ;
  wire \cnt_1_reg[20]_i_2_n_2 ;
  wire \cnt_1_reg[20]_i_2_n_3 ;
  wire \cnt_1_reg[20]_i_2_n_4 ;
  wire \cnt_1_reg[20]_i_2_n_5 ;
  wire \cnt_1_reg[20]_i_2_n_6 ;
  wire \cnt_1_reg[20]_i_2_n_7 ;
  wire \cnt_1_reg[24]_i_2_n_0 ;
  wire \cnt_1_reg[24]_i_2_n_1 ;
  wire \cnt_1_reg[24]_i_2_n_2 ;
  wire \cnt_1_reg[24]_i_2_n_3 ;
  wire \cnt_1_reg[24]_i_2_n_4 ;
  wire \cnt_1_reg[24]_i_2_n_5 ;
  wire \cnt_1_reg[24]_i_2_n_6 ;
  wire \cnt_1_reg[24]_i_2_n_7 ;
  wire \cnt_1_reg[28]_i_2_n_0 ;
  wire \cnt_1_reg[28]_i_2_n_1 ;
  wire \cnt_1_reg[28]_i_2_n_2 ;
  wire \cnt_1_reg[28]_i_2_n_3 ;
  wire \cnt_1_reg[28]_i_2_n_4 ;
  wire \cnt_1_reg[28]_i_2_n_5 ;
  wire \cnt_1_reg[28]_i_2_n_6 ;
  wire \cnt_1_reg[28]_i_2_n_7 ;
  wire \cnt_1_reg[31]_i_4_n_2 ;
  wire \cnt_1_reg[31]_i_4_n_3 ;
  wire \cnt_1_reg[31]_i_4_n_5 ;
  wire \cnt_1_reg[31]_i_4_n_6 ;
  wire \cnt_1_reg[31]_i_4_n_7 ;
  wire \cnt_1_reg[4]_i_2_n_0 ;
  wire \cnt_1_reg[4]_i_2_n_1 ;
  wire \cnt_1_reg[4]_i_2_n_2 ;
  wire \cnt_1_reg[4]_i_2_n_3 ;
  wire \cnt_1_reg[4]_i_2_n_4 ;
  wire \cnt_1_reg[4]_i_2_n_5 ;
  wire \cnt_1_reg[4]_i_2_n_6 ;
  wire \cnt_1_reg[4]_i_2_n_7 ;
  wire \cnt_1_reg[8]_i_2_n_0 ;
  wire \cnt_1_reg[8]_i_2_n_1 ;
  wire \cnt_1_reg[8]_i_2_n_2 ;
  wire \cnt_1_reg[8]_i_2_n_3 ;
  wire \cnt_1_reg[8]_i_2_n_4 ;
  wire \cnt_1_reg[8]_i_2_n_5 ;
  wire \cnt_1_reg[8]_i_2_n_6 ;
  wire \cnt_1_reg[8]_i_2_n_7 ;
  wire \cnt_1_reg_n_0_[0] ;
  wire \cnt_1_reg_n_0_[10] ;
  wire \cnt_1_reg_n_0_[11] ;
  wire \cnt_1_reg_n_0_[12] ;
  wire \cnt_1_reg_n_0_[13] ;
  wire \cnt_1_reg_n_0_[14] ;
  wire \cnt_1_reg_n_0_[15] ;
  wire \cnt_1_reg_n_0_[16] ;
  wire \cnt_1_reg_n_0_[17] ;
  wire \cnt_1_reg_n_0_[18] ;
  wire \cnt_1_reg_n_0_[19] ;
  wire \cnt_1_reg_n_0_[1] ;
  wire \cnt_1_reg_n_0_[20] ;
  wire \cnt_1_reg_n_0_[21] ;
  wire \cnt_1_reg_n_0_[22] ;
  wire \cnt_1_reg_n_0_[23] ;
  wire \cnt_1_reg_n_0_[24] ;
  wire \cnt_1_reg_n_0_[25] ;
  wire \cnt_1_reg_n_0_[26] ;
  wire \cnt_1_reg_n_0_[27] ;
  wire \cnt_1_reg_n_0_[28] ;
  wire \cnt_1_reg_n_0_[29] ;
  wire \cnt_1_reg_n_0_[2] ;
  wire \cnt_1_reg_n_0_[30] ;
  wire \cnt_1_reg_n_0_[31] ;
  wire \cnt_1_reg_n_0_[3] ;
  wire \cnt_1_reg_n_0_[4] ;
  wire \cnt_1_reg_n_0_[5] ;
  wire \cnt_1_reg_n_0_[6] ;
  wire \cnt_1_reg_n_0_[7] ;
  wire \cnt_1_reg_n_0_[8] ;
  wire \cnt_1_reg_n_0_[9] ;
  wire [31:0]cnt_2;
  wire cnt_20_carry__0_i_1_n_0;
  wire cnt_20_carry__0_i_2_n_0;
  wire cnt_20_carry__0_i_3_n_0;
  wire cnt_20_carry__0_i_4_n_0;
  wire cnt_20_carry__0_n_0;
  wire cnt_20_carry__0_n_1;
  wire cnt_20_carry__0_n_2;
  wire cnt_20_carry__0_n_3;
  wire cnt_20_carry__0_n_4;
  wire cnt_20_carry__0_n_5;
  wire cnt_20_carry__0_n_6;
  wire cnt_20_carry__0_n_7;
  wire cnt_20_carry__1_i_1_n_0;
  wire cnt_20_carry__1_i_2_n_0;
  wire cnt_20_carry__1_i_3_n_0;
  wire cnt_20_carry__1_i_4_n_0;
  wire cnt_20_carry__1_n_0;
  wire cnt_20_carry__1_n_1;
  wire cnt_20_carry__1_n_2;
  wire cnt_20_carry__1_n_3;
  wire cnt_20_carry__1_n_4;
  wire cnt_20_carry__1_n_5;
  wire cnt_20_carry__1_n_6;
  wire cnt_20_carry__1_n_7;
  wire cnt_20_carry__2_i_1_n_0;
  wire cnt_20_carry__2_i_2_n_0;
  wire cnt_20_carry__2_i_3_n_0;
  wire cnt_20_carry__2_i_4_n_0;
  wire cnt_20_carry__2_n_0;
  wire cnt_20_carry__2_n_1;
  wire cnt_20_carry__2_n_2;
  wire cnt_20_carry__2_n_3;
  wire cnt_20_carry__2_n_4;
  wire cnt_20_carry__2_n_5;
  wire cnt_20_carry__2_n_6;
  wire cnt_20_carry__2_n_7;
  wire cnt_20_carry__3_i_1_n_0;
  wire cnt_20_carry__3_i_2_n_0;
  wire cnt_20_carry__3_i_3_n_0;
  wire cnt_20_carry__3_i_4_n_0;
  wire cnt_20_carry__3_n_0;
  wire cnt_20_carry__3_n_1;
  wire cnt_20_carry__3_n_2;
  wire cnt_20_carry__3_n_3;
  wire cnt_20_carry__3_n_4;
  wire cnt_20_carry__3_n_5;
  wire cnt_20_carry__3_n_6;
  wire cnt_20_carry__3_n_7;
  wire cnt_20_carry__4_i_1_n_0;
  wire cnt_20_carry__4_i_2_n_0;
  wire cnt_20_carry__4_i_3_n_0;
  wire cnt_20_carry__4_i_4_n_0;
  wire cnt_20_carry__4_n_0;
  wire cnt_20_carry__4_n_1;
  wire cnt_20_carry__4_n_2;
  wire cnt_20_carry__4_n_3;
  wire cnt_20_carry__4_n_4;
  wire cnt_20_carry__4_n_5;
  wire cnt_20_carry__4_n_6;
  wire cnt_20_carry__4_n_7;
  wire cnt_20_carry__5_i_1_n_0;
  wire cnt_20_carry__5_i_2_n_0;
  wire cnt_20_carry__5_i_3_n_0;
  wire cnt_20_carry__5_i_4_n_0;
  wire cnt_20_carry__5_n_0;
  wire cnt_20_carry__5_n_1;
  wire cnt_20_carry__5_n_2;
  wire cnt_20_carry__5_n_3;
  wire cnt_20_carry__5_n_4;
  wire cnt_20_carry__5_n_5;
  wire cnt_20_carry__5_n_6;
  wire cnt_20_carry__5_n_7;
  wire cnt_20_carry__6_i_1_n_0;
  wire cnt_20_carry__6_i_2_n_0;
  wire cnt_20_carry__6_i_3_n_0;
  wire cnt_20_carry__6_n_2;
  wire cnt_20_carry__6_n_3;
  wire cnt_20_carry__6_n_5;
  wire cnt_20_carry__6_n_6;
  wire cnt_20_carry__6_n_7;
  wire cnt_20_carry_i_1_n_0;
  wire cnt_20_carry_i_2_n_0;
  wire cnt_20_carry_i_3_n_0;
  wire cnt_20_carry_i_4_n_0;
  wire cnt_20_carry_n_0;
  wire cnt_20_carry_n_1;
  wire cnt_20_carry_n_2;
  wire cnt_20_carry_n_3;
  wire cnt_20_carry_n_4;
  wire cnt_20_carry_n_5;
  wire cnt_20_carry_n_6;
  wire cnt_20_carry_n_7;
  wire cnt_21_carry__0_i_1_n_0;
  wire cnt_21_carry__0_i_2_n_0;
  wire cnt_21_carry__0_i_3_n_0;
  wire cnt_21_carry__0_i_4_n_0;
  wire cnt_21_carry__0_i_5_n_0;
  wire cnt_21_carry__0_i_6_n_0;
  wire cnt_21_carry__0_i_7_n_0;
  wire cnt_21_carry__0_i_8_n_0;
  wire cnt_21_carry__0_n_0;
  wire cnt_21_carry__0_n_1;
  wire cnt_21_carry__0_n_2;
  wire cnt_21_carry__0_n_3;
  wire cnt_21_carry__1_i_1_n_0;
  wire cnt_21_carry__1_i_2_n_0;
  wire cnt_21_carry__1_i_3_n_0;
  wire cnt_21_carry__1_i_4_n_0;
  wire cnt_21_carry__1_i_5_n_0;
  wire cnt_21_carry__1_i_6_n_0;
  wire cnt_21_carry__1_i_7_n_0;
  wire cnt_21_carry__1_i_8_n_0;
  wire cnt_21_carry__1_n_0;
  wire cnt_21_carry__1_n_1;
  wire cnt_21_carry__1_n_2;
  wire cnt_21_carry__1_n_3;
  wire cnt_21_carry__2_i_1_n_0;
  wire cnt_21_carry__2_i_2_n_0;
  wire cnt_21_carry__2_i_3_n_0;
  wire cnt_21_carry__2_i_4_n_0;
  wire cnt_21_carry__2_i_5_n_0;
  wire cnt_21_carry__2_i_6_n_0;
  wire cnt_21_carry__2_i_7_n_0;
  wire cnt_21_carry__2_i_8_n_0;
  wire cnt_21_carry__2_n_0;
  wire cnt_21_carry__2_n_1;
  wire cnt_21_carry__2_n_2;
  wire cnt_21_carry__2_n_3;
  wire cnt_21_carry__3_n_7;
  wire cnt_21_carry_i_1_n_0;
  wire cnt_21_carry_i_2_n_0;
  wire cnt_21_carry_i_3_n_0;
  wire cnt_21_carry_i_4_n_0;
  wire cnt_21_carry_i_5_n_0;
  wire cnt_21_carry_i_6_n_0;
  wire cnt_21_carry_i_7_n_0;
  wire cnt_21_carry_i_8_n_0;
  wire cnt_21_carry_n_0;
  wire cnt_21_carry_n_1;
  wire cnt_21_carry_n_2;
  wire cnt_21_carry_n_3;
  wire [31:1]cnt_22;
  wire cnt_22_carry__0_i_1_n_0;
  wire cnt_22_carry__0_i_2_n_0;
  wire cnt_22_carry__0_i_3_n_0;
  wire cnt_22_carry__0_i_4_n_0;
  wire cnt_22_carry__0_n_0;
  wire cnt_22_carry__0_n_1;
  wire cnt_22_carry__0_n_2;
  wire cnt_22_carry__0_n_3;
  wire cnt_22_carry__1_i_1_n_0;
  wire cnt_22_carry__1_i_2_n_0;
  wire cnt_22_carry__1_i_3_n_0;
  wire cnt_22_carry__1_i_4_n_0;
  wire cnt_22_carry__1_n_0;
  wire cnt_22_carry__1_n_1;
  wire cnt_22_carry__1_n_2;
  wire cnt_22_carry__1_n_3;
  wire cnt_22_carry__2_i_1_n_0;
  wire cnt_22_carry__2_i_2_n_0;
  wire cnt_22_carry__2_i_3_n_0;
  wire cnt_22_carry__2_i_4_n_0;
  wire cnt_22_carry__2_n_0;
  wire cnt_22_carry__2_n_1;
  wire cnt_22_carry__2_n_2;
  wire cnt_22_carry__2_n_3;
  wire cnt_22_carry__3_i_1_n_0;
  wire cnt_22_carry__3_i_2_n_0;
  wire cnt_22_carry__3_i_3_n_0;
  wire cnt_22_carry__3_i_4_n_0;
  wire cnt_22_carry__3_n_0;
  wire cnt_22_carry__3_n_1;
  wire cnt_22_carry__3_n_2;
  wire cnt_22_carry__3_n_3;
  wire cnt_22_carry__4_i_1_n_0;
  wire cnt_22_carry__4_i_2_n_0;
  wire cnt_22_carry__4_i_3_n_0;
  wire cnt_22_carry__4_i_4_n_0;
  wire cnt_22_carry__4_n_0;
  wire cnt_22_carry__4_n_1;
  wire cnt_22_carry__4_n_2;
  wire cnt_22_carry__4_n_3;
  wire cnt_22_carry__5_i_1_n_0;
  wire cnt_22_carry__5_i_2_n_0;
  wire cnt_22_carry__5_i_3_n_0;
  wire cnt_22_carry__5_i_4_n_0;
  wire cnt_22_carry__5_n_0;
  wire cnt_22_carry__5_n_1;
  wire cnt_22_carry__5_n_2;
  wire cnt_22_carry__5_n_3;
  wire cnt_22_carry__6_i_1_n_0;
  wire cnt_22_carry__6_i_2_n_0;
  wire cnt_22_carry__6_i_3_n_0;
  wire cnt_22_carry__6_n_2;
  wire cnt_22_carry__6_n_3;
  wire cnt_22_carry_i_1_n_0;
  wire cnt_22_carry_i_2_n_0;
  wire cnt_22_carry_i_3_n_0;
  wire cnt_22_carry_i_4_n_0;
  wire cnt_22_carry_n_0;
  wire cnt_22_carry_n_1;
  wire cnt_22_carry_n_2;
  wire cnt_22_carry_n_3;
  wire \cnt_2[0]_i_1_n_0 ;
  wire \cnt_2[31]_i_1_n_0 ;
  wire [31:1]cnt_2_0;
  wire done_i_1_n_0;
  wire [31:0]n_IBUF;
  wire ps_out_2;
  wire \result[0]_i_1_n_0 ;
  wire \result[10]_i_1_n_0 ;
  wire \result[11]_i_1_n_0 ;
  wire \result[12]_i_1_n_0 ;
  wire \result[13]_i_1_n_0 ;
  wire \result[14]_i_1_n_0 ;
  wire \result[15]_i_1_n_0 ;
  wire \result[16]_i_1_n_0 ;
  wire \result[17]_i_1_n_0 ;
  wire \result[18]_i_1_n_0 ;
  wire \result[19]_i_1_n_0 ;
  wire \result[1]_i_1_n_0 ;
  wire \result[20]_i_1_n_0 ;
  wire \result[21]_i_1_n_0 ;
  wire \result[22]_i_1_n_0 ;
  wire \result[23]_i_1_n_0 ;
  wire \result[24]_i_1_n_0 ;
  wire \result[25]_i_1_n_0 ;
  wire \result[26]_i_1_n_0 ;
  wire \result[27]_i_1_n_0 ;
  wire \result[28]_i_1_n_0 ;
  wire \result[29]_i_1_n_0 ;
  wire \result[2]_i_1_n_0 ;
  wire \result[30]_i_1_n_0 ;
  wire \result[31]_i_1_n_0 ;
  wire \result[31]_i_2_n_0 ;
  wire \result[3]_i_1_n_0 ;
  wire \result[4]_i_1_n_0 ;
  wire \result[5]_i_1_n_0 ;
  wire \result[6]_i_1_n_0 ;
  wire \result[7]_i_1_n_0 ;
  wire \result[8]_i_1_n_0 ;
  wire \result[9]_i_1_n_0 ;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_i_5_n_0;
  wire state1_carry__0_i_6_n_0;
  wire state1_carry__0_i_7_n_0;
  wire state1_carry__0_i_8_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_i_4_n_0;
  wire state1_carry__1_i_5_n_0;
  wire state1_carry__1_i_6_n_0;
  wire state1_carry__1_i_7_n_0;
  wire state1_carry__1_i_8_n_0;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_i_1_n_0;
  wire state1_carry__2_i_2_n_0;
  wire state1_carry__2_i_3_n_0;
  wire state1_carry__2_i_4_n_0;
  wire state1_carry__2_i_5_n_0;
  wire state1_carry__2_i_6_n_0;
  wire state1_carry__2_i_7_n_0;
  wire state1_carry__2_i_8_n_0;
  wire state1_carry__2_n_0;
  wire state1_carry__2_n_1;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_i_7_n_0;
  wire state1_carry_i_8_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire [31:0]sum_reg;
  wire \sum_reg[31]_i_1_n_0 ;
  wire \sum_reg_reg_n_0_[0] ;
  wire \sum_reg_reg_n_0_[10] ;
  wire \sum_reg_reg_n_0_[11] ;
  wire \sum_reg_reg_n_0_[12] ;
  wire \sum_reg_reg_n_0_[13] ;
  wire \sum_reg_reg_n_0_[14] ;
  wire \sum_reg_reg_n_0_[15] ;
  wire \sum_reg_reg_n_0_[16] ;
  wire \sum_reg_reg_n_0_[17] ;
  wire \sum_reg_reg_n_0_[18] ;
  wire \sum_reg_reg_n_0_[19] ;
  wire \sum_reg_reg_n_0_[1] ;
  wire \sum_reg_reg_n_0_[20] ;
  wire \sum_reg_reg_n_0_[21] ;
  wire \sum_reg_reg_n_0_[22] ;
  wire \sum_reg_reg_n_0_[23] ;
  wire \sum_reg_reg_n_0_[24] ;
  wire \sum_reg_reg_n_0_[25] ;
  wire \sum_reg_reg_n_0_[26] ;
  wire \sum_reg_reg_n_0_[27] ;
  wire \sum_reg_reg_n_0_[28] ;
  wire \sum_reg_reg_n_0_[29] ;
  wire \sum_reg_reg_n_0_[2] ;
  wire \sum_reg_reg_n_0_[30] ;
  wire \sum_reg_reg_n_0_[31] ;
  wire \sum_reg_reg_n_0_[3] ;
  wire \sum_reg_reg_n_0_[4] ;
  wire \sum_reg_reg_n_0_[5] ;
  wire \sum_reg_reg_n_0_[6] ;
  wire \sum_reg_reg_n_0_[7] ;
  wire \sum_reg_reg_n_0_[8] ;
  wire \sum_reg_reg_n_0_[9] ;
  wire [3:3]\NLW_add_res_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_1_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_1_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]NLW_cnt_20_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_20_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_cnt_21_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_21_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_cnt_21_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_cnt_21_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_cnt_21_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_cnt_21_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_cnt_22_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_22_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ps_out_2),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state[11]_i_6_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state[11]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(cnt_21_carry__2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state[11]_i_4_n_0 ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011110001)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(ps_out_2),
        .I3(\FSM_onehot_state[11]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state[11]_i_6_n_0 ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[11]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[11]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[11]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(ps_out_2),
        .I2(\FSM_onehot_state[11]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(ps_out_2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[8]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22232222)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state[11]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(state1_carry__2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[6]_i_6_n_0 ),
        .I1(\FSM_onehot_state[6]_i_2_n_0 ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(\FSM_onehot_state[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state[6]_i_5_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(\FSM_onehot_state[6]_i_4_n_0 ),
        .I3(\FSM_onehot_state[6]_i_5_n_0 ),
        .I4(\FSM_onehot_state[6]_i_6_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_10 
       (.I0(\cnt_1_reg_n_0_[13] ),
        .I1(\cnt_1_reg_n_0_[12] ),
        .I2(\cnt_1_reg_n_0_[15] ),
        .I3(\cnt_1_reg_n_0_[14] ),
        .O(\FSM_onehot_state[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\cnt_1_reg_n_0_[18] ),
        .I1(\cnt_1_reg_n_0_[19] ),
        .I2(\cnt_1_reg_n_0_[16] ),
        .I3(\cnt_1_reg_n_0_[17] ),
        .I4(\FSM_onehot_state[6]_i_7_n_0 ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\cnt_1_reg_n_0_[26] ),
        .I1(\cnt_1_reg_n_0_[27] ),
        .I2(\cnt_1_reg_n_0_[24] ),
        .I3(\cnt_1_reg_n_0_[25] ),
        .I4(\FSM_onehot_state[6]_i_8_n_0 ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\cnt_1_reg_n_0_[2] ),
        .I1(\cnt_1_reg_n_0_[3] ),
        .I2(\cnt_1_reg_n_0_[1] ),
        .I3(\cnt_1_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[6]_i_9_n_0 ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(\cnt_1_reg_n_0_[10] ),
        .I1(\cnt_1_reg_n_0_[11] ),
        .I2(\cnt_1_reg_n_0_[8] ),
        .I3(\cnt_1_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[6]_i_10_n_0 ),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(\cnt_1_reg_n_0_[21] ),
        .I1(\cnt_1_reg_n_0_[20] ),
        .I2(\cnt_1_reg_n_0_[23] ),
        .I3(\cnt_1_reg_n_0_[22] ),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_8 
       (.I0(\cnt_1_reg_n_0_[29] ),
        .I1(\cnt_1_reg_n_0_[28] ),
        .I2(\cnt_1_reg_n_0_[31] ),
        .I3(\cnt_1_reg_n_0_[30] ),
        .O(\FSM_onehot_state[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_9 
       (.I0(\cnt_1_reg_n_0_[5] ),
        .I1(\cnt_1_reg_n_0_[4] ),
        .I2(\cnt_1_reg_n_0_[7] ),
        .I3(\cnt_1_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[8]_i_2_n_0 ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(\FSM_onehot_state[8]_i_3_n_0 ),
        .I1(\FSM_onehot_state[8]_i_4_n_0 ),
        .I2(\FSM_onehot_state[8]_i_5_n_0 ),
        .I3(\FSM_onehot_state[8]_i_6_n_0 ),
        .I4(\FSM_onehot_state[8]_i_7_n_0 ),
        .I5(\FSM_onehot_state[8]_i_8_n_0 ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(n_IBUF[12]),
        .I1(n_IBUF[13]),
        .I2(n_IBUF[10]),
        .I3(n_IBUF[11]),
        .I4(n_IBUF[9]),
        .I5(n_IBUF[8]),
        .O(\FSM_onehot_state[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(n_IBUF[18]),
        .I1(n_IBUF[19]),
        .I2(n_IBUF[16]),
        .I3(n_IBUF[17]),
        .I4(n_IBUF[15]),
        .I5(n_IBUF[14]),
        .O(\FSM_onehot_state[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_5 
       (.I0(n_IBUF[30]),
        .I1(n_IBUF[31]),
        .I2(n_IBUF[28]),
        .I3(n_IBUF[29]),
        .I4(n_IBUF[27]),
        .I5(n_IBUF[26]),
        .O(\FSM_onehot_state[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_6 
       (.I0(n_IBUF[24]),
        .I1(n_IBUF[25]),
        .I2(n_IBUF[22]),
        .I3(n_IBUF[23]),
        .I4(n_IBUF[21]),
        .I5(n_IBUF[20]),
        .O(\FSM_onehot_state[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[8]_i_7 
       (.I0(n_IBUF[0]),
        .I1(n_IBUF[1]),
        .O(\FSM_onehot_state[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[8]_i_8 
       (.I0(n_IBUF[6]),
        .I1(n_IBUF[7]),
        .I2(n_IBUF[4]),
        .I3(n_IBUF[5]),
        .I4(n_IBUF[3]),
        .I5(n_IBUF[2]),
        .O(\FSM_onehot_state[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1_carry__2_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state[9]_i_2_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state[11]_i_6_n_0 ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[11]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(CLK),
        .CE(\FSM_onehot_state[11]_i_1_n_0 ),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[3]_i_2_n_7 ),
        .O(add_res_reg[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[11]_i_2_n_5 ),
        .O(add_res_reg[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[11]_i_2_n_4 ),
        .O(add_res_reg[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[11]_i_3 
       (.I0(\add_res_reg_reg_n_0_[11] ),
        .I1(\sum_reg_reg_n_0_[11] ),
        .O(\add_res_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[11]_i_4 
       (.I0(\add_res_reg_reg_n_0_[10] ),
        .I1(\sum_reg_reg_n_0_[10] ),
        .O(\add_res_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[11]_i_5 
       (.I0(\add_res_reg_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[9] ),
        .O(\add_res_reg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[11]_i_6 
       (.I0(\add_res_reg_reg_n_0_[8] ),
        .I1(\sum_reg_reg_n_0_[8] ),
        .O(\add_res_reg[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[15]_i_2_n_7 ),
        .O(add_res_reg[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[15]_i_2_n_6 ),
        .O(add_res_reg[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[15]_i_2_n_5 ),
        .O(add_res_reg[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[15]_i_2_n_4 ),
        .O(add_res_reg[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[15]_i_3 
       (.I0(\add_res_reg_reg_n_0_[15] ),
        .I1(\sum_reg_reg_n_0_[15] ),
        .O(\add_res_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[15]_i_4 
       (.I0(\add_res_reg_reg_n_0_[14] ),
        .I1(\sum_reg_reg_n_0_[14] ),
        .O(\add_res_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[15]_i_5 
       (.I0(\add_res_reg_reg_n_0_[13] ),
        .I1(\sum_reg_reg_n_0_[13] ),
        .O(\add_res_reg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[15]_i_6 
       (.I0(\add_res_reg_reg_n_0_[12] ),
        .I1(\sum_reg_reg_n_0_[12] ),
        .O(\add_res_reg[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[19]_i_2_n_7 ),
        .O(add_res_reg[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[19]_i_2_n_6 ),
        .O(add_res_reg[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[19]_i_2_n_5 ),
        .O(add_res_reg[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[19]_i_2_n_4 ),
        .O(add_res_reg[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[19]_i_3 
       (.I0(\add_res_reg_reg_n_0_[19] ),
        .I1(\sum_reg_reg_n_0_[19] ),
        .O(\add_res_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[19]_i_4 
       (.I0(\add_res_reg_reg_n_0_[18] ),
        .I1(\sum_reg_reg_n_0_[18] ),
        .O(\add_res_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[19]_i_5 
       (.I0(\add_res_reg_reg_n_0_[17] ),
        .I1(\sum_reg_reg_n_0_[17] ),
        .O(\add_res_reg[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[19]_i_6 
       (.I0(\add_res_reg_reg_n_0_[16] ),
        .I1(\sum_reg_reg_n_0_[16] ),
        .O(\add_res_reg[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[3]_i_2_n_6 ),
        .O(add_res_reg[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[23]_i_2_n_7 ),
        .O(add_res_reg[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[23]_i_2_n_6 ),
        .O(add_res_reg[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[23]_i_2_n_5 ),
        .O(add_res_reg[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[23]_i_2_n_4 ),
        .O(add_res_reg[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[23]_i_3 
       (.I0(\add_res_reg_reg_n_0_[23] ),
        .I1(\sum_reg_reg_n_0_[23] ),
        .O(\add_res_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[23]_i_4 
       (.I0(\add_res_reg_reg_n_0_[22] ),
        .I1(\sum_reg_reg_n_0_[22] ),
        .O(\add_res_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[23]_i_5 
       (.I0(\add_res_reg_reg_n_0_[21] ),
        .I1(\sum_reg_reg_n_0_[21] ),
        .O(\add_res_reg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[23]_i_6 
       (.I0(\add_res_reg_reg_n_0_[20] ),
        .I1(\sum_reg_reg_n_0_[20] ),
        .O(\add_res_reg[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[27]_i_2_n_7 ),
        .O(add_res_reg[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[27]_i_2_n_6 ),
        .O(add_res_reg[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[27]_i_2_n_5 ),
        .O(add_res_reg[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[27]_i_2_n_4 ),
        .O(add_res_reg[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[27]_i_3 
       (.I0(\add_res_reg_reg_n_0_[27] ),
        .I1(\sum_reg_reg_n_0_[27] ),
        .O(\add_res_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[27]_i_4 
       (.I0(\add_res_reg_reg_n_0_[26] ),
        .I1(\sum_reg_reg_n_0_[26] ),
        .O(\add_res_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[27]_i_5 
       (.I0(\add_res_reg_reg_n_0_[25] ),
        .I1(\sum_reg_reg_n_0_[25] ),
        .O(\add_res_reg[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[27]_i_6 
       (.I0(\add_res_reg_reg_n_0_[24] ),
        .I1(\sum_reg_reg_n_0_[24] ),
        .O(\add_res_reg[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[31]_i_2_n_7 ),
        .O(add_res_reg[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[31]_i_2_n_6 ),
        .O(add_res_reg[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[3]_i_2_n_5 ),
        .O(add_res_reg[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[31]_i_2_n_5 ),
        .O(add_res_reg[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[31]_i_2_n_4 ),
        .O(add_res_reg[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[31]_i_3 
       (.I0(\add_res_reg_reg_n_0_[31] ),
        .I1(\sum_reg_reg_n_0_[31] ),
        .O(\add_res_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[31]_i_4 
       (.I0(\add_res_reg_reg_n_0_[30] ),
        .I1(\sum_reg_reg_n_0_[30] ),
        .O(\add_res_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[31]_i_5 
       (.I0(\add_res_reg_reg_n_0_[29] ),
        .I1(\sum_reg_reg_n_0_[29] ),
        .O(\add_res_reg[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[31]_i_6 
       (.I0(\add_res_reg_reg_n_0_[28] ),
        .I1(\sum_reg_reg_n_0_[28] ),
        .O(\add_res_reg[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[3]_i_2_n_4 ),
        .O(add_res_reg[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[3]_i_3 
       (.I0(\add_res_reg_reg_n_0_[3] ),
        .I1(\sum_reg_reg_n_0_[3] ),
        .O(\add_res_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[3]_i_4 
       (.I0(\add_res_reg_reg_n_0_[2] ),
        .I1(\sum_reg_reg_n_0_[2] ),
        .O(\add_res_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[3]_i_5 
       (.I0(\add_res_reg_reg_n_0_[1] ),
        .I1(\sum_reg_reg_n_0_[1] ),
        .O(\add_res_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[3]_i_6 
       (.I0(\add_res_reg_reg_n_0_[0] ),
        .I1(\sum_reg_reg_n_0_[0] ),
        .O(\add_res_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[7]_i_2_n_7 ),
        .O(add_res_reg[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[7]_i_2_n_6 ),
        .O(add_res_reg[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[7]_i_2_n_5 ),
        .O(add_res_reg[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[7]_i_2_n_4 ),
        .O(add_res_reg[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[7]_i_3 
       (.I0(\add_res_reg_reg_n_0_[7] ),
        .I1(\sum_reg_reg_n_0_[7] ),
        .O(\add_res_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[7]_i_4 
       (.I0(\add_res_reg_reg_n_0_[6] ),
        .I1(\sum_reg_reg_n_0_[6] ),
        .O(\add_res_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[7]_i_5 
       (.I0(\add_res_reg_reg_n_0_[5] ),
        .I1(\sum_reg_reg_n_0_[5] ),
        .O(\add_res_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_res_reg[7]_i_6 
       (.I0(\add_res_reg_reg_n_0_[4] ),
        .I1(\sum_reg_reg_n_0_[4] ),
        .O(\add_res_reg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[11]_i_2_n_7 ),
        .O(add_res_reg[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \add_res_reg[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\add_res_reg_reg[11]_i_2_n_6 ),
        .O(add_res_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[0] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[0]),
        .Q(\add_res_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[10] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[10]),
        .Q(\add_res_reg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[11] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[11]),
        .Q(\add_res_reg_reg_n_0_[11] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[11]_i_2 
       (.CI(\add_res_reg_reg[7]_i_2_n_0 ),
        .CO({\add_res_reg_reg[11]_i_2_n_0 ,\add_res_reg_reg[11]_i_2_n_1 ,\add_res_reg_reg[11]_i_2_n_2 ,\add_res_reg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[11] ,\add_res_reg_reg_n_0_[10] ,\add_res_reg_reg_n_0_[9] ,\add_res_reg_reg_n_0_[8] }),
        .O({\add_res_reg_reg[11]_i_2_n_4 ,\add_res_reg_reg[11]_i_2_n_5 ,\add_res_reg_reg[11]_i_2_n_6 ,\add_res_reg_reg[11]_i_2_n_7 }),
        .S({\add_res_reg[11]_i_3_n_0 ,\add_res_reg[11]_i_4_n_0 ,\add_res_reg[11]_i_5_n_0 ,\add_res_reg[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[12] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[12]),
        .Q(\add_res_reg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[13] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[13]),
        .Q(\add_res_reg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[14] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[14]),
        .Q(\add_res_reg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[15] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[15]),
        .Q(\add_res_reg_reg_n_0_[15] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[15]_i_2 
       (.CI(\add_res_reg_reg[11]_i_2_n_0 ),
        .CO({\add_res_reg_reg[15]_i_2_n_0 ,\add_res_reg_reg[15]_i_2_n_1 ,\add_res_reg_reg[15]_i_2_n_2 ,\add_res_reg_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[15] ,\add_res_reg_reg_n_0_[14] ,\add_res_reg_reg_n_0_[13] ,\add_res_reg_reg_n_0_[12] }),
        .O({\add_res_reg_reg[15]_i_2_n_4 ,\add_res_reg_reg[15]_i_2_n_5 ,\add_res_reg_reg[15]_i_2_n_6 ,\add_res_reg_reg[15]_i_2_n_7 }),
        .S({\add_res_reg[15]_i_3_n_0 ,\add_res_reg[15]_i_4_n_0 ,\add_res_reg[15]_i_5_n_0 ,\add_res_reg[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[16] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[16]),
        .Q(\add_res_reg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[17] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[17]),
        .Q(\add_res_reg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[18] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[18]),
        .Q(\add_res_reg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[19] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[19]),
        .Q(\add_res_reg_reg_n_0_[19] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[19]_i_2 
       (.CI(\add_res_reg_reg[15]_i_2_n_0 ),
        .CO({\add_res_reg_reg[19]_i_2_n_0 ,\add_res_reg_reg[19]_i_2_n_1 ,\add_res_reg_reg[19]_i_2_n_2 ,\add_res_reg_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[19] ,\add_res_reg_reg_n_0_[18] ,\add_res_reg_reg_n_0_[17] ,\add_res_reg_reg_n_0_[16] }),
        .O({\add_res_reg_reg[19]_i_2_n_4 ,\add_res_reg_reg[19]_i_2_n_5 ,\add_res_reg_reg[19]_i_2_n_6 ,\add_res_reg_reg[19]_i_2_n_7 }),
        .S({\add_res_reg[19]_i_3_n_0 ,\add_res_reg[19]_i_4_n_0 ,\add_res_reg[19]_i_5_n_0 ,\add_res_reg[19]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[1] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[1]),
        .Q(\add_res_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[20] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[20]),
        .Q(\add_res_reg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[21] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[21]),
        .Q(\add_res_reg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[22] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[22]),
        .Q(\add_res_reg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[23] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[23]),
        .Q(\add_res_reg_reg_n_0_[23] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[23]_i_2 
       (.CI(\add_res_reg_reg[19]_i_2_n_0 ),
        .CO({\add_res_reg_reg[23]_i_2_n_0 ,\add_res_reg_reg[23]_i_2_n_1 ,\add_res_reg_reg[23]_i_2_n_2 ,\add_res_reg_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[23] ,\add_res_reg_reg_n_0_[22] ,\add_res_reg_reg_n_0_[21] ,\add_res_reg_reg_n_0_[20] }),
        .O({\add_res_reg_reg[23]_i_2_n_4 ,\add_res_reg_reg[23]_i_2_n_5 ,\add_res_reg_reg[23]_i_2_n_6 ,\add_res_reg_reg[23]_i_2_n_7 }),
        .S({\add_res_reg[23]_i_3_n_0 ,\add_res_reg[23]_i_4_n_0 ,\add_res_reg[23]_i_5_n_0 ,\add_res_reg[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[24] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[24]),
        .Q(\add_res_reg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[25] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[25]),
        .Q(\add_res_reg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[26] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[26]),
        .Q(\add_res_reg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[27] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[27]),
        .Q(\add_res_reg_reg_n_0_[27] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[27]_i_2 
       (.CI(\add_res_reg_reg[23]_i_2_n_0 ),
        .CO({\add_res_reg_reg[27]_i_2_n_0 ,\add_res_reg_reg[27]_i_2_n_1 ,\add_res_reg_reg[27]_i_2_n_2 ,\add_res_reg_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[27] ,\add_res_reg_reg_n_0_[26] ,\add_res_reg_reg_n_0_[25] ,\add_res_reg_reg_n_0_[24] }),
        .O({\add_res_reg_reg[27]_i_2_n_4 ,\add_res_reg_reg[27]_i_2_n_5 ,\add_res_reg_reg[27]_i_2_n_6 ,\add_res_reg_reg[27]_i_2_n_7 }),
        .S({\add_res_reg[27]_i_3_n_0 ,\add_res_reg[27]_i_4_n_0 ,\add_res_reg[27]_i_5_n_0 ,\add_res_reg[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[28] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[28]),
        .Q(\add_res_reg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[29] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[29]),
        .Q(\add_res_reg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[2] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[2]),
        .Q(\add_res_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[30] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[30]),
        .Q(\add_res_reg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[31] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[31]),
        .Q(\add_res_reg_reg_n_0_[31] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[31]_i_2 
       (.CI(\add_res_reg_reg[27]_i_2_n_0 ),
        .CO({\NLW_add_res_reg_reg[31]_i_2_CO_UNCONNECTED [3],\add_res_reg_reg[31]_i_2_n_1 ,\add_res_reg_reg[31]_i_2_n_2 ,\add_res_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\add_res_reg_reg_n_0_[30] ,\add_res_reg_reg_n_0_[29] ,\add_res_reg_reg_n_0_[28] }),
        .O({\add_res_reg_reg[31]_i_2_n_4 ,\add_res_reg_reg[31]_i_2_n_5 ,\add_res_reg_reg[31]_i_2_n_6 ,\add_res_reg_reg[31]_i_2_n_7 }),
        .S({\add_res_reg[31]_i_3_n_0 ,\add_res_reg[31]_i_4_n_0 ,\add_res_reg[31]_i_5_n_0 ,\add_res_reg[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[3] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[3]),
        .Q(\add_res_reg_reg_n_0_[3] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\add_res_reg_reg[3]_i_2_n_0 ,\add_res_reg_reg[3]_i_2_n_1 ,\add_res_reg_reg[3]_i_2_n_2 ,\add_res_reg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[3] ,\add_res_reg_reg_n_0_[2] ,\add_res_reg_reg_n_0_[1] ,\add_res_reg_reg_n_0_[0] }),
        .O({\add_res_reg_reg[3]_i_2_n_4 ,\add_res_reg_reg[3]_i_2_n_5 ,\add_res_reg_reg[3]_i_2_n_6 ,\add_res_reg_reg[3]_i_2_n_7 }),
        .S({\add_res_reg[3]_i_3_n_0 ,\add_res_reg[3]_i_4_n_0 ,\add_res_reg[3]_i_5_n_0 ,\add_res_reg[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[4] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[4]),
        .Q(\add_res_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[5] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[5]),
        .Q(\add_res_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[6] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[6]),
        .Q(\add_res_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[7] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[7]),
        .Q(\add_res_reg_reg_n_0_[7] ),
        .R(SR));
  CARRY4 \add_res_reg_reg[7]_i_2 
       (.CI(\add_res_reg_reg[3]_i_2_n_0 ),
        .CO({\add_res_reg_reg[7]_i_2_n_0 ,\add_res_reg_reg[7]_i_2_n_1 ,\add_res_reg_reg[7]_i_2_n_2 ,\add_res_reg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\add_res_reg_reg_n_0_[7] ,\add_res_reg_reg_n_0_[6] ,\add_res_reg_reg_n_0_[5] ,\add_res_reg_reg_n_0_[4] }),
        .O({\add_res_reg_reg[7]_i_2_n_4 ,\add_res_reg_reg[7]_i_2_n_5 ,\add_res_reg_reg[7]_i_2_n_6 ,\add_res_reg_reg[7]_i_2_n_7 }),
        .S({\add_res_reg[7]_i_3_n_0 ,\add_res_reg[7]_i_4_n_0 ,\add_res_reg[7]_i_5_n_0 ,\add_res_reg[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[8] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[8]),
        .Q(\add_res_reg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \add_res_reg_reg[9] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(add_res_reg[9]),
        .Q(\add_res_reg_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0A0E)) 
    \cnt_1[0]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg_n_0_[0] ),
        .I3(ps_out_2),
        .O(cnt_1[0]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[10]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[12]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[10]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[11]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[12]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[11]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[12]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[12]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[12]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[12]_i_3 
       (.I0(\cnt_1_reg_n_0_[12] ),
        .O(\cnt_1[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[12]_i_4 
       (.I0(\cnt_1_reg_n_0_[11] ),
        .O(\cnt_1[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[12]_i_5 
       (.I0(\cnt_1_reg_n_0_[10] ),
        .O(\cnt_1[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[12]_i_6 
       (.I0(\cnt_1_reg_n_0_[9] ),
        .O(\cnt_1[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[13]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[16]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[13]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[14]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[16]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[14]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[15]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[16]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[15]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[16]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[16]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[16]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[16]_i_3 
       (.I0(\cnt_1_reg_n_0_[16] ),
        .O(\cnt_1[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[16]_i_4 
       (.I0(\cnt_1_reg_n_0_[15] ),
        .O(\cnt_1[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[16]_i_5 
       (.I0(\cnt_1_reg_n_0_[14] ),
        .O(\cnt_1[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[16]_i_6 
       (.I0(\cnt_1_reg_n_0_[13] ),
        .O(\cnt_1[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[17]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[20]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[17]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[18]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[20]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[18]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[19]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[20]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[19]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[1]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[4]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[1]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[20]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[20]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[20]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[20]_i_3 
       (.I0(\cnt_1_reg_n_0_[20] ),
        .O(\cnt_1[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[20]_i_4 
       (.I0(\cnt_1_reg_n_0_[19] ),
        .O(\cnt_1[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[20]_i_5 
       (.I0(\cnt_1_reg_n_0_[18] ),
        .O(\cnt_1[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[20]_i_6 
       (.I0(\cnt_1_reg_n_0_[17] ),
        .O(\cnt_1[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[21]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[24]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[21]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[22]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[24]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[22]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[23]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[24]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[23]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[24]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[24]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[24]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[24]_i_3 
       (.I0(\cnt_1_reg_n_0_[24] ),
        .O(\cnt_1[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[24]_i_4 
       (.I0(\cnt_1_reg_n_0_[23] ),
        .O(\cnt_1[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[24]_i_5 
       (.I0(\cnt_1_reg_n_0_[22] ),
        .O(\cnt_1[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[24]_i_6 
       (.I0(\cnt_1_reg_n_0_[21] ),
        .O(\cnt_1[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[25]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[28]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[25]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[26]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[28]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[26]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[27]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[28]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[27]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[28]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[28]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[28]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[28]_i_3 
       (.I0(\cnt_1_reg_n_0_[28] ),
        .O(\cnt_1[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[28]_i_4 
       (.I0(\cnt_1_reg_n_0_[27] ),
        .O(\cnt_1[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[28]_i_5 
       (.I0(\cnt_1_reg_n_0_[26] ),
        .O(\cnt_1[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[28]_i_6 
       (.I0(\cnt_1_reg_n_0_[25] ),
        .O(\cnt_1[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[29]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[31]_i_4_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[29]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[2]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[4]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[2]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[30]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[31]_i_4_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[30]));
  LUT5 #(
    .INIT(32'hCECC0E00)) 
    \cnt_1[31]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(SR),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ps_out_2),
        .O(\cnt_1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[31]_i_2 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[31]_i_4_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt_1[31]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_state[11]_i_6_n_0 ),
        .O(\cnt_1[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[31]_i_5 
       (.I0(\cnt_1_reg_n_0_[31] ),
        .O(\cnt_1[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[31]_i_6 
       (.I0(\cnt_1_reg_n_0_[30] ),
        .O(\cnt_1[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[31]_i_7 
       (.I0(\cnt_1_reg_n_0_[29] ),
        .O(\cnt_1[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[3]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[4]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[3]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[4]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[4]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[4]_i_3 
       (.I0(\cnt_1_reg_n_0_[4] ),
        .O(\cnt_1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[4]_i_4 
       (.I0(\cnt_1_reg_n_0_[3] ),
        .O(\cnt_1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[4]_i_5 
       (.I0(\cnt_1_reg_n_0_[2] ),
        .O(\cnt_1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[4]_i_6 
       (.I0(\cnt_1_reg_n_0_[1] ),
        .O(\cnt_1[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[5]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[8]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[5]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[6]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[8]_i_2_n_6 ),
        .I3(ps_out_2),
        .O(cnt_1[6]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[7]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[8]_i_2_n_5 ),
        .I3(ps_out_2),
        .O(cnt_1[7]));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[8]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[8]_i_2_n_4 ),
        .I3(ps_out_2),
        .O(cnt_1[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[8]_i_3 
       (.I0(\cnt_1_reg_n_0_[8] ),
        .O(\cnt_1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[8]_i_4 
       (.I0(\cnt_1_reg_n_0_[7] ),
        .O(\cnt_1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[8]_i_5 
       (.I0(\cnt_1_reg_n_0_[6] ),
        .O(\cnt_1[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1[8]_i_6 
       (.I0(\cnt_1_reg_n_0_[5] ),
        .O(\cnt_1[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hA0E0)) 
    \cnt_1[9]_i_1 
       (.I0(\cnt_1[31]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\cnt_1_reg[12]_i_2_n_7 ),
        .I3(ps_out_2),
        .O(cnt_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[0] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[0]),
        .Q(\cnt_1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[10] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[10]),
        .Q(\cnt_1_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[11] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[11]),
        .Q(\cnt_1_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[12] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[12]),
        .Q(\cnt_1_reg_n_0_[12] ),
        .R(SR));
  CARRY4 \cnt_1_reg[12]_i_2 
       (.CI(\cnt_1_reg[8]_i_2_n_0 ),
        .CO({\cnt_1_reg[12]_i_2_n_0 ,\cnt_1_reg[12]_i_2_n_1 ,\cnt_1_reg[12]_i_2_n_2 ,\cnt_1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[12]_i_2_n_4 ,\cnt_1_reg[12]_i_2_n_5 ,\cnt_1_reg[12]_i_2_n_6 ,\cnt_1_reg[12]_i_2_n_7 }),
        .S({\cnt_1[12]_i_3_n_0 ,\cnt_1[12]_i_4_n_0 ,\cnt_1[12]_i_5_n_0 ,\cnt_1[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[13] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[13]),
        .Q(\cnt_1_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[14] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[14]),
        .Q(\cnt_1_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[15] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[15]),
        .Q(\cnt_1_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[16] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[16]),
        .Q(\cnt_1_reg_n_0_[16] ),
        .R(SR));
  CARRY4 \cnt_1_reg[16]_i_2 
       (.CI(\cnt_1_reg[12]_i_2_n_0 ),
        .CO({\cnt_1_reg[16]_i_2_n_0 ,\cnt_1_reg[16]_i_2_n_1 ,\cnt_1_reg[16]_i_2_n_2 ,\cnt_1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[16]_i_2_n_4 ,\cnt_1_reg[16]_i_2_n_5 ,\cnt_1_reg[16]_i_2_n_6 ,\cnt_1_reg[16]_i_2_n_7 }),
        .S({\cnt_1[16]_i_3_n_0 ,\cnt_1[16]_i_4_n_0 ,\cnt_1[16]_i_5_n_0 ,\cnt_1[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[17] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[17]),
        .Q(\cnt_1_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[18] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[18]),
        .Q(\cnt_1_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[19] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[19]),
        .Q(\cnt_1_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[1] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[1]),
        .Q(\cnt_1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[20] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[20]),
        .Q(\cnt_1_reg_n_0_[20] ),
        .R(SR));
  CARRY4 \cnt_1_reg[20]_i_2 
       (.CI(\cnt_1_reg[16]_i_2_n_0 ),
        .CO({\cnt_1_reg[20]_i_2_n_0 ,\cnt_1_reg[20]_i_2_n_1 ,\cnt_1_reg[20]_i_2_n_2 ,\cnt_1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[20]_i_2_n_4 ,\cnt_1_reg[20]_i_2_n_5 ,\cnt_1_reg[20]_i_2_n_6 ,\cnt_1_reg[20]_i_2_n_7 }),
        .S({\cnt_1[20]_i_3_n_0 ,\cnt_1[20]_i_4_n_0 ,\cnt_1[20]_i_5_n_0 ,\cnt_1[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[21] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[21]),
        .Q(\cnt_1_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[22] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[22]),
        .Q(\cnt_1_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[23] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[23]),
        .Q(\cnt_1_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[24] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[24]),
        .Q(\cnt_1_reg_n_0_[24] ),
        .R(SR));
  CARRY4 \cnt_1_reg[24]_i_2 
       (.CI(\cnt_1_reg[20]_i_2_n_0 ),
        .CO({\cnt_1_reg[24]_i_2_n_0 ,\cnt_1_reg[24]_i_2_n_1 ,\cnt_1_reg[24]_i_2_n_2 ,\cnt_1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[24]_i_2_n_4 ,\cnt_1_reg[24]_i_2_n_5 ,\cnt_1_reg[24]_i_2_n_6 ,\cnt_1_reg[24]_i_2_n_7 }),
        .S({\cnt_1[24]_i_3_n_0 ,\cnt_1[24]_i_4_n_0 ,\cnt_1[24]_i_5_n_0 ,\cnt_1[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[25] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[25]),
        .Q(\cnt_1_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[26] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[26]),
        .Q(\cnt_1_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[27] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[27]),
        .Q(\cnt_1_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[28] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[28]),
        .Q(\cnt_1_reg_n_0_[28] ),
        .R(SR));
  CARRY4 \cnt_1_reg[28]_i_2 
       (.CI(\cnt_1_reg[24]_i_2_n_0 ),
        .CO({\cnt_1_reg[28]_i_2_n_0 ,\cnt_1_reg[28]_i_2_n_1 ,\cnt_1_reg[28]_i_2_n_2 ,\cnt_1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[28]_i_2_n_4 ,\cnt_1_reg[28]_i_2_n_5 ,\cnt_1_reg[28]_i_2_n_6 ,\cnt_1_reg[28]_i_2_n_7 }),
        .S({\cnt_1[28]_i_3_n_0 ,\cnt_1[28]_i_4_n_0 ,\cnt_1[28]_i_5_n_0 ,\cnt_1[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[29] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[29]),
        .Q(\cnt_1_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[2] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[2]),
        .Q(\cnt_1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[30] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[30]),
        .Q(\cnt_1_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[31] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[31]),
        .Q(\cnt_1_reg_n_0_[31] ),
        .R(SR));
  CARRY4 \cnt_1_reg[31]_i_4 
       (.CI(\cnt_1_reg[28]_i_2_n_0 ),
        .CO({\NLW_cnt_1_reg[31]_i_4_CO_UNCONNECTED [3:2],\cnt_1_reg[31]_i_4_n_2 ,\cnt_1_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_1_reg[31]_i_4_O_UNCONNECTED [3],\cnt_1_reg[31]_i_4_n_5 ,\cnt_1_reg[31]_i_4_n_6 ,\cnt_1_reg[31]_i_4_n_7 }),
        .S({1'b0,\cnt_1[31]_i_5_n_0 ,\cnt_1[31]_i_6_n_0 ,\cnt_1[31]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[3] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[3]),
        .Q(\cnt_1_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[4] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[4]),
        .Q(\cnt_1_reg_n_0_[4] ),
        .R(SR));
  CARRY4 \cnt_1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_1_reg[4]_i_2_n_0 ,\cnt_1_reg[4]_i_2_n_1 ,\cnt_1_reg[4]_i_2_n_2 ,\cnt_1_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[4]_i_2_n_4 ,\cnt_1_reg[4]_i_2_n_5 ,\cnt_1_reg[4]_i_2_n_6 ,\cnt_1_reg[4]_i_2_n_7 }),
        .S({\cnt_1[4]_i_3_n_0 ,\cnt_1[4]_i_4_n_0 ,\cnt_1[4]_i_5_n_0 ,\cnt_1[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[5] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[5]),
        .Q(\cnt_1_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[6] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[6]),
        .Q(\cnt_1_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[7] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[7]),
        .Q(\cnt_1_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[8] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[8]),
        .Q(\cnt_1_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \cnt_1_reg[8]_i_2 
       (.CI(\cnt_1_reg[4]_i_2_n_0 ),
        .CO({\cnt_1_reg[8]_i_2_n_0 ,\cnt_1_reg[8]_i_2_n_1 ,\cnt_1_reg[8]_i_2_n_2 ,\cnt_1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1_reg[8]_i_2_n_4 ,\cnt_1_reg[8]_i_2_n_5 ,\cnt_1_reg[8]_i_2_n_6 ,\cnt_1_reg[8]_i_2_n_7 }),
        .S({\cnt_1[8]_i_3_n_0 ,\cnt_1[8]_i_4_n_0 ,\cnt_1[8]_i_5_n_0 ,\cnt_1[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[9] 
       (.C(CLK),
        .CE(\cnt_1[31]_i_1_n_0 ),
        .D(cnt_1[9]),
        .Q(\cnt_1_reg_n_0_[9] ),
        .R(SR));
  CARRY4 cnt_20_carry
       (.CI(1'b0),
        .CO({cnt_20_carry_n_0,cnt_20_carry_n_1,cnt_20_carry_n_2,cnt_20_carry_n_3}),
        .CYINIT(cnt_2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry_n_4,cnt_20_carry_n_5,cnt_20_carry_n_6,cnt_20_carry_n_7}),
        .S({cnt_20_carry_i_1_n_0,cnt_20_carry_i_2_n_0,cnt_20_carry_i_3_n_0,cnt_20_carry_i_4_n_0}));
  CARRY4 cnt_20_carry__0
       (.CI(cnt_20_carry_n_0),
        .CO({cnt_20_carry__0_n_0,cnt_20_carry__0_n_1,cnt_20_carry__0_n_2,cnt_20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__0_n_4,cnt_20_carry__0_n_5,cnt_20_carry__0_n_6,cnt_20_carry__0_n_7}),
        .S({cnt_20_carry__0_i_1_n_0,cnt_20_carry__0_i_2_n_0,cnt_20_carry__0_i_3_n_0,cnt_20_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__0_i_1
       (.I0(cnt_2[8]),
        .O(cnt_20_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__0_i_2
       (.I0(cnt_2[7]),
        .O(cnt_20_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__0_i_3
       (.I0(cnt_2[6]),
        .O(cnt_20_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__0_i_4
       (.I0(cnt_2[5]),
        .O(cnt_20_carry__0_i_4_n_0));
  CARRY4 cnt_20_carry__1
       (.CI(cnt_20_carry__0_n_0),
        .CO({cnt_20_carry__1_n_0,cnt_20_carry__1_n_1,cnt_20_carry__1_n_2,cnt_20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__1_n_4,cnt_20_carry__1_n_5,cnt_20_carry__1_n_6,cnt_20_carry__1_n_7}),
        .S({cnt_20_carry__1_i_1_n_0,cnt_20_carry__1_i_2_n_0,cnt_20_carry__1_i_3_n_0,cnt_20_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__1_i_1
       (.I0(cnt_2[12]),
        .O(cnt_20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__1_i_2
       (.I0(cnt_2[11]),
        .O(cnt_20_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__1_i_3
       (.I0(cnt_2[10]),
        .O(cnt_20_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__1_i_4
       (.I0(cnt_2[9]),
        .O(cnt_20_carry__1_i_4_n_0));
  CARRY4 cnt_20_carry__2
       (.CI(cnt_20_carry__1_n_0),
        .CO({cnt_20_carry__2_n_0,cnt_20_carry__2_n_1,cnt_20_carry__2_n_2,cnt_20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__2_n_4,cnt_20_carry__2_n_5,cnt_20_carry__2_n_6,cnt_20_carry__2_n_7}),
        .S({cnt_20_carry__2_i_1_n_0,cnt_20_carry__2_i_2_n_0,cnt_20_carry__2_i_3_n_0,cnt_20_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__2_i_1
       (.I0(cnt_2[16]),
        .O(cnt_20_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__2_i_2
       (.I0(cnt_2[15]),
        .O(cnt_20_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__2_i_3
       (.I0(cnt_2[14]),
        .O(cnt_20_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__2_i_4
       (.I0(cnt_2[13]),
        .O(cnt_20_carry__2_i_4_n_0));
  CARRY4 cnt_20_carry__3
       (.CI(cnt_20_carry__2_n_0),
        .CO({cnt_20_carry__3_n_0,cnt_20_carry__3_n_1,cnt_20_carry__3_n_2,cnt_20_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__3_n_4,cnt_20_carry__3_n_5,cnt_20_carry__3_n_6,cnt_20_carry__3_n_7}),
        .S({cnt_20_carry__3_i_1_n_0,cnt_20_carry__3_i_2_n_0,cnt_20_carry__3_i_3_n_0,cnt_20_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__3_i_1
       (.I0(cnt_2[20]),
        .O(cnt_20_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__3_i_2
       (.I0(cnt_2[19]),
        .O(cnt_20_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__3_i_3
       (.I0(cnt_2[18]),
        .O(cnt_20_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__3_i_4
       (.I0(cnt_2[17]),
        .O(cnt_20_carry__3_i_4_n_0));
  CARRY4 cnt_20_carry__4
       (.CI(cnt_20_carry__3_n_0),
        .CO({cnt_20_carry__4_n_0,cnt_20_carry__4_n_1,cnt_20_carry__4_n_2,cnt_20_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__4_n_4,cnt_20_carry__4_n_5,cnt_20_carry__4_n_6,cnt_20_carry__4_n_7}),
        .S({cnt_20_carry__4_i_1_n_0,cnt_20_carry__4_i_2_n_0,cnt_20_carry__4_i_3_n_0,cnt_20_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__4_i_1
       (.I0(cnt_2[24]),
        .O(cnt_20_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__4_i_2
       (.I0(cnt_2[23]),
        .O(cnt_20_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__4_i_3
       (.I0(cnt_2[22]),
        .O(cnt_20_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__4_i_4
       (.I0(cnt_2[21]),
        .O(cnt_20_carry__4_i_4_n_0));
  CARRY4 cnt_20_carry__5
       (.CI(cnt_20_carry__4_n_0),
        .CO({cnt_20_carry__5_n_0,cnt_20_carry__5_n_1,cnt_20_carry__5_n_2,cnt_20_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt_20_carry__5_n_4,cnt_20_carry__5_n_5,cnt_20_carry__5_n_6,cnt_20_carry__5_n_7}),
        .S({cnt_20_carry__5_i_1_n_0,cnt_20_carry__5_i_2_n_0,cnt_20_carry__5_i_3_n_0,cnt_20_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__5_i_1
       (.I0(cnt_2[28]),
        .O(cnt_20_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__5_i_2
       (.I0(cnt_2[27]),
        .O(cnt_20_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__5_i_3
       (.I0(cnt_2[26]),
        .O(cnt_20_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__5_i_4
       (.I0(cnt_2[25]),
        .O(cnt_20_carry__5_i_4_n_0));
  CARRY4 cnt_20_carry__6
       (.CI(cnt_20_carry__5_n_0),
        .CO({NLW_cnt_20_carry__6_CO_UNCONNECTED[3:2],cnt_20_carry__6_n_2,cnt_20_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_20_carry__6_O_UNCONNECTED[3],cnt_20_carry__6_n_5,cnt_20_carry__6_n_6,cnt_20_carry__6_n_7}),
        .S({1'b0,cnt_20_carry__6_i_1_n_0,cnt_20_carry__6_i_2_n_0,cnt_20_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__6_i_1
       (.I0(cnt_2[31]),
        .O(cnt_20_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__6_i_2
       (.I0(cnt_2[30]),
        .O(cnt_20_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry__6_i_3
       (.I0(cnt_2[29]),
        .O(cnt_20_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry_i_1
       (.I0(cnt_2[4]),
        .O(cnt_20_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry_i_2
       (.I0(cnt_2[3]),
        .O(cnt_20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry_i_3
       (.I0(cnt_2[2]),
        .O(cnt_20_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    cnt_20_carry_i_4
       (.I0(cnt_2[1]),
        .O(cnt_20_carry_i_4_n_0));
  CARRY4 cnt_21_carry
       (.CI(1'b0),
        .CO({cnt_21_carry_n_0,cnt_21_carry_n_1,cnt_21_carry_n_2,cnt_21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_21_carry_i_1_n_0,cnt_21_carry_i_2_n_0,cnt_21_carry_i_3_n_0,cnt_21_carry_i_4_n_0}),
        .O(NLW_cnt_21_carry_O_UNCONNECTED[3:0]),
        .S({cnt_21_carry_i_5_n_0,cnt_21_carry_i_6_n_0,cnt_21_carry_i_7_n_0,cnt_21_carry_i_8_n_0}));
  CARRY4 cnt_21_carry__0
       (.CI(cnt_21_carry_n_0),
        .CO({cnt_21_carry__0_n_0,cnt_21_carry__0_n_1,cnt_21_carry__0_n_2,cnt_21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_21_carry__0_i_1_n_0,cnt_21_carry__0_i_2_n_0,cnt_21_carry__0_i_3_n_0,cnt_21_carry__0_i_4_n_0}),
        .O(NLW_cnt_21_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt_21_carry__0_i_5_n_0,cnt_21_carry__0_i_6_n_0,cnt_21_carry__0_i_7_n_0,cnt_21_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__0_i_1
       (.I0(cnt_2[15]),
        .I1(cnt_22[15]),
        .I2(cnt_2[14]),
        .I3(cnt_22[14]),
        .O(cnt_21_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__0_i_2
       (.I0(cnt_2[13]),
        .I1(cnt_22[13]),
        .I2(cnt_2[12]),
        .I3(cnt_22[12]),
        .O(cnt_21_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__0_i_3
       (.I0(cnt_2[11]),
        .I1(cnt_22[11]),
        .I2(cnt_2[10]),
        .I3(cnt_22[10]),
        .O(cnt_21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__0_i_4
       (.I0(cnt_2[9]),
        .I1(cnt_22[9]),
        .I2(cnt_2[8]),
        .I3(cnt_22[8]),
        .O(cnt_21_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__0_i_5
       (.I0(cnt_22[15]),
        .I1(cnt_2[15]),
        .I2(cnt_22[14]),
        .I3(cnt_2[14]),
        .O(cnt_21_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__0_i_6
       (.I0(cnt_22[13]),
        .I1(cnt_2[13]),
        .I2(cnt_22[12]),
        .I3(cnt_2[12]),
        .O(cnt_21_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__0_i_7
       (.I0(cnt_22[11]),
        .I1(cnt_2[11]),
        .I2(cnt_22[10]),
        .I3(cnt_2[10]),
        .O(cnt_21_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__0_i_8
       (.I0(cnt_22[9]),
        .I1(cnt_2[9]),
        .I2(cnt_22[8]),
        .I3(cnt_2[8]),
        .O(cnt_21_carry__0_i_8_n_0));
  CARRY4 cnt_21_carry__1
       (.CI(cnt_21_carry__0_n_0),
        .CO({cnt_21_carry__1_n_0,cnt_21_carry__1_n_1,cnt_21_carry__1_n_2,cnt_21_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_21_carry__1_i_1_n_0,cnt_21_carry__1_i_2_n_0,cnt_21_carry__1_i_3_n_0,cnt_21_carry__1_i_4_n_0}),
        .O(NLW_cnt_21_carry__1_O_UNCONNECTED[3:0]),
        .S({cnt_21_carry__1_i_5_n_0,cnt_21_carry__1_i_6_n_0,cnt_21_carry__1_i_7_n_0,cnt_21_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__1_i_1
       (.I0(cnt_2[23]),
        .I1(cnt_22[23]),
        .I2(cnt_2[22]),
        .I3(cnt_22[22]),
        .O(cnt_21_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__1_i_2
       (.I0(cnt_2[21]),
        .I1(cnt_22[21]),
        .I2(cnt_2[20]),
        .I3(cnt_22[20]),
        .O(cnt_21_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__1_i_3
       (.I0(cnt_2[19]),
        .I1(cnt_22[19]),
        .I2(cnt_2[18]),
        .I3(cnt_22[18]),
        .O(cnt_21_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__1_i_4
       (.I0(cnt_2[17]),
        .I1(cnt_22[17]),
        .I2(cnt_2[16]),
        .I3(cnt_22[16]),
        .O(cnt_21_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__1_i_5
       (.I0(cnt_22[23]),
        .I1(cnt_2[23]),
        .I2(cnt_22[22]),
        .I3(cnt_2[22]),
        .O(cnt_21_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__1_i_6
       (.I0(cnt_22[21]),
        .I1(cnt_2[21]),
        .I2(cnt_22[20]),
        .I3(cnt_2[20]),
        .O(cnt_21_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__1_i_7
       (.I0(cnt_22[19]),
        .I1(cnt_2[19]),
        .I2(cnt_22[18]),
        .I3(cnt_2[18]),
        .O(cnt_21_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__1_i_8
       (.I0(cnt_22[17]),
        .I1(cnt_2[17]),
        .I2(cnt_22[16]),
        .I3(cnt_2[16]),
        .O(cnt_21_carry__1_i_8_n_0));
  CARRY4 cnt_21_carry__2
       (.CI(cnt_21_carry__1_n_0),
        .CO({cnt_21_carry__2_n_0,cnt_21_carry__2_n_1,cnt_21_carry__2_n_2,cnt_21_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_21_carry__2_i_1_n_0,cnt_21_carry__2_i_2_n_0,cnt_21_carry__2_i_3_n_0,cnt_21_carry__2_i_4_n_0}),
        .O(NLW_cnt_21_carry__2_O_UNCONNECTED[3:0]),
        .S({cnt_21_carry__2_i_5_n_0,cnt_21_carry__2_i_6_n_0,cnt_21_carry__2_i_7_n_0,cnt_21_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__2_i_1
       (.I0(cnt_2[31]),
        .I1(cnt_22[31]),
        .I2(cnt_2[30]),
        .I3(cnt_22[30]),
        .O(cnt_21_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__2_i_2
       (.I0(cnt_2[29]),
        .I1(cnt_22[29]),
        .I2(cnt_2[28]),
        .I3(cnt_22[28]),
        .O(cnt_21_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__2_i_3
       (.I0(cnt_2[27]),
        .I1(cnt_22[27]),
        .I2(cnt_2[26]),
        .I3(cnt_22[26]),
        .O(cnt_21_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry__2_i_4
       (.I0(cnt_2[25]),
        .I1(cnt_22[25]),
        .I2(cnt_2[24]),
        .I3(cnt_22[24]),
        .O(cnt_21_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__2_i_5
       (.I0(cnt_22[31]),
        .I1(cnt_2[31]),
        .I2(cnt_22[30]),
        .I3(cnt_2[30]),
        .O(cnt_21_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__2_i_6
       (.I0(cnt_22[29]),
        .I1(cnt_2[29]),
        .I2(cnt_22[28]),
        .I3(cnt_2[28]),
        .O(cnt_21_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__2_i_7
       (.I0(cnt_22[27]),
        .I1(cnt_2[27]),
        .I2(cnt_22[26]),
        .I3(cnt_2[26]),
        .O(cnt_21_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry__2_i_8
       (.I0(cnt_22[25]),
        .I1(cnt_2[25]),
        .I2(cnt_22[24]),
        .I3(cnt_2[24]),
        .O(cnt_21_carry__2_i_8_n_0));
  CARRY4 cnt_21_carry__3
       (.CI(cnt_21_carry__2_n_0),
        .CO(NLW_cnt_21_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_21_carry__3_O_UNCONNECTED[3:1],cnt_21_carry__3_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry_i_1
       (.I0(cnt_2[7]),
        .I1(cnt_22[7]),
        .I2(cnt_2[6]),
        .I3(cnt_22[6]),
        .O(cnt_21_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry_i_2
       (.I0(cnt_2[5]),
        .I1(cnt_22[5]),
        .I2(cnt_2[4]),
        .I3(cnt_22[4]),
        .O(cnt_21_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    cnt_21_carry_i_3
       (.I0(cnt_2[3]),
        .I1(cnt_22[3]),
        .I2(cnt_2[2]),
        .I3(cnt_22[2]),
        .O(cnt_21_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    cnt_21_carry_i_4
       (.I0(cnt_2[1]),
        .I1(cnt_22[1]),
        .I2(\cnt_1_reg_n_0_[0] ),
        .I3(cnt_2[0]),
        .O(cnt_21_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry_i_5
       (.I0(cnt_22[7]),
        .I1(cnt_2[7]),
        .I2(cnt_22[6]),
        .I3(cnt_2[6]),
        .O(cnt_21_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry_i_6
       (.I0(cnt_22[5]),
        .I1(cnt_2[5]),
        .I2(cnt_22[4]),
        .I3(cnt_2[4]),
        .O(cnt_21_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    cnt_21_carry_i_7
       (.I0(cnt_22[3]),
        .I1(cnt_2[3]),
        .I2(cnt_22[2]),
        .I3(cnt_2[2]),
        .O(cnt_21_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    cnt_21_carry_i_8
       (.I0(cnt_22[1]),
        .I1(cnt_2[1]),
        .I2(\cnt_1_reg_n_0_[0] ),
        .I3(cnt_2[0]),
        .O(cnt_21_carry_i_8_n_0));
  CARRY4 cnt_22_carry
       (.CI(1'b0),
        .CO({cnt_22_carry_n_0,cnt_22_carry_n_1,cnt_22_carry_n_2,cnt_22_carry_n_3}),
        .CYINIT(\cnt_1_reg_n_0_[0] ),
        .DI({\cnt_1_reg_n_0_[4] ,\cnt_1_reg_n_0_[3] ,\cnt_1_reg_n_0_[2] ,\cnt_1_reg_n_0_[1] }),
        .O(cnt_22[4:1]),
        .S({cnt_22_carry_i_1_n_0,cnt_22_carry_i_2_n_0,cnt_22_carry_i_3_n_0,cnt_22_carry_i_4_n_0}));
  CARRY4 cnt_22_carry__0
       (.CI(cnt_22_carry_n_0),
        .CO({cnt_22_carry__0_n_0,cnt_22_carry__0_n_1,cnt_22_carry__0_n_2,cnt_22_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[8] ,\cnt_1_reg_n_0_[7] ,\cnt_1_reg_n_0_[6] ,\cnt_1_reg_n_0_[5] }),
        .O(cnt_22[8:5]),
        .S({cnt_22_carry__0_i_1_n_0,cnt_22_carry__0_i_2_n_0,cnt_22_carry__0_i_3_n_0,cnt_22_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__0_i_1
       (.I0(\cnt_1_reg_n_0_[8] ),
        .O(cnt_22_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__0_i_2
       (.I0(\cnt_1_reg_n_0_[7] ),
        .O(cnt_22_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__0_i_3
       (.I0(\cnt_1_reg_n_0_[6] ),
        .O(cnt_22_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__0_i_4
       (.I0(\cnt_1_reg_n_0_[5] ),
        .O(cnt_22_carry__0_i_4_n_0));
  CARRY4 cnt_22_carry__1
       (.CI(cnt_22_carry__0_n_0),
        .CO({cnt_22_carry__1_n_0,cnt_22_carry__1_n_1,cnt_22_carry__1_n_2,cnt_22_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[12] ,\cnt_1_reg_n_0_[11] ,\cnt_1_reg_n_0_[10] ,\cnt_1_reg_n_0_[9] }),
        .O(cnt_22[12:9]),
        .S({cnt_22_carry__1_i_1_n_0,cnt_22_carry__1_i_2_n_0,cnt_22_carry__1_i_3_n_0,cnt_22_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__1_i_1
       (.I0(\cnt_1_reg_n_0_[12] ),
        .O(cnt_22_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__1_i_2
       (.I0(\cnt_1_reg_n_0_[11] ),
        .O(cnt_22_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__1_i_3
       (.I0(\cnt_1_reg_n_0_[10] ),
        .O(cnt_22_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__1_i_4
       (.I0(\cnt_1_reg_n_0_[9] ),
        .O(cnt_22_carry__1_i_4_n_0));
  CARRY4 cnt_22_carry__2
       (.CI(cnt_22_carry__1_n_0),
        .CO({cnt_22_carry__2_n_0,cnt_22_carry__2_n_1,cnt_22_carry__2_n_2,cnt_22_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[16] ,\cnt_1_reg_n_0_[15] ,\cnt_1_reg_n_0_[14] ,\cnt_1_reg_n_0_[13] }),
        .O(cnt_22[16:13]),
        .S({cnt_22_carry__2_i_1_n_0,cnt_22_carry__2_i_2_n_0,cnt_22_carry__2_i_3_n_0,cnt_22_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__2_i_1
       (.I0(\cnt_1_reg_n_0_[16] ),
        .O(cnt_22_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__2_i_2
       (.I0(\cnt_1_reg_n_0_[15] ),
        .O(cnt_22_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__2_i_3
       (.I0(\cnt_1_reg_n_0_[14] ),
        .O(cnt_22_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__2_i_4
       (.I0(\cnt_1_reg_n_0_[13] ),
        .O(cnt_22_carry__2_i_4_n_0));
  CARRY4 cnt_22_carry__3
       (.CI(cnt_22_carry__2_n_0),
        .CO({cnt_22_carry__3_n_0,cnt_22_carry__3_n_1,cnt_22_carry__3_n_2,cnt_22_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[20] ,\cnt_1_reg_n_0_[19] ,\cnt_1_reg_n_0_[18] ,\cnt_1_reg_n_0_[17] }),
        .O(cnt_22[20:17]),
        .S({cnt_22_carry__3_i_1_n_0,cnt_22_carry__3_i_2_n_0,cnt_22_carry__3_i_3_n_0,cnt_22_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__3_i_1
       (.I0(\cnt_1_reg_n_0_[20] ),
        .O(cnt_22_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__3_i_2
       (.I0(\cnt_1_reg_n_0_[19] ),
        .O(cnt_22_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__3_i_3
       (.I0(\cnt_1_reg_n_0_[18] ),
        .O(cnt_22_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__3_i_4
       (.I0(\cnt_1_reg_n_0_[17] ),
        .O(cnt_22_carry__3_i_4_n_0));
  CARRY4 cnt_22_carry__4
       (.CI(cnt_22_carry__3_n_0),
        .CO({cnt_22_carry__4_n_0,cnt_22_carry__4_n_1,cnt_22_carry__4_n_2,cnt_22_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[24] ,\cnt_1_reg_n_0_[23] ,\cnt_1_reg_n_0_[22] ,\cnt_1_reg_n_0_[21] }),
        .O(cnt_22[24:21]),
        .S({cnt_22_carry__4_i_1_n_0,cnt_22_carry__4_i_2_n_0,cnt_22_carry__4_i_3_n_0,cnt_22_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__4_i_1
       (.I0(\cnt_1_reg_n_0_[24] ),
        .O(cnt_22_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__4_i_2
       (.I0(\cnt_1_reg_n_0_[23] ),
        .O(cnt_22_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__4_i_3
       (.I0(\cnt_1_reg_n_0_[22] ),
        .O(cnt_22_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__4_i_4
       (.I0(\cnt_1_reg_n_0_[21] ),
        .O(cnt_22_carry__4_i_4_n_0));
  CARRY4 cnt_22_carry__5
       (.CI(cnt_22_carry__4_n_0),
        .CO({cnt_22_carry__5_n_0,cnt_22_carry__5_n_1,cnt_22_carry__5_n_2,cnt_22_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\cnt_1_reg_n_0_[28] ,\cnt_1_reg_n_0_[27] ,\cnt_1_reg_n_0_[26] ,\cnt_1_reg_n_0_[25] }),
        .O(cnt_22[28:25]),
        .S({cnt_22_carry__5_i_1_n_0,cnt_22_carry__5_i_2_n_0,cnt_22_carry__5_i_3_n_0,cnt_22_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__5_i_1
       (.I0(\cnt_1_reg_n_0_[28] ),
        .O(cnt_22_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__5_i_2
       (.I0(\cnt_1_reg_n_0_[27] ),
        .O(cnt_22_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__5_i_3
       (.I0(\cnt_1_reg_n_0_[26] ),
        .O(cnt_22_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__5_i_4
       (.I0(\cnt_1_reg_n_0_[25] ),
        .O(cnt_22_carry__5_i_4_n_0));
  CARRY4 cnt_22_carry__6
       (.CI(cnt_22_carry__5_n_0),
        .CO({NLW_cnt_22_carry__6_CO_UNCONNECTED[3:2],cnt_22_carry__6_n_2,cnt_22_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\cnt_1_reg_n_0_[30] ,\cnt_1_reg_n_0_[29] }),
        .O({NLW_cnt_22_carry__6_O_UNCONNECTED[3],cnt_22[31:29]}),
        .S({1'b0,cnt_22_carry__6_i_1_n_0,cnt_22_carry__6_i_2_n_0,cnt_22_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__6_i_1
       (.I0(\cnt_1_reg_n_0_[31] ),
        .O(cnt_22_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__6_i_2
       (.I0(\cnt_1_reg_n_0_[30] ),
        .O(cnt_22_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry__6_i_3
       (.I0(\cnt_1_reg_n_0_[29] ),
        .O(cnt_22_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry_i_1
       (.I0(\cnt_1_reg_n_0_[4] ),
        .O(cnt_22_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry_i_2
       (.I0(\cnt_1_reg_n_0_[3] ),
        .O(cnt_22_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry_i_3
       (.I0(\cnt_1_reg_n_0_[2] ),
        .O(cnt_22_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_22_carry_i_4
       (.I0(\cnt_1_reg_n_0_[1] ),
        .O(cnt_22_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_2[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_2[0]),
        .O(\cnt_2[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__1_n_6),
        .O(cnt_2_0[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__1_n_5),
        .O(cnt_2_0[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__1_n_4),
        .O(cnt_2_0[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__2_n_7),
        .O(cnt_2_0[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__2_n_6),
        .O(cnt_2_0[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__2_n_5),
        .O(cnt_2_0[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__2_n_4),
        .O(cnt_2_0[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__3_n_7),
        .O(cnt_2_0[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__3_n_6),
        .O(cnt_2_0[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__3_n_5),
        .O(cnt_2_0[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry_n_7),
        .O(cnt_2_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__3_n_4),
        .O(cnt_2_0[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__4_n_7),
        .O(cnt_2_0[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__4_n_6),
        .O(cnt_2_0[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__4_n_5),
        .O(cnt_2_0[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__4_n_4),
        .O(cnt_2_0[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__5_n_7),
        .O(cnt_2_0[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__5_n_6),
        .O(cnt_2_0[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__5_n_5),
        .O(cnt_2_0[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__5_n_4),
        .O(cnt_2_0[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__6_n_7),
        .O(cnt_2_0[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry_n_6),
        .O(cnt_2_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__6_n_6),
        .O(cnt_2_0[30]));
  LUT3 #(
    .INIT(8'hF8)) 
    \cnt_2[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_21_carry__3_n_7),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\cnt_2[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__6_n_5),
        .O(cnt_2_0[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry_n_5),
        .O(cnt_2_0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry_n_4),
        .O(cnt_2_0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__0_n_7),
        .O(cnt_2_0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__0_n_6),
        .O(cnt_2_0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__0_n_5),
        .O(cnt_2_0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__0_n_4),
        .O(cnt_2_0[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_2[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(cnt_20_carry__1_n_7),
        .O(cnt_2_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[0] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(\cnt_2[0]_i_1_n_0 ),
        .Q(cnt_2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[10] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[10]),
        .Q(cnt_2[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[11] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[11]),
        .Q(cnt_2[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[12] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[12]),
        .Q(cnt_2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[13] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[13]),
        .Q(cnt_2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[14] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[14]),
        .Q(cnt_2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[15] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[15]),
        .Q(cnt_2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[16] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[16]),
        .Q(cnt_2[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[17] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[17]),
        .Q(cnt_2[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[18] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[18]),
        .Q(cnt_2[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[19] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[19]),
        .Q(cnt_2[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[1] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[1]),
        .Q(cnt_2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[20] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[20]),
        .Q(cnt_2[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[21] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[21]),
        .Q(cnt_2[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[22] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[22]),
        .Q(cnt_2[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[23] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[23]),
        .Q(cnt_2[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[24] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[24]),
        .Q(cnt_2[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[25] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[25]),
        .Q(cnt_2[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[26] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[26]),
        .Q(cnt_2[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[27] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[27]),
        .Q(cnt_2[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[28] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[28]),
        .Q(cnt_2[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[29] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[29]),
        .Q(cnt_2[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[2] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[2]),
        .Q(cnt_2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[30] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[30]),
        .Q(cnt_2[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[31] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[31]),
        .Q(cnt_2[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[3] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[3]),
        .Q(cnt_2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[4] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[4]),
        .Q(cnt_2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[5] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[5]),
        .Q(cnt_2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[6] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[6]),
        .Q(cnt_2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[7] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[7]),
        .Q(cnt_2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[8] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[8]),
        .Q(cnt_2[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_2_reg[9] 
       (.C(CLK),
        .CE(\cnt_2[31]_i_1_n_0 ),
        .D(cnt_2_0[9]),
        .Q(cnt_2[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h002E)) 
    done_i_1
       (.I0(D),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(ps_out_2),
        .I3(SR),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(D),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \result[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[0] ),
        .O(\result[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[10] ),
        .O(\result[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[11] ),
        .O(\result[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[12] ),
        .O(\result[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[13] ),
        .O(\result[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[14] ),
        .O(\result[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[15] ),
        .O(\result[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[16] ),
        .O(\result[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[17] ),
        .O(\result[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[18] ),
        .O(\result[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[19] ),
        .O(\result[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[1] ),
        .O(\result[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[20] ),
        .O(\result[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[21] ),
        .O(\result[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[22] ),
        .O(\result[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[23] ),
        .O(\result[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[24] ),
        .O(\result[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[25] ),
        .O(\result[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[26] ),
        .O(\result[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[27] ),
        .O(\result[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[28] ),
        .O(\result[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[29] ),
        .O(\result[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[2] ),
        .O(\result[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[30] ),
        .O(\result[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \result[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(ps_out_2),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\result[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[31] ),
        .O(\result[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[3] ),
        .O(\result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[4] ),
        .O(\result[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[5] ),
        .O(\result[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[6] ),
        .O(\result[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[7] ),
        .O(\result[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[8] ),
        .O(\result[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\sum_reg_reg_n_0_[9] ),
        .O(\result[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[17]_i_1_n_0 ),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[18]_i_1_n_0 ),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[19]_i_1_n_0 ),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[20]_i_1_n_0 ),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[21]_i_1_n_0 ),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[22]_i_1_n_0 ),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[23]_i_1_n_0 ),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[24]_i_1_n_0 ),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[25]_i_1_n_0 ),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[26]_i_1_n_0 ),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[27]_i_1_n_0 ),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[28]_i_1_n_0 ),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[29]_i_1_n_0 ),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[30]_i_1_n_0 ),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[31]_i_2_n_0 ),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(CLK),
        .CE(\result[31]_i_1_n_0 ),
        .D(\result[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_5_n_0,state1_carry_i_6_n_0,state1_carry_i_7_n_0,state1_carry_i_8_n_0}));
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_5_n_0,state1_carry__0_i_6_n_0,state1_carry__0_i_7_n_0,state1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__0_i_1
       (.I0(\cnt_1_reg_n_0_[15] ),
        .I1(n_IBUF[15]),
        .I2(\cnt_1_reg_n_0_[14] ),
        .I3(n_IBUF[14]),
        .O(state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__0_i_2
       (.I0(\cnt_1_reg_n_0_[13] ),
        .I1(n_IBUF[13]),
        .I2(\cnt_1_reg_n_0_[12] ),
        .I3(n_IBUF[12]),
        .O(state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__0_i_3
       (.I0(\cnt_1_reg_n_0_[11] ),
        .I1(n_IBUF[11]),
        .I2(\cnt_1_reg_n_0_[10] ),
        .I3(n_IBUF[10]),
        .O(state1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__0_i_4
       (.I0(\cnt_1_reg_n_0_[9] ),
        .I1(n_IBUF[9]),
        .I2(\cnt_1_reg_n_0_[8] ),
        .I3(n_IBUF[8]),
        .O(state1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__0_i_5
       (.I0(n_IBUF[15]),
        .I1(\cnt_1_reg_n_0_[15] ),
        .I2(n_IBUF[14]),
        .I3(\cnt_1_reg_n_0_[14] ),
        .O(state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__0_i_6
       (.I0(n_IBUF[13]),
        .I1(\cnt_1_reg_n_0_[13] ),
        .I2(n_IBUF[12]),
        .I3(\cnt_1_reg_n_0_[12] ),
        .O(state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__0_i_7
       (.I0(n_IBUF[11]),
        .I1(\cnt_1_reg_n_0_[11] ),
        .I2(n_IBUF[10]),
        .I3(\cnt_1_reg_n_0_[10] ),
        .O(state1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__0_i_8
       (.I0(n_IBUF[9]),
        .I1(\cnt_1_reg_n_0_[9] ),
        .I2(n_IBUF[8]),
        .I3(\cnt_1_reg_n_0_[8] ),
        .O(state1_carry__0_i_8_n_0));
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({state1_carry__1_i_1_n_0,state1_carry__1_i_2_n_0,state1_carry__1_i_3_n_0,state1_carry__1_i_4_n_0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({state1_carry__1_i_5_n_0,state1_carry__1_i_6_n_0,state1_carry__1_i_7_n_0,state1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__1_i_1
       (.I0(\cnt_1_reg_n_0_[23] ),
        .I1(n_IBUF[23]),
        .I2(\cnt_1_reg_n_0_[22] ),
        .I3(n_IBUF[22]),
        .O(state1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__1_i_2
       (.I0(\cnt_1_reg_n_0_[21] ),
        .I1(n_IBUF[21]),
        .I2(\cnt_1_reg_n_0_[20] ),
        .I3(n_IBUF[20]),
        .O(state1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__1_i_3
       (.I0(\cnt_1_reg_n_0_[19] ),
        .I1(n_IBUF[19]),
        .I2(\cnt_1_reg_n_0_[18] ),
        .I3(n_IBUF[18]),
        .O(state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__1_i_4
       (.I0(\cnt_1_reg_n_0_[17] ),
        .I1(n_IBUF[17]),
        .I2(\cnt_1_reg_n_0_[16] ),
        .I3(n_IBUF[16]),
        .O(state1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__1_i_5
       (.I0(n_IBUF[23]),
        .I1(\cnt_1_reg_n_0_[23] ),
        .I2(n_IBUF[22]),
        .I3(\cnt_1_reg_n_0_[22] ),
        .O(state1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__1_i_6
       (.I0(n_IBUF[21]),
        .I1(\cnt_1_reg_n_0_[21] ),
        .I2(n_IBUF[20]),
        .I3(\cnt_1_reg_n_0_[20] ),
        .O(state1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__1_i_7
       (.I0(n_IBUF[19]),
        .I1(\cnt_1_reg_n_0_[19] ),
        .I2(n_IBUF[18]),
        .I3(\cnt_1_reg_n_0_[18] ),
        .O(state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__1_i_8
       (.I0(n_IBUF[17]),
        .I1(\cnt_1_reg_n_0_[17] ),
        .I2(n_IBUF[16]),
        .I3(\cnt_1_reg_n_0_[16] ),
        .O(state1_carry__1_i_8_n_0));
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({state1_carry__2_n_0,state1_carry__2_n_1,state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({state1_carry__2_i_1_n_0,state1_carry__2_i_2_n_0,state1_carry__2_i_3_n_0,state1_carry__2_i_4_n_0}),
        .O(NLW_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({state1_carry__2_i_5_n_0,state1_carry__2_i_6_n_0,state1_carry__2_i_7_n_0,state1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__2_i_1
       (.I0(\cnt_1_reg_n_0_[31] ),
        .I1(n_IBUF[31]),
        .I2(\cnt_1_reg_n_0_[30] ),
        .I3(n_IBUF[30]),
        .O(state1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__2_i_2
       (.I0(\cnt_1_reg_n_0_[29] ),
        .I1(n_IBUF[29]),
        .I2(\cnt_1_reg_n_0_[28] ),
        .I3(n_IBUF[28]),
        .O(state1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__2_i_3
       (.I0(\cnt_1_reg_n_0_[27] ),
        .I1(n_IBUF[27]),
        .I2(\cnt_1_reg_n_0_[26] ),
        .I3(n_IBUF[26]),
        .O(state1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry__2_i_4
       (.I0(\cnt_1_reg_n_0_[25] ),
        .I1(n_IBUF[25]),
        .I2(\cnt_1_reg_n_0_[24] ),
        .I3(n_IBUF[24]),
        .O(state1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__2_i_5
       (.I0(n_IBUF[31]),
        .I1(\cnt_1_reg_n_0_[31] ),
        .I2(n_IBUF[30]),
        .I3(\cnt_1_reg_n_0_[30] ),
        .O(state1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__2_i_6
       (.I0(n_IBUF[29]),
        .I1(\cnt_1_reg_n_0_[29] ),
        .I2(n_IBUF[28]),
        .I3(\cnt_1_reg_n_0_[28] ),
        .O(state1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__2_i_7
       (.I0(n_IBUF[27]),
        .I1(\cnt_1_reg_n_0_[27] ),
        .I2(n_IBUF[26]),
        .I3(\cnt_1_reg_n_0_[26] ),
        .O(state1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry__2_i_8
       (.I0(n_IBUF[25]),
        .I1(\cnt_1_reg_n_0_[25] ),
        .I2(n_IBUF[24]),
        .I3(\cnt_1_reg_n_0_[24] ),
        .O(state1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry_i_1
       (.I0(\cnt_1_reg_n_0_[7] ),
        .I1(n_IBUF[7]),
        .I2(\cnt_1_reg_n_0_[6] ),
        .I3(n_IBUF[6]),
        .O(state1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry_i_2
       (.I0(\cnt_1_reg_n_0_[5] ),
        .I1(n_IBUF[5]),
        .I2(\cnt_1_reg_n_0_[4] ),
        .I3(n_IBUF[4]),
        .O(state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry_i_3
       (.I0(\cnt_1_reg_n_0_[3] ),
        .I1(n_IBUF[3]),
        .I2(\cnt_1_reg_n_0_[2] ),
        .I3(n_IBUF[2]),
        .O(state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    state1_carry_i_4
       (.I0(\cnt_1_reg_n_0_[1] ),
        .I1(n_IBUF[1]),
        .I2(\cnt_1_reg_n_0_[0] ),
        .I3(n_IBUF[0]),
        .O(state1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry_i_5
       (.I0(n_IBUF[7]),
        .I1(\cnt_1_reg_n_0_[7] ),
        .I2(n_IBUF[6]),
        .I3(\cnt_1_reg_n_0_[6] ),
        .O(state1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry_i_6
       (.I0(n_IBUF[5]),
        .I1(\cnt_1_reg_n_0_[5] ),
        .I2(n_IBUF[4]),
        .I3(\cnt_1_reg_n_0_[4] ),
        .O(state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry_i_7
       (.I0(n_IBUF[3]),
        .I1(\cnt_1_reg_n_0_[3] ),
        .I2(n_IBUF[2]),
        .I3(\cnt_1_reg_n_0_[2] ),
        .O(state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state1_carry_i_8
       (.I0(n_IBUF[1]),
        .I1(\cnt_1_reg_n_0_[1] ),
        .I2(n_IBUF[0]),
        .I3(\cnt_1_reg_n_0_[0] ),
        .O(state1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \sum_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(sum_reg[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[10] ),
        .O(sum_reg[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[11] ),
        .O(sum_reg[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[12] ),
        .O(sum_reg[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[13] ),
        .O(sum_reg[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[14] ),
        .O(sum_reg[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[15] ),
        .O(sum_reg[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[16] ),
        .O(sum_reg[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[17] ),
        .O(sum_reg[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[18] ),
        .O(sum_reg[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[19] ),
        .O(sum_reg[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[1] ),
        .O(sum_reg[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[20] ),
        .O(sum_reg[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[21] ),
        .O(sum_reg[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[22] ),
        .O(sum_reg[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[23] ),
        .O(sum_reg[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[24] ),
        .O(sum_reg[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[25] ),
        .O(sum_reg[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[26] ),
        .O(sum_reg[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[27] ),
        .O(sum_reg[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[28] ),
        .O(sum_reg[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[29] ),
        .O(sum_reg[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[2] ),
        .O(sum_reg[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[30] ),
        .O(sum_reg[30]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sum_reg[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\sum_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[31] ),
        .O(sum_reg[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[3] ),
        .O(sum_reg[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[4] ),
        .O(sum_reg[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[5] ),
        .O(sum_reg[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[6] ),
        .O(sum_reg[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[7] ),
        .O(sum_reg[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[8] ),
        .O(sum_reg[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \sum_reg[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\add_res_reg_reg_n_0_[9] ),
        .O(sum_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[0] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[0]),
        .Q(\sum_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[10] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[10]),
        .Q(\sum_reg_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[11] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[11]),
        .Q(\sum_reg_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[12] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[12]),
        .Q(\sum_reg_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[13] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[13]),
        .Q(\sum_reg_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[14] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[14]),
        .Q(\sum_reg_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[15] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[15]),
        .Q(\sum_reg_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[16] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[16]),
        .Q(\sum_reg_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[17] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[17]),
        .Q(\sum_reg_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[18] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[18]),
        .Q(\sum_reg_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[19] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[19]),
        .Q(\sum_reg_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[1] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[1]),
        .Q(\sum_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[20] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[20]),
        .Q(\sum_reg_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[21] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[21]),
        .Q(\sum_reg_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[22] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[22]),
        .Q(\sum_reg_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[23] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[23]),
        .Q(\sum_reg_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[24] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[24]),
        .Q(\sum_reg_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[25] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[25]),
        .Q(\sum_reg_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[26] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[26]),
        .Q(\sum_reg_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[27] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[27]),
        .Q(\sum_reg_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[28] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[28]),
        .Q(\sum_reg_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[29] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[29]),
        .Q(\sum_reg_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[2] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[2]),
        .Q(\sum_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[30] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[30]),
        .Q(\sum_reg_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[31] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[31]),
        .Q(\sum_reg_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[3] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[3]),
        .Q(\sum_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[4] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[4]),
        .Q(\sum_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[5] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[5]),
        .Q(\sum_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[6] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[6]),
        .Q(\sum_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[7] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[7]),
        .Q(\sum_reg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[8] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[8]),
        .Q(\sum_reg_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sum_reg_reg[9] 
       (.C(CLK),
        .CE(\sum_reg[31]_i_1_n_0 ),
        .D(sum_reg[9]),
        .Q(\sum_reg_reg_n_0_[9] ),
        .R(SR));
endmodule

module pulse_sync
   (SR,
    CLK,
    D);
  output [0:0]SR;
  input CLK;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]SR;
  wire [1:1]p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire ps_out_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(p_1_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    ps_out_i_1
       (.I0(p_1_in),
        .I1(p_0_in_0),
        .O(ps_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ps_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ps_out_i_1_n_0),
        .Q(SR),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pulse_sync" *) 
module pulse_sync_0
   (ps_out_2,
    CLK,
    D);
  output ps_out_2;
  input CLK;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire \FF_sync_reg_n_0_[0] ;
  wire p_0_in;
  wire p_1_in;
  wire ps_out_2;
  wire ps_out_i_1__0_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\FF_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FF_sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    ps_out_i_1__0
       (.I0(p_1_in),
        .I1(p_0_in),
        .O(ps_out_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ps_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ps_out_i_1__0_n_0),
        .Q(ps_out_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pulse_sync" *) 
module pulse_sync_1
   (done_OBUF,
    CLK,
    D);
  output done_OBUF;
  input CLK;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire \FF_sync_reg_n_0_[0] ;
  wire done_OBUF;
  wire p_0_in;
  wire p_1_in;
  wire ps_out_i_1__1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\FF_sync_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FF_sync_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    ps_out_i_1__1
       (.I0(p_1_in),
        .I1(p_0_in),
        .O(ps_out_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ps_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ps_out_i_1__1_n_0),
        .Q(done_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
