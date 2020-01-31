// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Jan 30 23:02:18 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/carlo/OneDrive - University of
//               Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.sim/sim_1/synth/func/tb_func_synth.v}
// Design      : gcd_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dp
   (x0,
    y0,
    CO,
    gcd_result_OBUF,
    \x_reg[0]_0 ,
    \FSM_onehot_state_reg[6] ,
    \FSM_onehot_state_reg[6]_0 ,
    \FSM_onehot_state_reg[6]_1 ,
    p_1_in,
    clk_IBUF_BUFG,
    \FSM_onehot_state_reg[5] ,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_state_reg[2]_3 ,
    \FSM_onehot_state_reg[2]_4 ,
    \FSM_onehot_state_reg[2]_5 ,
    \FSM_onehot_state_reg[2]_6 );
  output [7:0]x0;
  output [7:0]y0;
  output [0:0]CO;
  output [7:0]gcd_result_OBUF;
  output [0:0]\x_reg[0]_0 ;
  output \FSM_onehot_state_reg[6] ;
  output [0:0]\FSM_onehot_state_reg[6]_0 ;
  input \FSM_onehot_state_reg[6]_1 ;
  input [7:0]p_1_in;
  input clk_IBUF_BUFG;
  input \FSM_onehot_state_reg[5] ;
  input \FSM_onehot_state_reg[2] ;
  input \FSM_onehot_state_reg[2]_0 ;
  input \FSM_onehot_state_reg[2]_1 ;
  input \FSM_onehot_state_reg[2]_2 ;
  input \FSM_onehot_state_reg[2]_3 ;
  input \FSM_onehot_state_reg[2]_4 ;
  input \FSM_onehot_state_reg[2]_5 ;
  input \FSM_onehot_state_reg[2]_6 ;

  wire [0:0]CO;
  wire \FSM_onehot_state[6]_i_10_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_6_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state[6]_i_8_n_0 ;
  wire \FSM_onehot_state[6]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire \FSM_onehot_state_reg[2]_4 ;
  wire \FSM_onehot_state_reg[2]_5 ;
  wire \FSM_onehot_state_reg[2]_6 ;
  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[6] ;
  wire [0:0]\FSM_onehot_state_reg[6]_0 ;
  wire \FSM_onehot_state_reg[6]_1 ;
  wire \FSM_onehot_state_reg[6]_i_2_n_1 ;
  wire \FSM_onehot_state_reg[6]_i_2_n_2 ;
  wire \FSM_onehot_state_reg[6]_i_2_n_3 ;
  wire clk_IBUF_BUFG;
  wire [7:0]gcd_result_OBUF;
  wire \gcd_result_OBUF[7]_inst_i_10_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_11_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_12_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_13_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_14_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_2_n_1 ;
  wire \gcd_result_OBUF[7]_inst_i_2_n_2 ;
  wire \gcd_result_OBUF[7]_inst_i_2_n_3 ;
  wire \gcd_result_OBUF[7]_inst_i_4_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_5_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_6_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_7_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_8_n_0 ;
  wire \gcd_result_OBUF[7]_inst_i_9_n_0 ;
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
  wire [0:0]\x_reg[0]_0 ;
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
  wire [3:0]\NLW_gcd_result_OBUF[7]_inst_i_2_O_UNCONNECTED ;
  wire [3:3]NLW_x0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_y0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y_diff_x1_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_10 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\FSM_onehot_state[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(\FSM_onehot_state[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_8 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\FSM_onehot_state[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_9 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(\FSM_onehot_state[6]_i_9_n_0 ));
  CARRY4 \FSM_onehot_state_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[6]_0 ,\FSM_onehot_state_reg[6]_i_2_n_1 ,\FSM_onehot_state_reg[6]_i_2_n_2 ,\FSM_onehot_state_reg[6]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_onehot_state[6]_i_3_n_0 ,\FSM_onehot_state[6]_i_4_n_0 ,\FSM_onehot_state[6]_i_5_n_0 ,\FSM_onehot_state[6]_i_6_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[6]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[6]_i_7_n_0 ,\FSM_onehot_state[6]_i_8_n_0 ,\FSM_onehot_state[6]_i_9_n_0 ,\FSM_onehot_state[6]_i_10_n_0 }));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[0]_inst_i_1 
       (.I0(y0[0]),
        .I1(x0[0]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[0]),
        .I5(CO),
        .O(gcd_result_OBUF[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[1]_inst_i_1 
       (.I0(y0[1]),
        .I1(x0[1]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[1]),
        .I5(CO),
        .O(gcd_result_OBUF[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[2]_inst_i_1 
       (.I0(y0[2]),
        .I1(x0[2]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[2]),
        .I5(CO),
        .O(gcd_result_OBUF[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[3]_inst_i_1 
       (.I0(y0[3]),
        .I1(x0[3]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[3]),
        .I5(CO),
        .O(gcd_result_OBUF[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[4]_inst_i_1 
       (.I0(y0[4]),
        .I1(x0[4]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[4]),
        .I5(CO),
        .O(gcd_result_OBUF[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[5]_inst_i_1 
       (.I0(y0[5]),
        .I1(x0[5]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[5]),
        .I5(CO),
        .O(gcd_result_OBUF[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[6]_inst_i_1 
       (.I0(y0[6]),
        .I1(x0[6]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[6]),
        .I5(CO),
        .O(gcd_result_OBUF[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC0C0C0)) 
    \gcd_result_OBUF[7]_inst_i_1 
       (.I0(y0[7]),
        .I1(x0[7]),
        .I2(\x_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(x[7]),
        .I5(CO),
        .O(gcd_result_OBUF[7]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_10 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(\gcd_result_OBUF[7]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_11 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(\gcd_result_OBUF[7]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_12 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\gcd_result_OBUF[7]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_13 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\gcd_result_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gcd_result_OBUF[7]_inst_i_14 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(x[2]),
        .I4(y[1]),
        .I5(x[1]),
        .O(\gcd_result_OBUF[7]_inst_i_14_n_0 ));
  CARRY4 \gcd_result_OBUF[7]_inst_i_2 
       (.CI(1'b0),
        .CO({\x_reg[0]_0 ,\gcd_result_OBUF[7]_inst_i_2_n_1 ,\gcd_result_OBUF[7]_inst_i_2_n_2 ,\gcd_result_OBUF[7]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\gcd_result_OBUF[7]_inst_i_4_n_0 ,\gcd_result_OBUF[7]_inst_i_5_n_0 ,\gcd_result_OBUF[7]_inst_i_6_n_0 ,\gcd_result_OBUF[7]_inst_i_7_n_0 }),
        .O(\NLW_gcd_result_OBUF[7]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({\gcd_result_OBUF[7]_inst_i_8_n_0 ,\gcd_result_OBUF[7]_inst_i_9_n_0 ,\gcd_result_OBUF[7]_inst_i_10_n_0 ,\gcd_result_OBUF[7]_inst_i_11_n_0 }));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gcd_result_OBUF[7]_inst_i_3 
       (.I0(\gcd_result_OBUF[7]_inst_i_12_n_0 ),
        .I1(x[3]),
        .I2(y[3]),
        .I3(\gcd_result_OBUF[7]_inst_i_13_n_0 ),
        .I4(\gcd_result_OBUF[7]_inst_i_14_n_0 ),
        .O(\FSM_onehot_state_reg[6] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gcd_result_OBUF[7]_inst_i_4 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(\gcd_result_OBUF[7]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gcd_result_OBUF[7]_inst_i_5 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(\gcd_result_OBUF[7]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gcd_result_OBUF[7]_inst_i_6 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(\gcd_result_OBUF[7]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \gcd_result_OBUF[7]_inst_i_7 
       (.I0(x[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(\gcd_result_OBUF[7]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_8 
       (.I0(x[6]),
        .I1(y[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(\gcd_result_OBUF[7]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gcd_result_OBUF[7]_inst_i_9 
       (.I0(x[4]),
        .I1(y[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(\gcd_result_OBUF[7]_inst_i_9_n_0 ));
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
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(x[0]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(x[1]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(x[2]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(x[3]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(x[4]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(x[5]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(x[6]),
        .R(\FSM_onehot_state_reg[6]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(x[7]),
        .R(\FSM_onehot_state_reg[6]_1 ));
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
        .D(\FSM_onehot_state_reg[2]_6 ),
        .Q(y[0]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_5 ),
        .Q(y[1]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_4 ),
        .Q(y[2]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_3 ),
        .Q(y[3]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_2 ),
        .Q(y[4]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_1 ),
        .Q(y[5]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_0 ),
        .Q(y[6]),
        .R(\FSM_onehot_state_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2] ),
        .Q(y[7]),
        .R(\FSM_onehot_state_reg[5] ));
endmodule

module fsm
   (p_1_in,
    \y_reg[0] ,
    \y_reg[1] ,
    \y_reg[2] ,
    \y_reg[3] ,
    \y_reg[4] ,
    \y_reg[5] ,
    \y_reg[6] ,
    \y_reg[7] ,
    \y_reg[0]_0 ,
    \x_reg[0] ,
    out0,
    x0,
    din_IBUF,
    y0,
    CO,
    \x_reg[6] ,
    in1,
    in0,
    load_IBUF,
    \x_reg[6]_0 ,
    \x_reg[3] );
  output [7:0]p_1_in;
  output \y_reg[0] ;
  output \y_reg[1] ;
  output \y_reg[2] ;
  output \y_reg[3] ;
  output \y_reg[4] ;
  output \y_reg[5] ;
  output \y_reg[6] ;
  output \y_reg[7] ;
  output \y_reg[0]_0 ;
  output \x_reg[0] ;
  output out0;
  input [7:0]x0;
  input [7:0]din_IBUF;
  input [7:0]y0;
  input [0:0]CO;
  input [0:0]\x_reg[6] ;
  input in1;
  input in0;
  input load_IBUF;
  input [0:0]\x_reg[6]_0 ;
  input \x_reg[3] ;

  wire [0:0]CO;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [7:0]din_IBUF;
  wire in0;
  wire in1;
  wire load_IBUF;
  (* RTL_KEEP = "yes" *) wire out0;
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

  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(out0),
        .I3(xsel),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(xsel),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(out0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(xsel),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(xsel),
        .I2(\x_reg[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
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
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(xsel),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(ysel),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(out0),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(in1));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    state
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(xsel),
        .I2(load_IBUF),
        .I3(out0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(state_n_0));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[0]_i_1 
       (.I0(x0[0]),
        .I1(din_IBUF[0]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[1]_i_1 
       (.I0(x0[1]),
        .I1(din_IBUF[1]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[2]_i_1 
       (.I0(x0[2]),
        .I1(din_IBUF[2]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[3]_i_1 
       (.I0(x0[3]),
        .I1(din_IBUF[3]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[4]_i_1 
       (.I0(x0[4]),
        .I1(din_IBUF[4]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[5]_i_1 
       (.I0(x0[5]),
        .I1(din_IBUF[5]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \x[6]_i_1 
       (.I0(x0[6]),
        .I1(din_IBUF[6]),
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
        .I1(din_IBUF[7]),
        .I2(xsel),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[0]_i_1 
       (.I0(y0[0]),
        .I1(din_IBUF[0]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[0] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[1]_i_1 
       (.I0(y0[1]),
        .I1(din_IBUF[1]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[1] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[2]_i_1 
       (.I0(y0[2]),
        .I1(din_IBUF[2]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[2] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[3]_i_1 
       (.I0(y0[3]),
        .I1(din_IBUF[3]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[3] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[4]_i_1 
       (.I0(y0[4]),
        .I1(din_IBUF[4]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[4] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[5]_i_1 
       (.I0(y0[5]),
        .I1(din_IBUF[5]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[5] ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[6]_i_1 
       (.I0(y0[6]),
        .I1(din_IBUF[6]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[6] ));
  LUT3 #(
    .INIT(8'h0E)) 
    \y[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(ysel),
        .I2(CO),
        .O(\y_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \y[7]_i_2 
       (.I0(y0[7]),
        .I1(din_IBUF[7]),
        .I2(ysel),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\y_reg[7] ));
endmodule

(* NotValidForBitStream *)
module gcd_core
   (clk,
    rst,
    load,
    din,
    gcd_result,
    done);
  input clk;
  input rst;
  input load;
  input [7:0]din;
  output [7:0]gcd_result;
  output done;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire done;
  wire dp1_n_16;
  wire dp1_n_25;
  wire dp1_n_26;
  wire fsm1_n_10;
  wire fsm1_n_11;
  wire fsm1_n_12;
  wire fsm1_n_13;
  wire fsm1_n_14;
  wire fsm1_n_15;
  wire fsm1_n_16;
  wire fsm1_n_17;
  wire fsm1_n_18;
  wire fsm1_n_8;
  wire fsm1_n_9;
  wire [7:0]gcd_result;
  wire [7:0]gcd_result_OBUF;
  wire load;
  wire load_IBUF;
  wire [7:0]p_1_in;
  wire rst;
  wire rst_IBUF;
  wire [7:0]x0;
  wire x_gt_y;
  wire [7:0]y0;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \din_IBUF[0]_inst 
       (.I(din[0]),
        .O(din_IBUF[0]));
  IBUF \din_IBUF[1]_inst 
       (.I(din[1]),
        .O(din_IBUF[1]));
  IBUF \din_IBUF[2]_inst 
       (.I(din[2]),
        .O(din_IBUF[2]));
  IBUF \din_IBUF[3]_inst 
       (.I(din[3]),
        .O(din_IBUF[3]));
  IBUF \din_IBUF[4]_inst 
       (.I(din[4]),
        .O(din_IBUF[4]));
  IBUF \din_IBUF[5]_inst 
       (.I(din[5]),
        .O(din_IBUF[5]));
  IBUF \din_IBUF[6]_inst 
       (.I(din[6]),
        .O(din_IBUF[6]));
  IBUF \din_IBUF[7]_inst 
       (.I(din[7]),
        .O(din_IBUF[7]));
  OBUF done_OBUF_inst
       (.I(fsm1_n_18),
        .O(done));
  dp dp1
       (.CO(dp1_n_16),
        .\FSM_onehot_state_reg[2] (fsm1_n_15),
        .\FSM_onehot_state_reg[2]_0 (fsm1_n_14),
        .\FSM_onehot_state_reg[2]_1 (fsm1_n_13),
        .\FSM_onehot_state_reg[2]_2 (fsm1_n_12),
        .\FSM_onehot_state_reg[2]_3 (fsm1_n_11),
        .\FSM_onehot_state_reg[2]_4 (fsm1_n_10),
        .\FSM_onehot_state_reg[2]_5 (fsm1_n_9),
        .\FSM_onehot_state_reg[2]_6 (fsm1_n_8),
        .\FSM_onehot_state_reg[5] (fsm1_n_16),
        .\FSM_onehot_state_reg[6] (dp1_n_26),
        .\FSM_onehot_state_reg[6]_0 (x_gt_y),
        .\FSM_onehot_state_reg[6]_1 (fsm1_n_17),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .gcd_result_OBUF(gcd_result_OBUF),
        .p_1_in(p_1_in),
        .x0(x0),
        .\x_reg[0]_0 (dp1_n_25),
        .y0(y0));
  fsm fsm1
       (.CO(dp1_n_16),
        .din_IBUF(din_IBUF),
        .in0(clk_IBUF_BUFG),
        .in1(rst_IBUF),
        .load_IBUF(load_IBUF),
        .out0(fsm1_n_18),
        .p_1_in(p_1_in),
        .x0(x0),
        .\x_reg[0] (fsm1_n_17),
        .\x_reg[3] (dp1_n_26),
        .\x_reg[6] (dp1_n_25),
        .\x_reg[6]_0 (x_gt_y),
        .y0(y0),
        .\y_reg[0] (fsm1_n_8),
        .\y_reg[0]_0 (fsm1_n_16),
        .\y_reg[1] (fsm1_n_9),
        .\y_reg[2] (fsm1_n_10),
        .\y_reg[3] (fsm1_n_11),
        .\y_reg[4] (fsm1_n_12),
        .\y_reg[5] (fsm1_n_13),
        .\y_reg[6] (fsm1_n_14),
        .\y_reg[7] (fsm1_n_15));
  OBUF \gcd_result_OBUF[0]_inst 
       (.I(gcd_result_OBUF[0]),
        .O(gcd_result[0]));
  OBUF \gcd_result_OBUF[1]_inst 
       (.I(gcd_result_OBUF[1]),
        .O(gcd_result[1]));
  OBUF \gcd_result_OBUF[2]_inst 
       (.I(gcd_result_OBUF[2]),
        .O(gcd_result[2]));
  OBUF \gcd_result_OBUF[3]_inst 
       (.I(gcd_result_OBUF[3]),
        .O(gcd_result[3]));
  OBUF \gcd_result_OBUF[4]_inst 
       (.I(gcd_result_OBUF[4]),
        .O(gcd_result[4]));
  OBUF \gcd_result_OBUF[5]_inst 
       (.I(gcd_result_OBUF[5]),
        .O(gcd_result[5]));
  OBUF \gcd_result_OBUF[6]_inst 
       (.I(gcd_result_OBUF[6]),
        .O(gcd_result[6]));
  OBUF \gcd_result_OBUF[7]_inst 
       (.I(gcd_result_OBUF[7]),
        .O(gcd_result[7]));
  IBUF load_IBUF_inst
       (.I(load),
        .O(load_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
