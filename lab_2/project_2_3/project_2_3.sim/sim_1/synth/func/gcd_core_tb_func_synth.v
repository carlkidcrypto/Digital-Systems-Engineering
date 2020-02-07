// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Feb 05 23:29:15 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/carlo/Downloads/lab_2/project_2_3/project_2_3.sim/sim_1/synth/func/gcd_core_tb_func_synth.v
// Design      : gcd_core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dp
   (diff_x_y,
    Q,
    diff_y_x,
    CO,
    \state_reg[0] ,
    E,
    D,
    CLK,
    \state_reg[0]_0 ,
    \state_reg[1] );
  output [7:0]diff_x_y;
  output [7:0]Q;
  output [7:0]diff_y_x;
  output [0:0]CO;
  output \state_reg[0] ;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]\state_reg[0]_0 ;
  input [7:0]\state_reg[1] ;

  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]diff_x_y;
  wire diff_x_y_carry__0_i_1_n_0;
  wire diff_x_y_carry__0_i_2_n_0;
  wire diff_x_y_carry__0_i_3_n_0;
  wire diff_x_y_carry__0_i_4_n_0;
  wire diff_x_y_carry__0_n_1;
  wire diff_x_y_carry__0_n_2;
  wire diff_x_y_carry__0_n_3;
  wire diff_x_y_carry_i_1_n_0;
  wire diff_x_y_carry_i_2_n_0;
  wire diff_x_y_carry_i_3_n_0;
  wire diff_x_y_carry_i_4_n_0;
  wire diff_x_y_carry_n_0;
  wire diff_x_y_carry_n_1;
  wire diff_x_y_carry_n_2;
  wire diff_x_y_carry_n_3;
  wire [7:0]diff_y_x;
  wire diff_y_x_carry__0_i_1_n_0;
  wire diff_y_x_carry__0_i_2_n_0;
  wire diff_y_x_carry__0_i_3_n_0;
  wire diff_y_x_carry__0_i_4_n_0;
  wire diff_y_x_carry__0_n_1;
  wire diff_y_x_carry__0_n_2;
  wire diff_y_x_carry__0_n_3;
  wire diff_y_x_carry_i_1_n_0;
  wire diff_y_x_carry_i_2_n_0;
  wire diff_y_x_carry_i_3_n_0;
  wire diff_y_x_carry_i_4_n_0;
  wire diff_y_x_carry_n_0;
  wire diff_y_x_carry_n_1;
  wire diff_y_x_carry_n_2;
  wire diff_y_x_carry_n_3;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire [7:0]\state_reg[1] ;
  wire x_gt_y_carry_i_1_n_0;
  wire x_gt_y_carry_i_2_n_0;
  wire x_gt_y_carry_i_3_n_0;
  wire x_gt_y_carry_i_4_n_0;
  wire x_gt_y_carry_i_5_n_0;
  wire x_gt_y_carry_i_6_n_0;
  wire x_gt_y_carry_i_7_n_0;
  wire x_gt_y_carry_i_8_n_0;
  wire x_gt_y_carry_n_1;
  wire x_gt_y_carry_n_2;
  wire x_gt_y_carry_n_3;
  wire [7:0]y;
  wire [3:3]NLW_diff_x_y_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_diff_y_x_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_x_gt_y_carry_O_UNCONNECTED;

  CARRY4 diff_x_y_carry
       (.CI(1'b0),
        .CO({diff_x_y_carry_n_0,diff_x_y_carry_n_1,diff_x_y_carry_n_2,diff_x_y_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(diff_x_y[3:0]),
        .S({diff_x_y_carry_i_1_n_0,diff_x_y_carry_i_2_n_0,diff_x_y_carry_i_3_n_0,diff_x_y_carry_i_4_n_0}));
  CARRY4 diff_x_y_carry__0
       (.CI(diff_x_y_carry_n_0),
        .CO({NLW_diff_x_y_carry__0_CO_UNCONNECTED[3],diff_x_y_carry__0_n_1,diff_x_y_carry__0_n_2,diff_x_y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O(diff_x_y[7:4]),
        .S({diff_x_y_carry__0_i_1_n_0,diff_x_y_carry__0_i_2_n_0,diff_x_y_carry__0_i_3_n_0,diff_x_y_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_1
       (.I0(y[7]),
        .I1(Q[7]),
        .O(diff_x_y_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_2
       (.I0(y[6]),
        .I1(Q[6]),
        .O(diff_x_y_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_3
       (.I0(y[5]),
        .I1(Q[5]),
        .O(diff_x_y_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_4
       (.I0(y[4]),
        .I1(Q[4]),
        .O(diff_x_y_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_1
       (.I0(y[3]),
        .I1(Q[3]),
        .O(diff_x_y_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_2
       (.I0(y[2]),
        .I1(Q[2]),
        .O(diff_x_y_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_3
       (.I0(y[1]),
        .I1(Q[1]),
        .O(diff_x_y_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_4
       (.I0(y[0]),
        .I1(Q[0]),
        .O(diff_x_y_carry_i_4_n_0));
  CARRY4 diff_y_x_carry
       (.CI(1'b0),
        .CO({diff_y_x_carry_n_0,diff_y_x_carry_n_1,diff_y_x_carry_n_2,diff_y_x_carry_n_3}),
        .CYINIT(1'b1),
        .DI(y[3:0]),
        .O(diff_y_x[3:0]),
        .S({diff_y_x_carry_i_1_n_0,diff_y_x_carry_i_2_n_0,diff_y_x_carry_i_3_n_0,diff_y_x_carry_i_4_n_0}));
  CARRY4 diff_y_x_carry__0
       (.CI(diff_y_x_carry_n_0),
        .CO({NLW_diff_y_x_carry__0_CO_UNCONNECTED[3],diff_y_x_carry__0_n_1,diff_y_x_carry__0_n_2,diff_y_x_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,y[6:4]}),
        .O(diff_y_x[7:4]),
        .S({diff_y_x_carry__0_i_1_n_0,diff_y_x_carry__0_i_2_n_0,diff_y_x_carry__0_i_3_n_0,diff_y_x_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_1
       (.I0(y[7]),
        .I1(Q[7]),
        .O(diff_y_x_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_2
       (.I0(y[6]),
        .I1(Q[6]),
        .O(diff_y_x_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_3
       (.I0(y[5]),
        .I1(Q[5]),
        .O(diff_y_x_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_4
       (.I0(y[4]),
        .I1(Q[4]),
        .O(diff_y_x_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_1
       (.I0(y[3]),
        .I1(Q[3]),
        .O(diff_y_x_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_2
       (.I0(y[2]),
        .I1(Q[2]),
        .O(diff_y_x_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_3
       (.I0(y[1]),
        .I1(Q[1]),
        .O(diff_y_x_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_4
       (.I0(y[0]),
        .I1(Q[0]),
        .O(diff_y_x_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFFFFF)) 
    \state[2]_i_3 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state[2]_i_5_n_0 ),
        .I2(y[6]),
        .I3(Q[6]),
        .I4(\state[2]_i_6_n_0 ),
        .I5(\state[2]_i_7_n_0 ),
        .O(\state_reg[0] ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_4 
       (.I0(y[5]),
        .I1(Q[5]),
        .I2(y[4]),
        .I3(Q[4]),
        .O(\state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \state[2]_i_5 
       (.I0(Q[7]),
        .I1(y[7]),
        .O(\state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_6 
       (.I0(y[3]),
        .I1(Q[3]),
        .I2(y[2]),
        .I3(Q[2]),
        .O(\state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_7 
       (.I0(y[1]),
        .I1(Q[1]),
        .I2(y[0]),
        .I3(Q[0]),
        .O(\state[2]_i_7_n_0 ));
  CARRY4 x_gt_y_carry
       (.CI(1'b0),
        .CO({CO,x_gt_y_carry_n_1,x_gt_y_carry_n_2,x_gt_y_carry_n_3}),
        .CYINIT(1'b1),
        .DI({x_gt_y_carry_i_1_n_0,x_gt_y_carry_i_2_n_0,x_gt_y_carry_i_3_n_0,x_gt_y_carry_i_4_n_0}),
        .O(NLW_x_gt_y_carry_O_UNCONNECTED[3:0]),
        .S({x_gt_y_carry_i_5_n_0,x_gt_y_carry_i_6_n_0,x_gt_y_carry_i_7_n_0,x_gt_y_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h40F4)) 
    x_gt_y_carry_i_1
       (.I0(y[6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(y[7]),
        .O(x_gt_y_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    x_gt_y_carry_i_2
       (.I0(Q[5]),
        .I1(y[5]),
        .I2(Q[4]),
        .I3(y[4]),
        .O(x_gt_y_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    x_gt_y_carry_i_3
       (.I0(Q[3]),
        .I1(y[3]),
        .I2(Q[2]),
        .I3(y[2]),
        .O(x_gt_y_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    x_gt_y_carry_i_4
       (.I0(Q[1]),
        .I1(y[1]),
        .I2(Q[0]),
        .I3(y[0]),
        .O(x_gt_y_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_5
       (.I0(y[7]),
        .I1(Q[7]),
        .I2(y[6]),
        .I3(Q[6]),
        .O(x_gt_y_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_6
       (.I0(y[5]),
        .I1(Q[5]),
        .I2(y[4]),
        .I3(Q[4]),
        .O(x_gt_y_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_7
       (.I0(y[3]),
        .I1(Q[3]),
        .I2(y[2]),
        .I3(Q[2]),
        .O(x_gt_y_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_8
       (.I0(y[1]),
        .I1(Q[1]),
        .I2(y[0]),
        .I3(Q[0]),
        .O(x_gt_y_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [0]),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [1]),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [2]),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [3]),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [4]),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [5]),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [6]),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(CLK),
        .CE(\state_reg[0]_0 ),
        .D(\state_reg[1] [7]),
        .Q(y[7]),
        .R(1'b0));
endmodule

module fsm
   (\y_reg[7] ,
    \y_reg[7]_0 ,
    D,
    E,
    done_OBUF,
    CO,
    \y_reg[6] ,
    load_IBUF,
    din_IBUF,
    diff_y_x,
    diff_x_y,
    rst_IBUF,
    CLK);
  output [7:0]\y_reg[7] ;
  output [0:0]\y_reg[7]_0 ;
  output [7:0]D;
  output [0:0]E;
  output done_OBUF;
  input [0:0]CO;
  input \y_reg[6] ;
  input load_IBUF;
  input [7:0]din_IBUF;
  input [7:0]diff_y_x;
  input [7:0]diff_x_y;
  input rst_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire [7:0]din_IBUF;
  wire done_OBUF;
  wire load_IBUF;
  wire rst_IBUF;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \y_reg[6] ;
  wire [7:0]\y_reg[7] ;
  wire [0:0]\y_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    done_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(done_OBUF));
  LUT6 #(
    .INIT(64'h000000002222E666)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(CO),
        .I3(state[1]),
        .I4(state[2]),
        .I5(rst_IBUF),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222E6AA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(CO),
        .I3(state[0]),
        .I4(state[2]),
        .I5(rst_IBUF),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000026222222)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(CO),
        .I3(state[1]),
        .I4(state[0]),
        .I5(rst_IBUF),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFBFFFFFFFF0)) 
    \state[2]_i_2 
       (.I0(CO),
        .I1(\y_reg[6] ),
        .I2(state[1]),
        .I3(load_IBUF),
        .I4(state[2]),
        .I5(state[0]),
        .O(\state[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[0]_i_1 
       (.I0(diff_x_y[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[1]_i_1 
       (.I0(diff_x_y[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[2]_i_1 
       (.I0(diff_x_y[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[3]_i_1 
       (.I0(diff_x_y[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[4]_i_1 
       (.I0(diff_x_y[4]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[5]_i_1 
       (.I0(diff_x_y[5]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[6]_i_1 
       (.I0(diff_x_y[6]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \x[7]_i_1 
       (.I0(state[1]),
        .I1(CO),
        .I2(state[0]),
        .I3(state[2]),
        .O(E));
  LUT5 #(
    .INIT(32'hAABAAA8A)) 
    \x[7]_i_2 
       (.I0(diff_x_y[7]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(din_IBUF[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[0]_i_1 
       (.I0(din_IBUF[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[0]),
        .O(\y_reg[7] [0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[1]_i_1 
       (.I0(din_IBUF[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[1]),
        .O(\y_reg[7] [1]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[2]_i_1 
       (.I0(din_IBUF[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[2]),
        .O(\y_reg[7] [2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[3]_i_1 
       (.I0(din_IBUF[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[3]),
        .O(\y_reg[7] [3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[4]_i_1 
       (.I0(din_IBUF[4]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[4]),
        .O(\y_reg[7] [4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[5]_i_1 
       (.I0(din_IBUF[5]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[5]),
        .O(\y_reg[7] [5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[6]_i_1 
       (.I0(din_IBUF[6]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[6]),
        .O(\y_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1030)) 
    \y[7]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(CO),
        .O(\y_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \y[7]_i_2 
       (.I0(din_IBUF[7]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(diff_y_x[7]),
        .O(\y_reg[7] [7]));
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
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire [7:0]din;
  wire [7:0]din_IBUF;
  wire done;
  wire done_OBUF;
  wire dp1_n_25;
  wire fsm1_n_0;
  wire fsm1_n_1;
  wire fsm1_n_10;
  wire fsm1_n_11;
  wire fsm1_n_12;
  wire fsm1_n_13;
  wire fsm1_n_14;
  wire fsm1_n_15;
  wire fsm1_n_16;
  wire fsm1_n_2;
  wire fsm1_n_3;
  wire fsm1_n_4;
  wire fsm1_n_5;
  wire fsm1_n_6;
  wire fsm1_n_7;
  wire fsm1_n_9;
  wire [7:0]gcd_result;
  wire [7:0]gcd_result_OBUF;
  wire load;
  wire load_IBUF;
  wire rst;
  wire rst_IBUF;
  wire x_gt_y;
  wire xload;
  wire yload;

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
       (.I(done_OBUF),
        .O(done));
  dp dp1
       (.CLK(clk_IBUF_BUFG),
        .CO(x_gt_y),
        .D({fsm1_n_9,fsm1_n_10,fsm1_n_11,fsm1_n_12,fsm1_n_13,fsm1_n_14,fsm1_n_15,fsm1_n_16}),
        .E(xload),
        .Q(gcd_result_OBUF),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .\state_reg[0] (dp1_n_25),
        .\state_reg[0]_0 (yload),
        .\state_reg[1] ({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}));
  fsm fsm1
       (.CLK(clk_IBUF_BUFG),
        .CO(x_gt_y),
        .D({fsm1_n_9,fsm1_n_10,fsm1_n_11,fsm1_n_12,fsm1_n_13,fsm1_n_14,fsm1_n_15,fsm1_n_16}),
        .E(xload),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .din_IBUF(din_IBUF),
        .done_OBUF(done_OBUF),
        .load_IBUF(load_IBUF),
        .rst_IBUF(rst_IBUF),
        .\y_reg[6] (dp1_n_25),
        .\y_reg[7] ({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}),
        .\y_reg[7]_0 (yload));
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
