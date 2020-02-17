`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 01/31/2020
// Design Name: GCD with Mealy FSM for control
// Module Name: fsm
// Project Name: Project 2
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////


module fsm(
    input logic clk, x_eq_y, x_gt_y, rst,load,
    output logic xsel, ysel, xload, yload, done 
    );
    
    // symbolic state names as an enumerated type
    typedef enum logic [2:0] 
        {start, loadx, loady, compare, fin} statetype;  
    statetype  state;
    
    // NSL and state register - non-blocking assignment 
    always_ff @(posedge clk)
    begin
    if (rst)
        state <= start;
    else
        case (state)
            start, done : if (load) state <= loadx;
            loadx : state <= loady;
            loady : state <= compare;
            compare :
                if(x_eq_y) state <= fin;
            default : state <= start; // default state to start at
        endcase    
    end
    
    // output logic - blocking assignments
    always_comb
    begin
        // default outputs
        xload = 0;  yload = 0; xsel = 0; ysel = 0; done = 0;
            case (state)
            loadx :
                begin
                xload = 1; xsel = 1; 
                end      
            loady :
                begin
                yload = 1; ysel = 1 ;
                end
           compare:
                begin
                    if(x_gt_y) xload = 1;
                    else yload = 1;
                end
           fin : done = 1;
            endcase    
    end

endmodule
