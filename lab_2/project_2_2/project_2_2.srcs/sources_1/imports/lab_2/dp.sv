`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 01/31/2020
// Design Name: GCD with Mealy FSM for control
// Module Name: dp
// Project Name: Project 2
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////


module dp(
    input logic xsel, xload, ysel, yload, 
    sub_sel,clk,
    input logic [7:0] din,
    output logic x_eq_y, x_gt_y,
    output logic [7:0] gcd_result
    );
    
    logic [7:0] diff;
    logic [7:0] x,y;
    
    // comparators
    
    assign x_eq_y = (x == y);
    assign x_gt_y = (x >= y);
    
    // subtractor and muxes
    
    assign diff = (sub_sel ? y : x) - (sub_sel ? x : y);
    
    // x and y registers with cascaded muxes
    always_ff @(posedge clk)
    
    begin
    
    if (xload)
        if (xsel)  // could have used ternary operator
            x <= din;
        else x <= diff;
    
    if (yload)
        if (ysel)
            y <= din;
        else y <= diff;
    
    end
    
    assign gcd_result = x;
    
endmodule
