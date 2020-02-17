// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Feb 07 18:37:26 2020
// Host        : ece-bel215-15 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/port3116/Desktop/lab_3/project_3_1/project_3_1.sim/sim_1/synth/timing/gcd_wrapper_tb_time_synth.v
// Design      : gcd_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module debounce
   (D,
    \lfsr_reg[1]_0 ,
    d_temp2_enb_reg,
    d_temp_enb_reg,
    CLK,
    Q,
    d_temp2_enb,
    d_temp_enb,
    btn_IBUF);
  output [2:0]D;
  output [0:0]\lfsr_reg[1]_0 ;
  output d_temp2_enb_reg;
  output d_temp_enb_reg;
  input CLK;
  input [2:0]Q;
  input d_temp2_enb;
  input d_temp_enb;
  input [1:0]btn_IBUF;

  wire CLK;
  wire [2:0]D;
  wire [2:0]Q;
  wire [1:0]btn_IBUF;
  wire btn_internal_1;
  wire d_temp2_enb;
  wire d_temp2_enb_reg;
  wire d_temp_enb;
  wire d_temp_enb_reg;
  wire [1:9]lfsr;
  wire \lfsr[1]_i_1_n_0 ;
  wire [0:0]\lfsr_reg[1]_0 ;
  wire load_deb0;
  wire \load_deb0/i__n_0 ;
  wire load_deb_i_1_n_0;
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
  wire \rst_sreg_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFFEFFB00002008)) 
    d_temp2_enb_i_1
       (.I0(btn_internal_1),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\lfsr_reg[1]_0 ),
        .I5(d_temp2_enb),
        .O(d_temp2_enb_reg));
  LUT6 #(
    .INIT(64'hFFFAFFF8005000F0)) 
    d_temp_enb_i_1
       (.I0(Q[1]),
        .I1(\lfsr_reg[1]_0 ),
        .I2(btn_internal_1),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(d_temp_enb),
        .O(d_temp_enb_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \lfsr[1]_i_1 
       (.I0(lfsr[9]),
        .I1(lfsr[5]),
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
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    load_deb_i_2
       (.I0(\load_sreg[9]_i_2_n_0 ),
        .I1(lfsr[6]),
        .I2(lfsr[9]),
        .I3(lfsr[7]),
        .I4(lfsr[8]),
        .I5(\lfsr_reg[1]_0 ),
        .O(load_deb0));
  FDRE #(
    .INIT(1'b0)) 
    load_deb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(load_deb_i_1_n_0),
        .Q(btn_internal_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \load_sreg[9]_i_1 
       (.I0(\load_sreg[9]_i_2_n_0 ),
        .I1(lfsr[8]),
        .I2(lfsr[7]),
        .I3(lfsr[9]),
        .I4(lfsr[6]),
        .O(load_sreg));
  LUT5 #(
    .INIT(32'h00000001)) 
    \load_sreg[9]_i_2 
       (.I0(lfsr[2]),
        .I1(lfsr[3]),
        .I2(lfsr[5]),
        .I3(lfsr[4]),
        .I4(lfsr[1]),
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
        .D(\rst_sreg_reg_n_0_[1] ),
        .Q(\lfsr_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_sreg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(btn_IBUF[0]),
        .Q(\rst_sreg_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h03EC)) 
    \state[0]_i_1 
       (.I0(Q[1]),
        .I1(btn_internal_1),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(btn_internal_1),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7780)) 
    \state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(btn_internal_1),
        .I3(Q[2]),
        .O(D[2]));
endmodule

module dp
   (diff_x_y,
    diff_y_x,
    CO,
    \state_reg[0] ,
    \state_reg[1] ,
    \state_reg[2] ,
    D,
    state,
    sw_IBUF,
    \state_reg[1]_0 ,
    E,
    \state_reg[0]_0 ,
    CLK,
    \state_reg[2]_0 ,
    \state_reg[1]_1 );
  output [7:0]diff_x_y;
  output [7:0]diff_y_x;
  output [0:0]CO;
  output \state_reg[0] ;
  output \state_reg[1] ;
  output \state_reg[2] ;
  output [3:0]D;
  input [2:0]state;
  input [1:0]sw_IBUF;
  input \state_reg[1]_0 ;
  input [0:0]E;
  input [7:0]\state_reg[0]_0 ;
  input CLK;
  input [0:0]\state_reg[2]_0 ;
  input [7:0]\state_reg[1]_1 ;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
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
  wire [7:0]gcd_core_result;
  wire [2:0]state;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state_reg[0] ;
  wire [7:0]\state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire [7:0]\state_reg[1]_1 ;
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
        .DI(gcd_core_result[3:0]),
        .O(diff_x_y[3:0]),
        .S({diff_x_y_carry_i_1_n_0,diff_x_y_carry_i_2_n_0,diff_x_y_carry_i_3_n_0,diff_x_y_carry_i_4_n_0}));
  CARRY4 diff_x_y_carry__0
       (.CI(diff_x_y_carry_n_0),
        .CO({NLW_diff_x_y_carry__0_CO_UNCONNECTED[3],diff_x_y_carry__0_n_1,diff_x_y_carry__0_n_2,diff_x_y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gcd_core_result[6:4]}),
        .O(diff_x_y[7:4]),
        .S({diff_x_y_carry__0_i_1_n_0,diff_x_y_carry__0_i_2_n_0,diff_x_y_carry__0_i_3_n_0,diff_x_y_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_1
       (.I0(gcd_core_result[7]),
        .I1(y[7]),
        .O(diff_x_y_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_2
       (.I0(gcd_core_result[6]),
        .I1(y[6]),
        .O(diff_x_y_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_3
       (.I0(gcd_core_result[5]),
        .I1(y[5]),
        .O(diff_x_y_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry__0_i_4
       (.I0(gcd_core_result[4]),
        .I1(y[4]),
        .O(diff_x_y_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_1
       (.I0(gcd_core_result[3]),
        .I1(y[3]),
        .O(diff_x_y_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_2
       (.I0(gcd_core_result[2]),
        .I1(y[2]),
        .O(diff_x_y_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_3
       (.I0(gcd_core_result[1]),
        .I1(y[1]),
        .O(diff_x_y_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_x_y_carry_i_4
       (.I0(gcd_core_result[0]),
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
        .I1(gcd_core_result[7]),
        .O(diff_y_x_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_2
       (.I0(y[6]),
        .I1(gcd_core_result[6]),
        .O(diff_y_x_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_3
       (.I0(y[5]),
        .I1(gcd_core_result[5]),
        .O(diff_y_x_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_4
       (.I0(y[4]),
        .I1(gcd_core_result[4]),
        .O(diff_y_x_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_1
       (.I0(y[3]),
        .I1(gcd_core_result[3]),
        .O(diff_y_x_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_2
       (.I0(y[2]),
        .I1(gcd_core_result[2]),
        .O(diff_y_x_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_3
       (.I0(y[1]),
        .I1(gcd_core_result[1]),
        .O(diff_y_x_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_4
       (.I0(y[0]),
        .I1(gcd_core_result[0]),
        .O(diff_y_x_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8A80FFFF)) 
    \led_reg[0]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(gcd_core_result[4]),
        .I2(sw_IBUF[0]),
        .I3(gcd_core_result[0]),
        .I4(\state_reg[1]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hA808)) 
    \led_reg[1]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(gcd_core_result[1]),
        .I2(sw_IBUF[0]),
        .I3(gcd_core_result[5]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \led_reg[2]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(gcd_core_result[2]),
        .I2(sw_IBUF[0]),
        .I3(gcd_core_result[6]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \led_reg[3]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(gcd_core_result[3]),
        .I2(sw_IBUF[0]),
        .I3(gcd_core_result[7]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h007F00FF00000000)) 
    \state[0]_i_1__0 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h007F00FF00FF0000)) 
    \state[1]_i_1__0 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \state[2]_i_1__0 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state_reg[2] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_2 
       (.I0(gcd_core_result[0]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(gcd_core_result[2]),
        .I4(y[1]),
        .I5(gcd_core_result[1]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \state[2]_i_3 
       (.I0(gcd_core_result[3]),
        .I1(y[3]),
        .I2(y[5]),
        .I3(gcd_core_result[5]),
        .I4(y[4]),
        .I5(gcd_core_result[4]),
        .O(\state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_4 
       (.I0(gcd_core_result[6]),
        .I1(y[6]),
        .I2(gcd_core_result[7]),
        .I3(y[7]),
        .O(\state[2]_i_4_n_0 ));
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
       (.I0(gcd_core_result[6]),
        .I1(y[6]),
        .I2(y[7]),
        .I3(gcd_core_result[7]),
        .O(x_gt_y_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_2
       (.I0(gcd_core_result[4]),
        .I1(y[4]),
        .I2(y[5]),
        .I3(gcd_core_result[5]),
        .O(x_gt_y_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_3
       (.I0(gcd_core_result[2]),
        .I1(y[2]),
        .I2(y[3]),
        .I3(gcd_core_result[3]),
        .O(x_gt_y_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    x_gt_y_carry_i_4
       (.I0(gcd_core_result[0]),
        .I1(y[0]),
        .I2(y[1]),
        .I3(gcd_core_result[1]),
        .O(x_gt_y_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_5
       (.I0(gcd_core_result[6]),
        .I1(y[6]),
        .I2(gcd_core_result[7]),
        .I3(y[7]),
        .O(x_gt_y_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_6
       (.I0(gcd_core_result[4]),
        .I1(y[4]),
        .I2(gcd_core_result[5]),
        .I3(y[5]),
        .O(x_gt_y_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_7
       (.I0(gcd_core_result[2]),
        .I1(y[2]),
        .I2(gcd_core_result[3]),
        .I3(y[3]),
        .O(x_gt_y_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    x_gt_y_carry_i_8
       (.I0(gcd_core_result[0]),
        .I1(y[0]),
        .I2(gcd_core_result[1]),
        .I3(y[1]),
        .O(x_gt_y_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [0]),
        .Q(gcd_core_result[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [1]),
        .Q(gcd_core_result[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [2]),
        .Q(gcd_core_result[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [3]),
        .Q(gcd_core_result[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [4]),
        .Q(gcd_core_result[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [5]),
        .Q(gcd_core_result[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [6]),
        .Q(gcd_core_result[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\state_reg[0]_0 [7]),
        .Q(gcd_core_result[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [0]),
        .Q(y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [1]),
        .Q(y[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [2]),
        .Q(y[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [3]),
        .Q(y[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [4]),
        .Q(y[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [5]),
        .Q(y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [6]),
        .Q(y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(CLK),
        .CE(\state_reg[2]_0 ),
        .D(\state_reg[1]_1 [7]),
        .Q(y[7]),
        .R(1'b0));
endmodule

module fsm
   (\x_reg[7] ,
    state,
    \y_reg[7] ,
    E,
    \y_reg[7]_0 ,
    \led[0] ,
    Q,
    diff_x_y,
    diff_y_x,
    CO,
    sw_IBUF,
    AR,
    \state_reg[2]_0 ,
    CLK,
    \state_reg[2]_1 ,
    \state_reg[2]_2 );
  output [7:0]\x_reg[7] ;
  output [2:0]state;
  output [7:0]\y_reg[7] ;
  output [0:0]E;
  output [0:0]\y_reg[7]_0 ;
  output \led[0] ;
  input [7:0]Q;
  input [7:0]diff_x_y;
  input [7:0]diff_y_x;
  input [0:0]CO;
  input [0:0]sw_IBUF;
  input [0:0]AR;
  input \state_reg[2]_0 ;
  input CLK;
  input \state_reg[2]_1 ;
  input \state_reg[2]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire \led[0] ;
  wire [2:0]state;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire \state_reg[2]_2 ;
  wire [0:0]sw_IBUF;
  wire [7:0]\x_reg[7] ;
  wire [7:0]\y_reg[7] ;
  wire [0:0]\y_reg[7]_0 ;

  LUT4 #(
    .INIT(16'hFEFF)) 
    \led_reg[0]_i_2 
       (.I0(sw_IBUF),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\led[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_reg[2]_2 ),
        .Q(state[0]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_reg[2]_1 ),
        .Q(state[1]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state_reg[2]_0 ),
        .Q(state[2]),
        .R(AR));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[0]_i_1 
       (.I0(Q[0]),
        .I1(diff_x_y[0]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [0]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[1]_i_1 
       (.I0(Q[1]),
        .I1(diff_x_y[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [1]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[2]_i_1 
       (.I0(Q[2]),
        .I1(diff_x_y[2]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [2]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[3]_i_1 
       (.I0(Q[3]),
        .I1(diff_x_y[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [3]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[4]_i_1 
       (.I0(Q[4]),
        .I1(diff_x_y[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [4]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[5]_i_1 
       (.I0(Q[5]),
        .I1(diff_x_y[5]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [5]));
  LUT5 #(
    .INIT(32'hCCCCCCAC)) 
    \x[6]_i_1 
       (.I0(Q[6]),
        .I1(diff_x_y[6]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\x_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .O(\x_reg[7] [7]));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
   (D,
    AR,
    CLK,
    Q,
    sw_IBUF);
  output [3:0]D;
  input [0:0]AR;
  input CLK;
  input [7:0]Q;
  input [1:0]sw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [7:0]Q;
  wire [7:0]diff_x_y;
  wire [7:0]diff_y_x;
  wire dp1_n_17;
  wire dp1_n_18;
  wire dp1_n_19;
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
  wire fsm1_n_21;
  wire fsm1_n_3;
  wire fsm1_n_4;
  wire fsm1_n_5;
  wire fsm1_n_6;
  wire fsm1_n_7;
  wire [2:0]state;
  wire [1:0]sw_IBUF;
  wire x_gt_y;
  wire xload;
  wire yload;

  dp dp1
       (.CLK(CLK),
        .CO(x_gt_y),
        .D(D),
        .E(xload),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .state(state),
        .\state_reg[0] (dp1_n_17),
        .\state_reg[0]_0 ({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}),
        .\state_reg[1] (dp1_n_18),
        .\state_reg[1]_0 (fsm1_n_21),
        .\state_reg[1]_1 ({fsm1_n_11,fsm1_n_12,fsm1_n_13,fsm1_n_14,fsm1_n_15,fsm1_n_16,fsm1_n_17,fsm1_n_18}),
        .\state_reg[2] (dp1_n_19),
        .\state_reg[2]_0 (yload),
        .sw_IBUF(sw_IBUF));
  fsm fsm1
       (.AR(AR),
        .CLK(CLK),
        .CO(x_gt_y),
        .E(xload),
        .Q(Q),
        .diff_x_y(diff_x_y),
        .diff_y_x(diff_y_x),
        .\led[0] (fsm1_n_21),
        .state(state),
        .\state_reg[2]_0 (dp1_n_19),
        .\state_reg[2]_1 (dp1_n_18),
        .\state_reg[2]_2 (dp1_n_17),
        .sw_IBUF(sw_IBUF[1]),
        .\x_reg[7] ({fsm1_n_0,fsm1_n_1,fsm1_n_2,fsm1_n_3,fsm1_n_4,fsm1_n_5,fsm1_n_6,fsm1_n_7}),
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
  wire [7:0]d_temp2;
  wire d_temp2_enb;
  wire \d_temp2_reg[3]_i_1_n_0 ;
  wire \d_temp2_reg[7]_i_1_n_0 ;
  wire d_temp_enb;
  wire \d_temp_reg[3]_i_1_n_0 ;
  wire \d_temp_reg[7]_i_1_n_0 ;
  wire debouce1_n_4;
  wire debouce1_n_5;
  wire gcd_core1_n_0;
  wire gcd_core1_n_1;
  wire gcd_core1_n_2;
  wire gcd_core1_n_3;
  wire [7:0]gcd_core_din;
  wire \gcd_core_din_reg[0]_i_1_n_0 ;
  wire \gcd_core_din_reg[1]_i_1_n_0 ;
  wire \gcd_core_din_reg[2]_i_1_n_0 ;
  wire \gcd_core_din_reg[3]_i_1_n_0 ;
  wire \gcd_core_din_reg[4]_i_1_n_0 ;
  wire \gcd_core_din_reg[5]_i_1_n_0 ;
  wire \gcd_core_din_reg[6]_i_1_n_0 ;
  wire \gcd_core_din_reg[7]_i_1_n_0 ;
  wire \gcd_core_din_reg[7]_i_2_n_0 ;
  wire [3:0]led;
  wire [3:0]led_OBUF;
  wire \led_reg[3]_i_2_n_0 ;
  wire rst_deb;
  wire [2:0]state;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [3:0]sw;
  wire [3:0]sw_IBUF;

initial begin
 $sdf_annotate("gcd_wrapper_tb_time_synth.sdf",,,,"tool_control");
end
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
    d_temp2_enb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(debouce1_n_4),
        .Q(d_temp2_enb),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[0] 
       (.CLR(1'b0),
        .D(sw_IBUF[0]),
        .G(\d_temp2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[1] 
       (.CLR(1'b0),
        .D(sw_IBUF[1]),
        .G(\d_temp2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[2] 
       (.CLR(1'b0),
        .D(sw_IBUF[2]),
        .G(\d_temp2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[3] 
       (.CLR(1'b0),
        .D(sw_IBUF[3]),
        .G(\d_temp2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \d_temp2_reg[3]_i_1 
       (.I0(d_temp2_enb),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\d_temp2_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[4] 
       (.CLR(1'b0),
        .D(sw_IBUF[0]),
        .G(\d_temp2_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[5] 
       (.CLR(1'b0),
        .D(sw_IBUF[1]),
        .G(\d_temp2_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[6] 
       (.CLR(1'b0),
        .D(sw_IBUF[2]),
        .G(\d_temp2_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp2_reg[7] 
       (.CLR(1'b0),
        .D(sw_IBUF[3]),
        .G(\d_temp2_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp2[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \d_temp2_reg[7]_i_1 
       (.I0(d_temp2_enb),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\d_temp2_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    d_temp_enb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(debouce1_n_5),
        .Q(d_temp_enb),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[0] 
       (.CLR(1'b0),
        .D(sw_IBUF[0]),
        .G(\d_temp_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[1] 
       (.CLR(1'b0),
        .D(sw_IBUF[1]),
        .G(\d_temp_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[2] 
       (.CLR(1'b0),
        .D(sw_IBUF[2]),
        .G(\d_temp_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[3] 
       (.CLR(1'b0),
        .D(sw_IBUF[3]),
        .G(\d_temp_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \d_temp_reg[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(d_temp_enb),
        .I3(\state_reg_n_0_[1] ),
        .O(\d_temp_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[4] 
       (.CLR(1'b0),
        .D(sw_IBUF[0]),
        .G(\d_temp_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[5] 
       (.CLR(1'b0),
        .D(sw_IBUF[1]),
        .G(\d_temp_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[6] 
       (.CLR(1'b0),
        .D(sw_IBUF[2]),
        .G(\d_temp_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_temp_reg[7] 
       (.CLR(1'b0),
        .D(sw_IBUF[3]),
        .G(\d_temp_reg[7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(d_temp[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \d_temp_reg[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(d_temp_enb),
        .I3(\state_reg_n_0_[0] ),
        .O(\d_temp_reg[7]_i_1_n_0 ));
  debounce debouce1
       (.CLK(clk_IBUF_BUFG),
        .D(state),
        .Q({\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .btn_IBUF(btn_IBUF),
        .d_temp2_enb(d_temp2_enb),
        .d_temp2_enb_reg(debouce1_n_4),
        .d_temp_enb(d_temp_enb),
        .d_temp_enb_reg(debouce1_n_5),
        .\lfsr_reg[1]_0 (rst_deb));
  gcd_core gcd_core1
       (.AR(rst_deb),
        .CLK(clk_IBUF_BUFG),
        .D({gcd_core1_n_0,gcd_core1_n_1,gcd_core1_n_2,gcd_core1_n_3}),
        .Q(gcd_core_din),
        .sw_IBUF(sw_IBUF[1:0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[0] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[0]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[0]_i_1 
       (.I0(d_temp[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[0]),
        .O(\gcd_core_din_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[1] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[1]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[1]_i_1 
       (.I0(d_temp[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[1]),
        .O(\gcd_core_din_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[2] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[2]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[2]_i_1 
       (.I0(d_temp[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[2]),
        .O(\gcd_core_din_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[3] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[3]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[3]_i_1 
       (.I0(d_temp[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[3]),
        .O(\gcd_core_din_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[4] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[4]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[4]_i_1 
       (.I0(d_temp[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[4]),
        .O(\gcd_core_din_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[5] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[5]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[5]_i_1 
       (.I0(d_temp[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[5]),
        .O(\gcd_core_din_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[6] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[6]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[6]_i_1 
       (.I0(d_temp[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[6]),
        .O(\gcd_core_din_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gcd_core_din_reg[7] 
       (.CLR(1'b0),
        .D(\gcd_core_din_reg[7]_i_1_n_0 ),
        .G(\gcd_core_din_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gcd_core_din[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gcd_core_din_reg[7]_i_1 
       (.I0(d_temp[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(d_temp2[7]),
        .O(\gcd_core_din_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \gcd_core_din_reg[7]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\gcd_core_din_reg[7]_i_2_n_0 ));
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
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.CLR(1'b0),
        .D(gcd_core1_n_3),
        .G(\led_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(led_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.CLR(1'b0),
        .D(gcd_core1_n_2),
        .G(\led_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(led_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.CLR(1'b0),
        .D(gcd_core1_n_1),
        .G(\led_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(led_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[3] 
       (.CLR(1'b0),
        .D(gcd_core1_n_0),
        .G(\led_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(led_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_reg[3]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\led_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_deb),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_deb),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_deb),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
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
