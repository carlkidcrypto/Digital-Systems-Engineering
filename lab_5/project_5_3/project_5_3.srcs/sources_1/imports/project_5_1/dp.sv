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
    input logic xsel, xload,
    ysel, yload,clk,
    input logic [7:0] din,
    output logic x_eq_y, x_gt_y,
    output logic [7:0] gcd_result
    );
    
    logic [7:0] x_diff_y,y_diff_x;
    logic [7:0] x,y;
    
    // comparators
    
    assign x_eq_y = (x == y);
    assign x_gt_y = (x >= y);
   
    
    // use subractors  
    always_comb
       begin
       
       gcd_result = 0;
       x_diff_y = 0;
       y_diff_x = 0;
       
       if (x==y)
                  gcd_result = x;
       
       if (x>y)
          begin 
              x_diff_y = x - y;
              gcd_result = x - y;
          end
       
       if (x<y) 
          begin
              y_diff_x = y - x;
              gcd_result = y - x;
          end
      
      end     
   
               
       // x and y registers with cascaded muxes
       always_ff @(posedge clk)
       
       begin
       
       if (xload)
           x <= x_diff_y;
       else if (~xsel)
           x <= din;
           
       if (yload)
           y <= y_diff_x;
       else if (~ysel)
           y <= din;
      
       end
        
   endmodule
