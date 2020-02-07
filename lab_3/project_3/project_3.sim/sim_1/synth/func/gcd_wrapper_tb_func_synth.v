// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Feb 06 21:46:53 2020
// Host        : DESKTOP-4INRPJ4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/carlo/Downloads/lab_3/project_3/project_3.sim/sim_1/synth/func/gcd_wrapper_tb_func_synth.v
// Design      : gcd_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module debounce
   (E,
    \lfsr_reg[1]_0 ,
    D,
    \d_temp_reg[7] ,
    CLK,
    Q,
    btn_IBUF);
  output [0:0]E;
  output [0:0]\lfsr_reg[1]_0 ;
  output [2:0]D;
  output [1:0]\d_temp_reg[7] ;
  input CLK;
  input [2:0]Q;
  input [1:0]btn_IBUF;

  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]btn_IBUF;
  wire [1:0]\d_temp_reg[7] ;
  wire [1:9]lfsr;
  wire \lfsr[1]_i_1_n_0 ;
  wire [0:0]\lfsr_reg[1]_0 ;
  wire load_deb;
  wire load_deb0;
  wire \load_deb0/i__n_0 ;
  wire load_deb_i_1_n_0;
  wire load_deb_i_3_n_0;
  wire load_sreg;
  wire \load_sreg[9]_i_2_n_0 ;
  wire \load_sreg_reg_n_0_[0] ;
  wire \load_sreg_reg_n_0_[1] ;
  wire \load_sreg_reg_n_0_[2] ;
  wire \load_sreg_reg_n_0_[3] ;
  wire \load_sreg_reg_n_0_[4] ;
  wire \load_sreg_reg_n_0_[5] ;
  wire \load_sreg_reg_n_0_[6] ;
  wire \load_sreg_reg_n_0_[7] ;
  wire \load_sreg_reg_n_0_[8] ;
  wire \load_sreg_reg_n_0_[9] ;
  wire [0:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001400)) 
    \d_temp[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(load_deb),
        .I4(\lfsr_reg[1]_0 ),
        .O(\d_temp_reg[7] [0]));
  LUT6 #(
    .INIT(64'h000000000000E400)) 
    \d_temp[7]_i_1 
       (.I0(Q[1]),
        .I1(btn_IBUF[0]),
        .I2(load_deb),
        .I3(Q[0]),
        .I4(\lfsr_reg[1]_0 ),
        .I5(Q[2]),
        .O(\d_temp_reg[7] [1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \din[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\lfsr_reg[1]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr[1]_i_1 
       (.I0(lfsr[5]),
        .I1(lfsr[9]),
        .O(\lfsr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\lfsr[1]_i_1_n_0 ),
        .Q(lfsr[1]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[1]),
        .Q(lfsr[2]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[2]),
        .Q(lfsr[3]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[3]),
        .Q(lfsr[4]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[4]),
        .Q(lfsr[5]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[5]),
        .Q(lfsr[6]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[6]),
        .Q(lfsr[7]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[7]),
        .Q(lfsr[8]),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(lfsr[8]),
        .Q(lfsr[9]),
        .R(\lfsr_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \load_deb0/i_ 
       (.I0(\load_sreg_reg_n_0_[1] ),
        .I1(\load_sreg_reg_n_0_[8] ),
        .I2(\load_sreg_reg_n_0_[0] ),
        .I3(\load_sreg_reg_n_0_[3] ),
        .I4(\load_sreg_reg_n_0_[2] ),
        .O(\load_deb0/i__n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    load_deb_i_1
       (.I0(\load_deb0/i__n_0 ),
        .I1(\load_sreg_reg_n_0_[7] ),
        .I2(\load_sreg_reg_n_0_[6] ),
        .I3(\load_sreg_reg_n_0_[5] ),
        .I4(\load_sreg_reg_n_0_[4] ),
        .I5(load_deb0),
        .O(load_deb_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    load_deb_i_2
       (.I0(\lfsr_reg[1]_0 ),
        .I1(lfsr[1]),
        .I2(\load_sreg[9]_i_2_n_0 ),
        .I3(lfsr[3]),
        .I4(lfsr[2]),
        .I5(load_deb_i_3_n_0),
        .O(load_deb0));
  LUT2 #(
    .INIT(4'hE)) 
    load_deb_i_3
       (.I0(lfsr[4]),
        .I1(lfsr[5]),
        .O(load_deb_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    load_deb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(load_deb_i_1_n_0),
        .Q(load_deb),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \load_sreg[9]_i_1 
       (.I0(lfsr[2]),
        .I1(\load_sreg[9]_i_2_n_0 ),
        .I2(lfsr[3]),
        .I3(lfsr[1]),
        .I4(lfsr[5]),
        .I5(lfsr[4]),
        .O(load_sreg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \load_sreg[9]_i_2 
       (.I0(lfsr[7]),
        .I1(lfsr[6]),
        .I2(lfsr[9]),
        .I3(lfsr[8]),
        .O(\load_sreg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[0] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[1] ),
        .Q(\load_sreg_reg_n_0_[0] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[1] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[2] ),
        .Q(\load_sreg_reg_n_0_[1] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[2] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[3] ),
        .Q(\load_sreg_reg_n_0_[2] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[3] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[4] ),
        .Q(\load_sreg_reg_n_0_[3] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[4] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[5] ),
        .Q(\load_sreg_reg_n_0_[4] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[5] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[6] ),
        .Q(\load_sreg_reg_n_0_[5] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[6] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[7] ),
        .Q(\load_sreg_reg_n_0_[6] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[7] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[8] ),
        .Q(\load_sreg_reg_n_0_[7] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[8] 
       (.C(CLK),
        .CE(load_sreg),
        .D(\load_sreg_reg_n_0_[9] ),
        .Q(\load_sreg_reg_n_0_[8] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \load_sreg_reg[9] 
       (.C(CLK),
        .CE(load_sreg),
        .D(btn_IBUF[1]),
        .Q(\load_sreg_reg_n_0_[9] ),
        .R(\lfsr_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_sreg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\lfsr_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_sreg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(btn_IBUF[0]),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h010D3F00)) 
    \state[0]_i_1 
       (.I0(btn_IBUF[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(load_deb),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007C4C)) 
    \state[1]_i_1 
       (.I0(load_deb),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(btn_IBUF[0]),
        .I4(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0830)) 
    \state[2]_i_1 
       (.I0(load_deb),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(D[2]));
endmodule

module dp
   (diff_x_y,
    diff_y_x,
    CO,
    \state_reg[2] ,
    \led[0] ,
    led_OBUF,
    state,
    sw_IBUF,
    E,
    D,
    CLK,
    \state_reg[2]_0 ,
    \din_reg[7] );
  output [7:0]diff_x_y;
  output [7:0]diff_y_x;
  output [0:0]CO;
  output \state_reg[2] ;
  output \led[0] ;
  output [2:0]led_OBUF;
  input [2:0]state;
  input [1:0]sw_IBUF;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]\state_reg[2]_0 ;
  input [7:0]\din_reg[7] ;

  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
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
  wire [7:0]\din_reg[7] ;
  wire [7:0]gcd_result;
  wire \led[0] ;
  wire [2:0]led_OBUF;
  wire [2:0]state;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state_reg[2] ;
  wire [0:0]\state_reg[2]_0 ;
  wire [1:0]sw_IBUF;
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
        .DI(gcd_result[3:0]),
        .O(diff_x_y[3:0]),
        .S({diff_x_y_carry_i_1_n_0,diff_x_y_carry_i_2_n_0,diff_x_y_carry_i_3_n_0,diff_x_y_carry_i_4_n_0}));
  CARRY4 diff_x_y_carry__0
       (.CI(diff_x_y_carry_n_0),
        .CO({NLW_diff_x_y_carry__0_CO_UNCONNECTED[3],diff_x_y_carry__0_n_1,diff_x_y_carry__0_n_2,diff_x_y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gcd_result[6:4]}),
        .O(diff_x_y[7:4]),
        .S({diff_x_y_carry__0_i_1_n_0,diff_x_y_carry__0_i_2_n_0,diff_x_y_carry__0_i_3_n_0,diff_x_y_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_1
       (.I0(gcd_result[7]),
        .I1(y[7]),
        .O(diff_x_y_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_2
       (.I0(gcd_result[6]),
        .I1(y[6]),
        .O(diff_x_y_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_3
       (.I0(gcd_result[5]),
        .I1(y[5]),
        .O(diff_x_y_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_4
       (.I0(gcd_result[4]),
        .I1(y[4]),
        .O(diff_x_y_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_1
       (.I0(gcd_result[3]),
        .I1(y[3]),
        .O(diff_x_y_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_2
       (.I0(gcd_result[2]),
        .I1(y[2]),
        .O(diff_x_y_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_3
       (.I0(gcd_result[1]),
        .I1(y[1]),
        .O(diff_x_y_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_4
       (.I0(gcd_result[0]),
        .I1(y[0]),
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
        .I1(gcd_result[7]),
        .O(diff_y_x_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_2
       (.I0(y[6]),
        .I1(gcd_result[6]),
        .O(diff_y_x_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_3
       (.I0(y[5]),
        .I1(gcd_result[5]),
        .O(diff_y_x_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_4
       (.I0(y[4]),
        .I1(gcd_result[4]),
        .O(diff_y_x_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_1
       (.I0(y[3]),
        .I1(gcd_result[3]),
        .O(diff_y_x_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_2
       (.I0(y[2]),
        .I1(gcd_result[2]),
        .O(diff_y_x_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_3
       (.I0(y[1]),
        .I1(gcd_result[1]),
        .O(diff_y_x_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_4
       (.I0(y[0]),
        .I1(gcd_result[0]),
        .O(diff_y_x_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hABFB)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(sw_IBUF[1]),
        .I1(gcd_result[0]),
        .I2(sw_IBUF[0]),
        .I3(gcd_result[4]),
        .O(\led[0] ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(gcd_result[1]),
        .I1(sw_IBUF[0]),
        .I2(gcd_result[5]),
        .I3(sw_IBUF[1]),
        .O(led_OBUF[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(gcd_result[2]),
        .I1(sw_IBUF[0]),
        .I2(gcd_result[6]),
        .I3(sw_IBUF[1]),
        .O(led_OBUF[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(gcd_result[3]),
        .I1(sw_IBUF[0]),
        .I2(gcd_result[7]),
        .I3(sw_IBUF[1]),
        .O(led_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80FFFFFF)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\state[2]_i_4_n_0 ),
        .I2(\state[2]_i_5_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(\state_reg[2] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_3 
       (.I0(gcd_result[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(gcd_result[2]),
        .I4(y[1]),
        .I5(gcd_result[1]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_4 
       (.I0(gcd_result[3]),
        .I1(y[3]),
        .I2(y[5]),
        .I3(gcd_result[5]),
        .I4(y[4]),
        .I5(gcd_result[4]),
        .O(\state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_5 
       (.I0(gcd_result[6]),
        .I1(y[6]),
        .I2(gcd_result[7]),
        .I3(y[7]),
        .O(\state[2]_i_5_n_0 ));
  CARRY4 x_gt_y_carry
       (.CI(1'b0),
        .CO({CO,x_gt_y_carry_n_1,x_gt_y_carry_n_2,x_gt_y_carry_n_3}),
        .CYINIT(1'b1),
        .DI({x_gt_y_carry_i_1_n_0,x_gt_y_carry_i_2_n_0,x_gt_y_carry_i_3_n_0,x_gt_y_carry_i_4_n_0}),
        .O(NLW_x_gt_y_carry_O_UNCONNECTED[3:0]),
        .S({x_gt_y_carry_i_5_n_0,x_gt_y_carry_i_6_n_0,x_gt_y_carry_i_7_n_0,x_gt_y_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_1
       (.I0(gcd_result[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(gcd_result[7]),
        .O(x_gt_y_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_2
       (.I0(gcd_result[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(gcd_result[5]),
        .O(x_gt_y_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_3
       (.I0(gcd_result[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(gcd_result[3]),
        .O(x_gt_y_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_4
       (.I0(gcd_result[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(gcd_result[1]),
        .O(x_gt_y_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_5
       (.I0(gcd_result[6]),
        .I1(y[6]),
        .I2(gcd_result[7]),
        .I3(y[7]),
        .O(x_gt_y_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_6
       (.I0(gcd_result[4]),
        .I1(y[4]),
        .I2(gcd_result[5]),
        .I3(y[5]),
        .O(x_gt_y_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_7
       (.I0(gcd_result[2]),
        .I1(y[2]),
        .I2(gcd_result[3]),
        .I3(y[3]),
        .O(x_gt_y_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_8
       (.I0(gcd_result[0]),
        .I1(y[0]),
        .I2(gcd_result[1]),
        .I3(y[1]),
        .O(x_gt_y_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(gcd_result[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(gcd_result[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(gcd_result[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(gcd_result[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(gcd_result[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(gcd_result[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(gcd_result[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(gcd_result[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [0]),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [1]),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [2]),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [3]),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [4]),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [5]),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [6]),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\din_reg[7] [7]),
        .Q(y[7]),
        .R(1'b0));
endmodule

module fsm
   (D,
    state,
    \y_reg[7] ,
    E,
    \y_reg[7]_0 ,
    led_OBUF,
    Q,
    diff_x_y,
    diff_y_x,
    CO,
    sw_IBUF,
    \x_reg[0] ,
    \state_reg[1]_0 ,
    btn_IBUF,
    CLK);
  output [7:0]D;
  output [2:0]state;
  output [7:0]\y_reg[7] ;
  output [0:0]E;
  output [0:0]\y_reg[7]_0 ;
  output [0:0]led_OBUF;
  input [7:0]Q;
  input [7:0]diff_x_y;
  input [7:0]diff_y_x;
  input [0:0]CO;
  input [0:0]sw_IBUF;
  input \x_reg[0] ;
  input \state_reg[1]_0 ;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]btn_IBUF;
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire [0:0]led_OBUF;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire [0:0]sw_IBUF;
  wire \x_reg[0] ;
  wire [7:0]\y_reg[7] ;
  wire [0:0]\y_reg[7]_0 ;

  LUT5 #(
    .INIT(32'h0008FFFF)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\x_reg[0] ),
        .O(led_OBUF));
  LUT4 #(
    .INIT(16'h0026)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(\state_reg[1]_0 ),
        .I2(state[2]),
        .I3(btn_IBUF),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000226A)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\state_reg[1]_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(btn_IBUF),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006222)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(\state_reg[1]_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(btn_IBUF),
        .O(\state[2]_i_1_n_0 ));
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
    .INIT(32'hCCCCCCAC)) 
    \x[0]_i_1 
       (.I0(Q[0]),
        .I1(diff_x_y[0]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[1]_i_1 
       (.I0(Q[1]),
        .I1(diff_x_y[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[2]_i_1 
       (.I0(Q[2]),
        .I1(diff_x_y[2]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[3]_i_1 
       (.I0(Q[3]),
        .I1(diff_x_y[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[4]_i_1 
       (.I0(Q[4]),
        .I1(diff_x_y[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[5]_i_1 
       (.I0(Q[5]),
        .I1(diff_x_y[5]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[6]_i_1 
       (.I0(Q[6]),
        .I1(diff_x_y[6]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \x[7]_i_1 
       (.I0(state[2]),
        .I1(CO),
        .I2(state[1]),
        .I3(state[0]),
        .O(E));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[7]_i_2 
       (.I0(Q[7]),
        .I1(diff_x_y[7]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[0]_i_1 
       (.I0(Q[0]),
        .I1(diff_y_x[0]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [0]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[1]_i_1 
       (.I0(Q[1]),
        .I1(diff_y_x[1]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [1]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[2]_i_1 
       (.I0(Q[2]),
        .I1(diff_y_x[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [2]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[3]_i_1 
       (.I0(Q[3]),
        .I1(diff_y_x[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [3]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[4]_i_1 
       (.I0(Q[4]),
        .I1(diff_y_x[4]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [4]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[5]_i_1 
       (.I0(Q[5]),
        .I1(diff_y_x[5]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [5]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[6]_i_1 
       (.I0(Q[6]),
        .I1(diff_y_x[6]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \y[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(CO),
        .I3(state[1]),
        .O(\y_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \y[7]_i_2 
       (.I0(Q[7]),
        .I1(diff_y_x[7]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\y_reg[7] [7]));
endmodule

module gcd_core
   (led_OBUF,
    btn_IBUF,
    CLK,
    Q,
    sw_IBUF);
  output [3:0]led_OBUF;
  input [0:0]btn_IBUF;
  input CLK;
  input [7:0]Q;
  input [1:0]sw_IBUF;

  wire CLK;
  wire [7:0]Q;
  wire [0:0]btn_IBUF;
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire dp1_n_17;
  wire dp1_n_18;
  wire fsm1_n_0;
  wire fsm1_n_1;
  wire fsm1_n_11;
  wire fsm1_n_12;
  wire fsm1_n_13;
  wire fsm1_n_14;
  wire fsm1_n_15;
  wire fsm1_n_16;
  wire fsm1_n_17;
  wire fsm1_n_18;
  wire fsm1_n_2;
  wire fsm1_n_3;
  wire fsm1_n_4;
  wire fsm1_n_5;
  wire fsm1_n_6;
  wire fsm1_n_7;
  wire [3:0]led_OBUF;
  wire [2:0]state;
  wire [1:0]sw_IBUF;
  wire x_gt_y;
  wire xload;
  wire yload;

  dp dp1
       (.CLK(CLK),
        .CO(x_gt_y),
        .D({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}),
        .E(xload),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .\din_reg[7] ({fsm1_n_11,fsm1_n_12,fsm1_n_13,fsm1_n_14,fsm1_n_15,fsm1_n_16,fsm1_n_17,fsm1_n_18}),
        .\led[0] (dp1_n_18),
        .led_OBUF(led_OBUF[3:1]),
        .state(state),
        .\state_reg[2] (dp1_n_17),
        .\state_reg[2]_0 (yload),
        .sw_IBUF(sw_IBUF));
  fsm fsm1
       (.CLK(CLK),
        .CO(x_gt_y),
        .D({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}),
        .E(xload),
        .Q(Q),
        .btn_IBUF(btn_IBUF),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .led_OBUF(led_OBUF[0]),
        .state(state),
        .\state_reg[1]_0 (dp1_n_17),
        .sw_IBUF(sw_IBUF[1]),
        .\x_reg[0] (dp1_n_18),
        .\y_reg[7] ({fsm1_n_11,fsm1_n_12,fsm1_n_13,fsm1_n_14,fsm1_n_15,fsm1_n_16,fsm1_n_17,fsm1_n_18}),
        .\y_reg[7]_0 (yload));
endmodule

(* NotValidForBitStream *)
module gcd_wrapper
   (btn,
    sw,
    clk,
    led);
  input [1:0]btn;
  input [3:0]sw;
  input clk;
  output [3:0]led;

  wire [1:0]btn;
  wire [1:0]btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]d_temp;
  wire debouce1_n_0;
  wire debouce1_n_5;
  wire debouce1_n_6;
  wire [7:0]din;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire rst_deb;
  wire [2:0]state;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [3:0]sw;
  wire [3:0]sw_IBUF;

  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_6),
        .D(sw_IBUF[0]),
        .Q(d_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_6),
        .D(sw_IBUF[1]),
        .Q(d_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_6),
        .D(sw_IBUF[2]),
        .Q(d_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_6),
        .D(sw_IBUF[3]),
        .Q(d_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_5),
        .D(sw_IBUF[0]),
        .Q(d_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_5),
        .D(sw_IBUF[1]),
        .Q(d_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_5),
        .D(sw_IBUF[2]),
        .Q(d_temp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_temp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_5),
        .D(sw_IBUF[3]),
        .Q(d_temp[7]),
        .R(1'b0));
  debounce debouce1
       (.CLK(clk_IBUF_BUFG),
        .D(state),
        .E(debouce1_n_0),
        .Q({\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .btn_IBUF(btn_IBUF),
        .\d_temp_reg[7] ({debouce1_n_5,debouce1_n_6}),
        .\lfsr_reg[1]_0 (rst_deb));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[0]),
        .Q(din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[1]),
        .Q(din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[2]),
        .Q(din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[3]),
        .Q(din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[4]),
        .Q(din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[5]),
        .Q(din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[6]),
        .Q(din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \din_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(debouce1_n_0),
        .D(d_temp[7]),
        .Q(din[7]),
        .R(1'b0));
  gcd_core gcd_core1
       (.CLK(clk_IBUF_BUFG),
        .Q(din),
        .btn_IBUF(btn_IBUF[0]),
        .led_OBUF(led_OBUF),
        .sw_IBUF(sw_IBUF[1:0]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(rst_deb));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(rst_deb));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(rst_deb));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
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
