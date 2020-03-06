// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Feb 26 16:33:29 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/carlo/Downloads/project_5_2/project_5_2.sim/sim_1/synth/func/BMEM_GCD_SPI_Wrapper_tb_func_synth.v
// Design      : BMEM_GCD_SPI_Wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module BMEM_GCD_SPI_Wrapper
   (btn,
    clk,
    dout);
  input btn;
  input clk;
  output [7:0]dout;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire [4:0]a;
  wire btn;
  wire btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire counter_up;
  wire [4:0]counter_up_reg__0;
  wire \din[7]_i_1_n_0 ;
  wire \din_reg_n_0_[0] ;
  wire \din_reg_n_0_[1] ;
  wire \din_reg_n_0_[2] ;
  wire \din_reg_n_0_[3] ;
  wire \din_reg_n_0_[4] ;
  wire \din_reg_n_0_[5] ;
  wire \din_reg_n_0_[6] ;
  wire \din_reg_n_0_[7] ;
  wire [7:0]dout;
  wire [7:0]dout_OBUF;
  wire gcd_core1_n_0;
  wire gcd_core1_n_1;
  wire gcd_core1_n_2;
  wire [7:0]gcd_result;
  wire [4:0]p_0_in;
  wire rst;
  wire rst_reg_n_0;
  wire [7:0]spo;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT5 #(
    .INIT(32'h00000320)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(btn_IBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(spo[2]),
        .I1(spo[3]),
        .I2(spo[0]),
        .I3(spo[1]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(spo[5]),
        .I1(spo[4]),
        .I2(spo[7]),
        .I3(spo[6]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(gcd_core1_n_1),
        .Q(state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(gcd_core1_n_0),
        .Q(state[2]),
        .R(1'b0));
  IBUF btn_IBUF_inst
       (.I(btn),
        .O(btn_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_up[0]_i_1 
       (.I0(counter_up_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_up[1]_i_1 
       (.I0(counter_up_reg__0[0]),
        .I1(counter_up_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_up[2]_i_1 
       (.I0(counter_up_reg__0[0]),
        .I1(counter_up_reg__0[1]),
        .I2(counter_up_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_up[3]_i_1 
       (.I0(counter_up_reg__0[1]),
        .I1(counter_up_reg__0[0]),
        .I2(counter_up_reg__0[2]),
        .I3(counter_up_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_up[4]_i_1 
       (.I0(counter_up_reg__0[2]),
        .I1(counter_up_reg__0[0]),
        .I2(counter_up_reg__0[1]),
        .I3(counter_up_reg__0[3]),
        .I4(counter_up_reg__0[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_up_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(p_0_in[0]),
        .Q(counter_up_reg__0[0]),
        .R(btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_up_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(p_0_in[1]),
        .Q(counter_up_reg__0[1]),
        .R(btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_up_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(p_0_in[2]),
        .Q(counter_up_reg__0[2]),
        .R(btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_up_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(p_0_in[3]),
        .Q(counter_up_reg__0[3]),
        .R(btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_up_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(p_0_in[4]),
        .Q(counter_up_reg__0[4]),
        .R(btn_IBUF));
  LUT3 #(
    .INIT(8'h01)) 
    \din[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(btn_IBUF),
        .O(\din[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[0]),
        .Q(\din_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[1]),
        .Q(\din_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[2]),
        .Q(\din_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[3]),
        .Q(\din_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[4]),
        .Q(\din_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[5]),
        .Q(\din_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[6]),
        .Q(\din_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\din[7]_i_1_n_0 ),
        .D(spo[7]),
        .Q(\din_reg_n_0_[7] ),
        .R(1'b0));
  OBUF \dout_OBUF[0]_inst 
       (.I(dout_OBUF[0]),
        .O(dout[0]));
  OBUF \dout_OBUF[1]_inst 
       (.I(dout_OBUF[1]),
        .O(dout[1]));
  OBUF \dout_OBUF[2]_inst 
       (.I(dout_OBUF[2]),
        .O(dout[2]));
  OBUF \dout_OBUF[3]_inst 
       (.I(dout_OBUF[3]),
        .O(dout[3]));
  OBUF \dout_OBUF[4]_inst 
       (.I(dout_OBUF[4]),
        .O(dout[4]));
  OBUF \dout_OBUF[5]_inst 
       (.I(dout_OBUF[5]),
        .O(dout[5]));
  OBUF \dout_OBUF[6]_inst 
       (.I(dout_OBUF[6]),
        .O(dout[6]));
  OBUF \dout_OBUF[7]_inst 
       (.I(dout_OBUF[7]),
        .O(dout[7]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[0]),
        .Q(dout_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[1]),
        .Q(dout_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[2]),
        .Q(dout_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[3]),
        .Q(dout_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[4]),
        .Q(dout_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[5]),
        .Q(dout_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[6]),
        .Q(dout_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(gcd_core1_n_2),
        .D(gcd_result[7]),
        .Q(dout_OBUF[7]),
        .R(1'b0));
  gcd_core gcd_core1
       (.D(gcd_result),
        .E(gcd_core1_n_2),
        .\FSM_sequential_state_reg[0] (gcd_core1_n_1),
        .\FSM_sequential_state_reg[2] (gcd_core1_n_0),
        .Q({\din_reg_n_0_[7] ,\din_reg_n_0_[6] ,\din_reg_n_0_[5] ,\din_reg_n_0_[4] ,\din_reg_n_0_[3] ,\din_reg_n_0_[2] ,\din_reg_n_0_[1] ,\din_reg_n_0_[0] }),
        .\bbstub_spo[6] (\FSM_sequential_state[2]_i_2_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(rst_reg_n_0),
        .out(state));
  (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.4" *) 
  mem mem1
       (.a(a),
        .clk(clk_IBUF_BUFG),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .spo(spo),
        .we(1'b0));
  LUT3 #(
    .INIT(8'h70)) 
    mem1_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(counter_up_reg__0[4]),
        .O(a[4]));
  LUT3 #(
    .INIT(8'h70)) 
    mem1_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .I2(counter_up_reg__0[3]),
        .O(a[3]));
  LUT3 #(
    .INIT(8'h70)) 
    mem1_i_3
       (.I0(state[2]),
        .I1(state[1]),
        .I2(counter_up_reg__0[2]),
        .O(a[2]));
  LUT3 #(
    .INIT(8'h70)) 
    mem1_i_4
       (.I0(state[2]),
        .I1(state[1]),
        .I2(counter_up_reg__0[1]),
        .O(a[1]));
  LUT3 #(
    .INIT(8'h70)) 
    mem1_i_5
       (.I0(state[2]),
        .I1(state[1]),
        .I2(counter_up_reg__0[0]),
        .O(a[0]));
  LUT2 #(
    .INIT(4'h1)) 
    rst_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .O(counter_up));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_2
       (.I0(state[1]),
        .O(rst));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(clk_IBUF_BUFG),
        .CE(counter_up),
        .D(rst),
        .Q(rst_reg_n_0),
        .R(btn_IBUF));
endmodule

module dp
   (x0,
    y0,
    CO,
    \dout_reg[0] ,
    D,
    \dout_reg[0]_0 ,
    \FSM_onehot_state_reg[5] ,
    \FSM_onehot_state_reg[6] ,
    p_1_in,
    clk_IBUF_BUFG,
    \FSM_onehot_state_reg[5]_0 ,
    \din_reg[7] ,
    \din_reg[6] ,
    \din_reg[5] ,
    \din_reg[4] ,
    \din_reg[3] ,
    \din_reg[2] ,
    \din_reg[1] ,
    \din_reg[0] );
  output [7:0]x0;
  output [7:0]y0;
  output [0:0]CO;
  output \dout_reg[0] ;
  output [7:0]D;
  output [0:0]\dout_reg[0]_0 ;
  output [0:0]\FSM_onehot_state_reg[5] ;
  input \FSM_onehot_state_reg[6] ;
  input [7:0]p_1_in;
  input clk_IBUF_BUFG;
  input \FSM_onehot_state_reg[5]_0 ;
  input \din_reg[7] ;
  input \din_reg[6] ;
  input \din_reg[5] ;
  input \din_reg[4] ;
  input \din_reg[3] ;
  input \din_reg[2] ;
  input \din_reg[1] ;
  input \din_reg[0] ;

  wire [0:0]CO;
  wire [7:0]D;
  wire \FSM_onehot_state[6]_i_10_n_0 ;
  wire \FSM_onehot_state[6]_i_11_n_0 ;
  wire \FSM_onehot_state[6]_i_12_n_0 ;
  wire \FSM_onehot_state[6]_i_13_n_0 ;
  wire \FSM_onehot_state[6]_i_14_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state[6]_i_8_n_0 ;
  wire \FSM_onehot_state[6]_i_9_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[6] ;
  wire \FSM_onehot_state_reg[6]_i_2_n_1 ;
  wire \FSM_onehot_state_reg[6]_i_2_n_2 ;
  wire \FSM_onehot_state_reg[6]_i_2_n_3 ;
  wire clk_IBUF_BUFG;
  wire \din_reg[0] ;
  wire \din_reg[1] ;
  wire \din_reg[2] ;
  wire \din_reg[3] ;
  wire \din_reg[4] ;
  wire \din_reg[5] ;
  wire \din_reg[6] ;
  wire \din_reg[7] ;
  wire \dout_reg[0] ;
  wire [0:0]\dout_reg[0]_0 ;
  wire [7:0]p_1_in;
  wire [7:0]x;
  wire [7:0]x0;
  wire x0_carry__0_i_1_n_0;
  wire x0_carry__0_i_2_n_0;
  wire x0_carry__0_i_3_n_0;
  wire x0_carry__0_i_4_n_0;
  wire x0_carry__0_n_1;
  wire x0_carry__0_n_2;
  wire x0_carry__0_n_3;
  wire x0_carry_i_1_n_0;
  wire x0_carry_i_2_n_0;
  wire x0_carry_i_3_n_0;
  wire x0_carry_i_4_n_0;
  wire x0_carry_n_0;
  wire x0_carry_n_1;
  wire x0_carry_n_2;
  wire x0_carry_n_3;
  wire \x[7]_i_10_n_0 ;
  wire \x[7]_i_11_n_0 ;
  wire \x[7]_i_4_n_0 ;
  wire \x[7]_i_5_n_0 ;
  wire \x[7]_i_6_n_0 ;
  wire \x[7]_i_7_n_0 ;
  wire \x[7]_i_8_n_0 ;
  wire \x[7]_i_9_n_0 ;
  wire \x_reg[7]_i_3_n_1 ;
  wire \x_reg[7]_i_3_n_2 ;
  wire \x_reg[7]_i_3_n_3 ;
  wire [7:0]y;
  wire [7:0]y0;
  wire y0_carry__0_i_1_n_0;
  wire y0_carry__0_i_2_n_0;
  wire y0_carry__0_i_3_n_0;
  wire y0_carry__0_i_4_n_0;
  wire y0_carry__0_n_1;
  wire y0_carry__0_n_2;
  wire y0_carry__0_n_3;
  wire y0_carry_i_1_n_0;
  wire y0_carry_i_2_n_0;
  wire y0_carry_i_3_n_0;
  wire y0_carry_i_4_n_0;
  wire y0_carry_n_0;
  wire y0_carry_n_1;
  wire y0_carry_n_2;
  wire y0_carry_n_3;
  wire y_diff_x1_carry_i_1_n_0;
  wire y_diff_x1_carry_i_2_n_0;
  wire y_diff_x1_carry_i_3_n_0;
  wire y_diff_x1_carry_i_4_n_0;
  wire y_diff_x1_carry_i_5_n_0;
  wire y_diff_x1_carry_i_6_n_0;
  wire y_diff_x1_carry_i_7_n_0;
  wire y_diff_x1_carry_i_8_n_0;
  wire y_diff_x1_carry_n_1;
  wire y_diff_x1_carry_n_2;
  wire y_diff_x1_carry_n_3;
  wire [3:0]\NLW_FSM_onehot_state_reg[6]_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_x0_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_x_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y_diff_x1_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_10 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(\FSM_onehot_state[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_11 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\FSM_onehot_state[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_12 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\FSM_onehot_state[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_13 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\FSM_onehot_state[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[6]_i_14 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(x[2]),
        .I4(y[1]),
        .I5(x[1]),
        .O(\FSM_onehot_state[6]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state[6]_i_12_n_0 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(\FSM_onehot_state[6]_i_13_n_0 ),
        .I4(\FSM_onehot_state[6]_i_14_n_0 ),
        .O(\dout_reg[0] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_8 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\FSM_onehot_state[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_9 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\FSM_onehot_state[6]_i_9_n_0 ));
  CARRY4 \FSM_onehot_state_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[5] ,\FSM_onehot_state_reg[6]_i_2_n_1 ,\FSM_onehot_state_reg[6]_i_2_n_2 ,\FSM_onehot_state_reg[6]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_onehot_state[6]_i_4_n_0 ,\FSM_onehot_state[6]_i_5_n_0 ,\FSM_onehot_state[6]_i_6_n_0 ,\FSM_onehot_state[6]_i_7_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[6]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[6]_i_8_n_0 ,\FSM_onehot_state[6]_i_9_n_0 ,\FSM_onehot_state[6]_i_10_n_0 ,\FSM_onehot_state[6]_i_11_n_0 }));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[0]_i_1 
       (.I0(y0[0]),
        .I1(x0[0]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[0]),
        .I5(CO),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[1]_i_1 
       (.I0(y0[1]),
        .I1(x0[1]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[1]),
        .I5(CO),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[2]_i_1 
       (.I0(y0[2]),
        .I1(x0[2]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[2]),
        .I5(CO),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[3]_i_1 
       (.I0(y0[3]),
        .I1(x0[3]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[3]),
        .I5(CO),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[4]_i_1 
       (.I0(y0[4]),
        .I1(x0[4]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[4]),
        .I5(CO),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[5]_i_1 
       (.I0(y0[5]),
        .I1(x0[5]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[5]),
        .I5(CO),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[6]_i_1 
       (.I0(y0[6]),
        .I1(x0[6]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[6]),
        .I5(CO),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \dout[7]_i_2 
       (.I0(y0[7]),
        .I1(x0[7]),
        .I2(\dout_reg[0]_0 ),
        .I3(\dout_reg[0] ),
        .I4(x[7]),
        .I5(CO),
        .O(D[7]));
  CARRY4 x0_carry
       (.CI(1'b0),
        .CO({x0_carry_n_0,x0_carry_n_1,x0_carry_n_2,x0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(x[3:0]),
        .O(x0[3:0]),
        .S({x0_carry_i_1_n_0,x0_carry_i_2_n_0,x0_carry_i_3_n_0,x0_carry_i_4_n_0}));
  CARRY4 x0_carry__0
       (.CI(x0_carry_n_0),
        .CO({NLW_x0_carry__0_CO_UNCONNECTED[3],x0_carry__0_n_1,x0_carry__0_n_2,x0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,x[6:4]}),
        .O(x0[7:4]),
        .S({x0_carry__0_i_1_n_0,x0_carry__0_i_2_n_0,x0_carry__0_i_3_n_0,x0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry__0_i_1
       (.I0(x[7]),
        .I1(y[7]),
        .O(x0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry__0_i_2
       (.I0(x[6]),
        .I1(y[6]),
        .O(x0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry__0_i_3
       (.I0(x[5]),
        .I1(y[5]),
        .O(x0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry__0_i_4
       (.I0(x[4]),
        .I1(y[4]),
        .O(x0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry_i_1
       (.I0(x[3]),
        .I1(y[3]),
        .O(x0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry_i_2
       (.I0(x[2]),
        .I1(y[2]),
        .O(x0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry_i_3
       (.I0(x[1]),
        .I1(y[1]),
        .O(x0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    x0_carry_i_4
       (.I0(x[0]),
        .I1(y[0]),
        .O(x0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    \x[7]_i_10 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(\x[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \x[7]_i_11 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\x[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \x[7]_i_4 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(\x[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \x[7]_i_5 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(\x[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \x[7]_i_6 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(\x[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \x[7]_i_7 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(\x[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \x[7]_i_8 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\x[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \x[7]_i_9 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\x[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(x[0]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(x[1]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(x[2]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(x[3]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(x[4]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(x[5]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(x[6]),
        .R(\FSM_onehot_state_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(x[7]),
        .R(\FSM_onehot_state_reg[6] ));
  CARRY4 \x_reg[7]_i_3 
       (.CI(1'b0),
        .CO({\dout_reg[0]_0 ,\x_reg[7]_i_3_n_1 ,\x_reg[7]_i_3_n_2 ,\x_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\x[7]_i_4_n_0 ,\x[7]_i_5_n_0 ,\x[7]_i_6_n_0 ,\x[7]_i_7_n_0 }),
        .O(\NLW_x_reg[7]_i_3_O_UNCONNECTED [3:0]),
        .S({\x[7]_i_8_n_0 ,\x[7]_i_9_n_0 ,\x[7]_i_10_n_0 ,\x[7]_i_11_n_0 }));
  CARRY4 y0_carry
       (.CI(1'b0),
        .CO({y0_carry_n_0,y0_carry_n_1,y0_carry_n_2,y0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(y[3:0]),
        .O(y0[3:0]),
        .S({y0_carry_i_1_n_0,y0_carry_i_2_n_0,y0_carry_i_3_n_0,y0_carry_i_4_n_0}));
  CARRY4 y0_carry__0
       (.CI(y0_carry_n_0),
        .CO({NLW_y0_carry__0_CO_UNCONNECTED[3],y0_carry__0_n_1,y0_carry__0_n_2,y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,y[6:4]}),
        .O(y0[7:4]),
        .S({y0_carry__0_i_1_n_0,y0_carry__0_i_2_n_0,y0_carry__0_i_3_n_0,y0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry__0_i_1
       (.I0(y[7]),
        .I1(x[7]),
        .O(y0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry__0_i_2
       (.I0(y[6]),
        .I1(x[6]),
        .O(y0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry__0_i_3
       (.I0(y[5]),
        .I1(x[5]),
        .O(y0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry__0_i_4
       (.I0(y[4]),
        .I1(x[4]),
        .O(y0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_1
       (.I0(y[3]),
        .I1(x[3]),
        .O(y0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_2
       (.I0(y[2]),
        .I1(x[2]),
        .O(y0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_3
       (.I0(y[1]),
        .I1(x[1]),
        .O(y0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y0_carry_i_4
       (.I0(y[0]),
        .I1(x[0]),
        .O(y0_carry_i_4_n_0));
  CARRY4 y_diff_x1_carry
       (.CI(1'b0),
        .CO({CO,y_diff_x1_carry_n_1,y_diff_x1_carry_n_2,y_diff_x1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_diff_x1_carry_i_1_n_0,y_diff_x1_carry_i_2_n_0,y_diff_x1_carry_i_3_n_0,y_diff_x1_carry_i_4_n_0}),
        .O(NLW_y_diff_x1_carry_O_UNCONNECTED[3:0]),
        .S({y_diff_x1_carry_i_5_n_0,y_diff_x1_carry_i_6_n_0,y_diff_x1_carry_i_7_n_0,y_diff_x1_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    y_diff_x1_carry_i_1
       (.I0(y[6]),
        .I1(x[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(y_diff_x1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    y_diff_x1_carry_i_2
       (.I0(y[4]),
        .I1(x[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(y_diff_x1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    y_diff_x1_carry_i_3
       (.I0(y[2]),
        .I1(x[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(y_diff_x1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    y_diff_x1_carry_i_4
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(y_diff_x1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    y_diff_x1_carry_i_5
       (.I0(y[6]),
        .I1(x[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(y_diff_x1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    y_diff_x1_carry_i_6
       (.I0(y[4]),
        .I1(x[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(y_diff_x1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    y_diff_x1_carry_i_7
       (.I0(y[2]),
        .I1(x[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(y_diff_x1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    y_diff_x1_carry_i_8
       (.I0(y[0]),
        .I1(x[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(y_diff_x1_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[0] ),
        .Q(y[0]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[1] ),
        .Q(y[1]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[2] ),
        .Q(y[2]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[3] ),
        .Q(y[3]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[4] ),
        .Q(y[4]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[5] ),
        .Q(y[5]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[6] ),
        .Q(y[6]),
        .R(\FSM_onehot_state_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\din_reg[7] ),
        .Q(y[7]),
        .R(\FSM_onehot_state_reg[5]_0 ));
endmodule

module fsm
   (\FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0] ,
    \y_reg[0] ,
    \x_reg[0] ,
    E,
    \y_reg[0]_0 ,
    \y_reg[1] ,
    \y_reg[2] ,
    \y_reg[3] ,
    \y_reg[4] ,
    \y_reg[5] ,
    \y_reg[6] ,
    \y_reg[7] ,
    p_1_in,
    \bbstub_spo[6] ,
    out,
    btn_IBUF,
    CO,
    \x_reg[6] ,
    y0,
    Q,
    x0,
    in1,
    clk_IBUF_BUFG,
    \x_reg[3] ,
    \x_reg[6]_0 );
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0] ;
  output \y_reg[0] ;
  output \x_reg[0] ;
  output [0:0]E;
  output \y_reg[0]_0 ;
  output \y_reg[1] ;
  output \y_reg[2] ;
  output \y_reg[3] ;
  output \y_reg[4] ;
  output \y_reg[5] ;
  output \y_reg[6] ;
  output \y_reg[7] ;
  output [7:0]p_1_in;
  input \bbstub_spo[6] ;
  input [2:0]out;
  input btn_IBUF;
  input [0:0]CO;
  input [0:0]\x_reg[6] ;
  input [7:0]y0;
  input [7:0]Q;
  input [7:0]x0;
  input in1;
  input clk_IBUF_BUFG;
  input \x_reg[3] ;
  input [0:0]\x_reg[6]_0 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[2] ;
  wire [7:0]Q;
  wire \bbstub_spo[6] ;
  wire btn_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire done;
  wire in1;
  wire [2:0]out;
  wire [7:0]p_1_in;
  wire state_n_0;
  wire [7:0]x0;
  wire \x_reg[0] ;
  wire \x_reg[3] ;
  wire [0:0]\x_reg[6] ;
  wire [0:0]\x_reg[6]_0 ;
  (* RTL_KEEP = "yes" *) wire xsel;
  wire [7:0]y0;
  wire \y_reg[0] ;
  wire \y_reg[0]_0 ;
  wire \y_reg[1] ;
  wire \y_reg[2] ;
  wire \y_reg[3] ;
  wire \y_reg[4] ;
  wire \y_reg[5] ;
  wire \y_reg[6] ;
  wire \y_reg[7] ;
  (* RTL_KEEP = "yes" *) wire ysel;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(xsel),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(xsel),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(done),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11100010)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(xsel),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(done),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\x_reg[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\x_reg[3] ),
        .I3(xsel),
        .I4(\x_reg[6]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\x_reg[6]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(xsel),
        .I4(\x_reg[3] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(xsel),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(ysel),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(done),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(state_n_0),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(in1));
  LUT6 #(
    .INIT(64'h0000000034330433)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(done),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(\bbstub_spo[6] ),
        .I5(btn_IBUF),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FC34FCF4)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\bbstub_spo[6] ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(done),
        .I5(btn_IBUF),
        .O(\FSM_sequential_state_reg[2] ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \dout[7]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(done),
        .I3(out[2]),
        .I4(btn_IBUF),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFDD)) 
    state
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(xsel),
        .I2(out[2]),
        .I3(out[1]),
        .I4(done),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(state_n_0));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[0]_i_1 
       (.I0(x0[0]),
        .I1(Q[0]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[1]_i_1 
       (.I0(x0[1]),
        .I1(Q[1]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[2]_i_1 
       (.I0(x0[2]),
        .I1(Q[2]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[3]_i_1 
       (.I0(x0[3]),
        .I1(Q[3]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[4]_i_1 
       (.I0(x0[4]),
        .I1(Q[4]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[5]_i_1 
       (.I0(x0[5]),
        .I1(Q[5]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[6]_i_1 
       (.I0(x0[6]),
        .I1(Q[6]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h0E)) 
    \x[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(xsel),
        .I2(\x_reg[6] ),
        .O(\x_reg[0] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[7]_i_2 
       (.I0(x0[7]),
        .I1(Q[7]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[0]_i_1 
       (.I0(y0[0]),
        .I1(Q[0]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[1]_i_1 
       (.I0(y0[1]),
        .I1(Q[1]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[1] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[2]_i_1 
       (.I0(y0[2]),
        .I1(Q[2]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[2] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[3]_i_1 
       (.I0(y0[3]),
        .I1(Q[3]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[3] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[4]_i_1 
       (.I0(y0[4]),
        .I1(Q[4]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[4] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[5]_i_1 
       (.I0(y0[5]),
        .I1(Q[5]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[5] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[6]_i_1 
       (.I0(y0[6]),
        .I1(Q[6]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[6] ));
  LUT3 #(
    .INIT(8'h0E)) 
    \y[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(ysel),
        .I2(CO),
        .O(\y_reg[0] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[7]_i_2 
       (.I0(y0[7]),
        .I1(Q[7]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[7] ));
endmodule

module gcd_core
   (\FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0] ,
    E,
    D,
    \bbstub_spo[6] ,
    out,
    btn_IBUF,
    clk_IBUF_BUFG,
    in1,
    Q);
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  output [7:0]D;
  input \bbstub_spo[6] ;
  input [2:0]out;
  input btn_IBUF;
  input clk_IBUF_BUFG;
  input in1;
  input [7:0]Q;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[2] ;
  wire [7:0]Q;
  wire \bbstub_spo[6] ;
  wire btn_IBUF;
  wire clk_IBUF_BUFG;
  wire dp1_n_16;
  wire dp1_n_17;
  wire dp1_n_26;
  wire fsm1_n_10;
  wire fsm1_n_11;
  wire fsm1_n_12;
  wire fsm1_n_2;
  wire fsm1_n_3;
  wire fsm1_n_5;
  wire fsm1_n_6;
  wire fsm1_n_7;
  wire fsm1_n_8;
  wire fsm1_n_9;
  wire in1;
  wire [2:0]out;
  wire [7:0]p_1_in;
  wire [7:0]x0;
  wire x_gt_y;
  wire [7:0]y0;

  dp dp1
       (.CO(dp1_n_16),
        .D(D),
        .\FSM_onehot_state_reg[5] (x_gt_y),
        .\FSM_onehot_state_reg[5]_0 (fsm1_n_2),
        .\FSM_onehot_state_reg[6] (fsm1_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\din_reg[0] (fsm1_n_5),
        .\din_reg[1] (fsm1_n_6),
        .\din_reg[2] (fsm1_n_7),
        .\din_reg[3] (fsm1_n_8),
        .\din_reg[4] (fsm1_n_9),
        .\din_reg[5] (fsm1_n_10),
        .\din_reg[6] (fsm1_n_11),
        .\din_reg[7] (fsm1_n_12),
        .\dout_reg[0] (dp1_n_17),
        .\dout_reg[0]_0 (dp1_n_26),
        .p_1_in(p_1_in),
        .x0(x0),
        .y0(y0));
  fsm fsm1
       (.CO(dp1_n_16),
        .E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .Q(Q),
        .\bbstub_spo[6] (\bbstub_spo[6] ),
        .btn_IBUF(btn_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(in1),
        .out(out),
        .p_1_in(p_1_in),
        .x0(x0),
        .\x_reg[0] (fsm1_n_3),
        .\x_reg[3] (dp1_n_17),
        .\x_reg[6] (dp1_n_26),
        .\x_reg[6]_0 (x_gt_y),
        .y0(y0),
        .\y_reg[0] (fsm1_n_2),
        .\y_reg[0]_0 (fsm1_n_5),
        .\y_reg[1] (fsm1_n_6),
        .\y_reg[2] (fsm1_n_7),
        .\y_reg[3] (fsm1_n_8),
        .\y_reg[4] (fsm1_n_9),
        .\y_reg[5] (fsm1_n_10),
        .\y_reg[6] (fsm1_n_11),
        .\y_reg[7] (fsm1_n_12));
endmodule

(* CHECK_LICENSE_TYPE = "mem,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2016.4" *) 
module mem
   (a,
    d,
    clk,
    we,
    spo);
  input [4:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [4:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "zynq" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  mem_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule

(* C_ADDR_WIDTH = "5" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "32" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "zynq" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "mem.mif" *) (* C_MEM_TYPE = "1" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_11" *) 
module mem_dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [4:0]a;
  input [7:0]d;
  input [4:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [4:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mem_dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_11_synth" *) 
module mem_dist_mem_gen_v8_0_11_synth
   (spo,
    clk,
    d,
    we,
    a);
  output [7:0]spo;
  input clk;
  input [7:0]d;
  input we;
  input [4:0]a;

  wire [4:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;

  mem_spram \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module mem_spram
   (spo,
    clk,
    d,
    we,
    a);
  output [7:0]spo;
  input clk;
  input [7:0]d;
  input we;
  input [4:0]a;

  wire [4:0]a;
  wire clk;
  wire [7:0]d;
  (* RTL_KEEP = "true" *) wire [7:0]qspo_int;
  wire [7:0]spo;
  wire we;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[0]),
        .Q(qspo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[1]),
        .Q(qspo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[2]),
        .Q(qspo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[3]),
        .Q(qspo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[4]),
        .Q(qspo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[5]),
        .Q(qspo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[6]),
        .Q(qspo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[7]),
        .Q(qspo_int[7]),
        .R(1'b0));
  RAM32X1S #(
    .INIT(32'h000085AB)) 
    ram_reg_0_31_0_0
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[0]),
        .O(spo[0]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h00008BEB)) 
    ram_reg_0_31_1_1
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[1]),
        .O(spo[1]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h00004282)) 
    ram_reg_0_31_2_2
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[2]),
        .O(spo[2]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h0000F545)) 
    ram_reg_0_31_3_3
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[3]),
        .O(spo[3]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h00009565)) 
    ram_reg_0_31_4_4
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[4]),
        .O(spo[4]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h0000FC8E)) 
    ram_reg_0_31_5_5
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[5]),
        .O(spo[5]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h00009874)) 
    ram_reg_0_31_6_6
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[6]),
        .O(spo[6]),
        .WCLK(clk),
        .WE(we));
  RAM32X1S #(
    .INIT(32'h00007AEF)) 
    ram_reg_0_31_7_7
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .D(d[7]),
        .O(spo[7]),
        .WCLK(clk),
        .WE(we));
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
