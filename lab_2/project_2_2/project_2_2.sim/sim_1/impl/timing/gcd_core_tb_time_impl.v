// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Jan 30 22:10:51 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/carlo/OneDrive - University of
//               Idaho/UofI_19-20/Spring_2020/ECE_440/lab_2/project_2_2/project_2_2.sim/sim_1/impl/timing/gcd_core_tb_time_impl.v}
// Design      : gcd_core
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module dp
   (Q,
    x_eq_y,
    in2,
    E,
    CLK,
    \FSM_onehot_state_reg[1] ,
    din_IBUF,
    out);
  output [7:0]Q;
  output x_eq_y;
  output [0:0]in2;
  input [0:0]E;
  input CLK;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input [7:0]din_IBUF;
  input [2:0]out;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [7:0]Q;
  wire [7:0]diff;
  wire [6:0]diff0;
  wire diff_carry__0_i_4_n_0;
  wire diff_carry__0_i_5_n_0;
  wire diff_carry__0_i_6_n_0;
  wire diff_carry__0_i_7_n_0;
  wire diff_carry_i_5_n_0;
  wire diff_carry_i_6_n_0;
  wire diff_carry_i_7_n_0;
  wire diff_carry_i_8_n_0;
  wire diff_carry_n_0;
  wire [7:0]din_IBUF;
  wire [0:0]in2;
  wire [2:0]out;
  wire [7:0]p_0_in;
  wire x_eq_y;
  wire x_gt_y_carry_i_1_n_0;
  wire x_gt_y_carry_i_2_n_0;
  wire x_gt_y_carry_i_3_n_0;
  wire x_gt_y_carry_i_4_n_0;
  wire x_gt_y_carry_i_5_n_0;
  wire x_gt_y_carry_i_6_n_0;
  wire x_gt_y_carry_i_7_n_0;
  wire x_gt_y_carry_i_8_n_0;
  wire [7:0]y;
  wire \y[0]_i_1_n_0 ;
  wire \y[1]_i_1_n_0 ;
  wire \y[2]_i_1_n_0 ;
  wire \y[3]_i_1_n_0 ;
  wire \y[4]_i_1_n_0 ;
  wire \y[5]_i_1_n_0 ;
  wire \y[6]_i_1_n_0 ;
  wire \y[7]_i_2_n_0 ;
  wire [2:0]NLW_diff_carry_CO_UNCONNECTED;
  wire [3:0]NLW_diff_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_x_gt_y_carry_CO_UNCONNECTED;
  wire [3:0]NLW_x_gt_y_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h41000000)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state[6]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(y[3]),
        .I3(\FSM_onehot_state[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state[6]_i_5_n_0 ),
        .O(x_eq_y));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(Q[6]),
        .I1(y[6]),
        .I2(Q[7]),
        .I3(y[7]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(Q[4]),
        .I1(y[4]),
        .I2(Q[5]),
        .I3(y[5]),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(Q[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(Q[2]),
        .I4(y[1]),
        .I5(Q[1]),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  CARRY4 diff_carry
       (.CI(1'b0),
        .CO({diff_carry_n_0,NLW_diff_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(diff0[3:0]),
        .O(diff[3:0]),
        .S({diff_carry_i_5_n_0,diff_carry_i_6_n_0,diff_carry_i_7_n_0,diff_carry_i_8_n_0}));
  CARRY4 diff_carry__0
       (.CI(diff_carry_n_0),
        .CO(NLW_diff_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,diff0[6:4]}),
        .O(diff[7:4]),
        .S({diff_carry__0_i_4_n_0,diff_carry__0_i_5_n_0,diff_carry__0_i_6_n_0,diff_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry__0_i_1
       (.I0(y[6]),
        .I1(Q[6]),
        .I2(out[2]),
        .O(diff0[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry__0_i_2
       (.I0(y[5]),
        .I1(Q[5]),
        .I2(out[2]),
        .O(diff0[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry__0_i_3
       (.I0(y[4]),
        .I1(Q[4]),
        .I2(out[2]),
        .O(diff0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry__0_i_4
       (.I0(y[7]),
        .I1(Q[7]),
        .O(diff_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry__0_i_5
       (.I0(y[6]),
        .I1(Q[6]),
        .O(diff_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry__0_i_6
       (.I0(y[5]),
        .I1(Q[5]),
        .O(diff_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry__0_i_7
       (.I0(y[4]),
        .I1(Q[4]),
        .O(diff_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry_i_1
       (.I0(y[3]),
        .I1(Q[3]),
        .I2(out[2]),
        .O(diff0[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry_i_2
       (.I0(y[2]),
        .I1(Q[2]),
        .I2(out[2]),
        .O(diff0[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry_i_3
       (.I0(y[1]),
        .I1(Q[1]),
        .I2(out[2]),
        .O(diff0[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    diff_carry_i_4
       (.I0(y[0]),
        .I1(Q[0]),
        .I2(out[2]),
        .O(diff0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry_i_5
       (.I0(y[3]),
        .I1(Q[3]),
        .O(diff_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry_i_6
       (.I0(y[2]),
        .I1(Q[2]),
        .O(diff_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry_i_7
       (.I0(y[1]),
        .I1(Q[1]),
        .O(diff_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_carry_i_8
       (.I0(y[0]),
        .I1(Q[0]),
        .O(diff_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[0]_i_1 
       (.I0(din_IBUF[0]),
        .I1(diff[0]),
        .I2(out[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[1]_i_1 
       (.I0(din_IBUF[1]),
        .I1(diff[1]),
        .I2(out[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[2]_i_1 
       (.I0(din_IBUF[2]),
        .I1(diff[2]),
        .I2(out[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[3]_i_1 
       (.I0(din_IBUF[3]),
        .I1(diff[3]),
        .I2(out[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[4]_i_1 
       (.I0(din_IBUF[4]),
        .I1(diff[4]),
        .I2(out[0]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[5]_i_1 
       (.I0(din_IBUF[5]),
        .I1(diff[5]),
        .I2(out[0]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[6]_i_1 
       (.I0(din_IBUF[6]),
        .I1(diff[6]),
        .I2(out[0]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \x[7]_i_2 
       (.I0(din_IBUF[7]),
        .I1(diff[7]),
        .I2(out[0]),
        .O(p_0_in[7]));
  CARRY4 x_gt_y_carry
       (.CI(1'b0),
        .CO({in2,NLW_x_gt_y_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({x_gt_y_carry_i_1_n_0,x_gt_y_carry_i_2_n_0,x_gt_y_carry_i_3_n_0,x_gt_y_carry_i_4_n_0}),
        .O(NLW_x_gt_y_carry_O_UNCONNECTED[3:0]),
        .S({x_gt_y_carry_i_5_n_0,x_gt_y_carry_i_6_n_0,x_gt_y_carry_i_7_n_0,x_gt_y_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_1
       (.I0(Q[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(Q[7]),
        .O(x_gt_y_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_2
       (.I0(Q[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(Q[5]),
        .O(x_gt_y_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_3
       (.I0(Q[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(Q[3]),
        .O(x_gt_y_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_4
       (.I0(Q[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(Q[1]),
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
       (.I0(Q[4]),
        .I1(y[4]),
        .I2(Q[5]),
        .I3(y[5]),
        .O(x_gt_y_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_7
       (.I0(Q[2]),
        .I1(y[2]),
        .I2(Q[3]),
        .I3(y[3]),
        .O(x_gt_y_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_8
       (.I0(Q[0]),
        .I1(y[0]),
        .I2(Q[1]),
        .I3(y[1]),
        .O(x_gt_y_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(CLK),
        .CE(\FSM_onehot_state_reg[1] ),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[0]_i_1 
       (.I0(din_IBUF[0]),
        .I1(diff[0]),
        .I2(out[1]),
        .O(\y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[1]_i_1 
       (.I0(din_IBUF[1]),
        .I1(diff[1]),
        .I2(out[1]),
        .O(\y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[2]_i_1 
       (.I0(din_IBUF[2]),
        .I1(diff[2]),
        .I2(out[1]),
        .O(\y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[3]_i_1 
       (.I0(din_IBUF[3]),
        .I1(diff[3]),
        .I2(out[1]),
        .O(\y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[4]_i_1 
       (.I0(din_IBUF[4]),
        .I1(diff[4]),
        .I2(out[1]),
        .O(\y[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[5]_i_1 
       (.I0(din_IBUF[5]),
        .I1(diff[5]),
        .I2(out[1]),
        .O(\y[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[6]_i_1 
       (.I0(din_IBUF[6]),
        .I1(diff[6]),
        .I2(out[1]),
        .O(\y[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \y[7]_i_2 
       (.I0(din_IBUF[7]),
        .I1(diff[7]),
        .I2(out[1]),
        .O(\y[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\y[0]_i_1_n_0 ),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\y[1]_i_1_n_0 ),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\y[2]_i_1_n_0 ),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\y[3]_i_1_n_0 ),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\y[4]_i_1_n_0 ),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\y[5]_i_1_n_0 ),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\y[6]_i_1_n_0 ),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\y[7]_i_2_n_0 ),
        .Q(y[7]),
        .R(1'b0));
endmodule

module fsm
   (out,
    E,
    \x_reg[7] ,
    in1,
    in0,
    load_IBUF,
    x_eq_y,
    in2);
  output [3:0]out;
  output [0:0]E;
  output [0:0]\x_reg[7] ;
  input in1;
  input in0;
  input load_IBUF;
  input x_eq_y;
  input [0:0]in2;

  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  wire in0;
  wire in1;
  wire [0:0]in2;
  wire load_IBUF;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire state_n_0;
  wire x_eq_y;
  wire [0:0]\x_reg[7] ;

  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(out[2]),
        .I3(out[0]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(out[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(out[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(out[0]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(out[0]),
        .I2(x_eq_y),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(x_eq_y),
        .I3(out[0]),
        .I4(in2),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(in2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(out[0]),
        .I4(x_eq_y),
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
        .Q(out[0]),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(out[1]),
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
        .Q(out[2]),
        .R(in1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(in0),
        .CE(state_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(out[3]),
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
        .I1(out[0]),
        .I2(load_IBUF),
        .I3(out[2]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(state_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \x[7]_i_1 
       (.I0(out[0]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\x_reg[7] ));
  LUT2 #(
    .INIT(4'hE)) 
    \y[7]_i_1 
       (.I0(out[1]),
        .I1(out[3]),
        .O(E));
endmodule

(* ECO_CHECKSUM = "d4601fe2" *) 
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
  wire fsm1_n_1;
  wire [7:0]gcd_result;
  wire [7:0]gcd_result_OBUF;
  wire load;
  wire load_IBUF;
  wire rst;
  wire rst_IBUF;
  wire sub_sel;
  wire x_eq_y;
  wire x_gt_y;
  wire xload;
  wire xsel;
  wire yload;
  wire ysel;

initial begin
 $sdf_annotate("gcd_core_tb_time_impl.sdf",,,,"tool_control");
end
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
       (.I(fsm1_n_1),
        .O(done));
  dp dp1
       (.CLK(clk_IBUF_BUFG),
        .E(yload),
        .\FSM_onehot_state_reg[1] (xload),
        .Q(gcd_result_OBUF),
        .din_IBUF(din_IBUF),
        .in2(x_gt_y),
        .out({sub_sel,ysel,xsel}),
        .x_eq_y(x_eq_y));
  fsm fsm1
       (.E(yload),
        .in0(clk_IBUF_BUFG),
        .in1(rst_IBUF),
        .in2(x_gt_y),
        .load_IBUF(load_IBUF),
        .out({sub_sel,fsm1_n_1,ysel,xsel}),
        .x_eq_y(x_eq_y),
        .\x_reg[7] (xload));
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
