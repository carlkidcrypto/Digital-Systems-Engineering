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
    input logic xsel, ysel, xload, yload, clk,
    input logic [7:0] din,  // 8 bits
    output logic [7:0] gcd_result, // 8 bits
    output logic x_eq_y, x_gt_y
    );
    
    logic [7:0] diff_x_y,diff_y_x;
    logic [7:0] x,y;
    
    // comparators
    assign x_eq_y = (x == y);
    assign x_gt_y = (x >= y);
    
    // subtractor
    
    assign diff_x_y = x - y;
    assign diff_y_x = y - x;
    
    // x an y registers
    always_ff @(posedge clk)
    
    begin
    
    if (xload)
        if(xsel)
            x <= din;
        else x <= diff_x_y;
    
    if (yload)
        if(ysel)
            y <= din;
        else y <= diff_y_x;
    end
    
    assign gcd_result = x; // assign x to gcd_result after doing stuff with it.   
endmodule
