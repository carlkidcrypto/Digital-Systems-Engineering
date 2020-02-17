`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 01/31/2020
// Design Name: GCD with Mealy FSM for control
// Module Name: gcd_core
// Project Name: Project 2
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module gcd_core(
    input clk,
    input rst,
    input load,
    input [7:0] din,
    output [7:0] gcd_result,
    output done
    );
    
    logic xsel, xload, ysel, yload, x_eq_y, x_gt_y; // delcare internal signals
   
// Instantiate the datapath - could have used .name or .*

dp dp1(.*); // this is shorter, but could have  possible issues. See book for more info
/* dp dp1 (
    .clk(clk), 
    .xload(xload), 
    .yload(yload),
    .din(din),
    .x_eq_y(x_eq_y),
    .x_gt_y(x_gt_y), 
    .gcd_result(gcd_result)
    ); */

// Instantiate the controller
fsm fsm1 (.*);

/* fsm fsm1 (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .x_eq_y(x_eq_y), 
    .x_gt_y(x_gt_y), 
    .xload(xload),  
    .yload(yload),  
    .done(done)
    ); */
endmodule