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
    input xsel, xload, ysel, yload, 
    input sub_sel, x_eq_y, x_gt_y
    );
    
    // symbolic state names as an enumerated type
    typedef enum logic [2:0] 
        {idle, loadx, loady, wait1, y_diff, x_diff, fine} statetype;  
    statetype  state;
    
    // NSL and state register - non-blocking assignment 
    always_ff @(posedge clk)
    begin
    if (rst)
        state <= idle;
    else
        case (state)
            idle : if (load) state <= loadx;
            loadx : state <= loady;
            wait1 :
                case ({x_eq_y, x_gt_y})
                    2'b10, 2'b11     : state <= fine;
                    2'b00         : state <= y_diff;
                    2'b01         : state <= x_diff;
                endcase
            fine : state <= idle;
            default : state <= wait1;
        endcase    
    end
    
    // output logic - blocking assignments
    always_comb
    begin
        // default outputs
        xload = 0; xsel = 0; yload = 0; ysel = 0; 
        sub_sel = 0; done = 0;
            case (state)
                loadx : 
                    begin
                        xload = 1; xsel = 1;
                    end
                loady : 
                    begin
                        yload = 1; ysel = 1;
                    end
                y_diff : 
                    begin
                        yload = 1; sub_sel = 1;
                    end
                x_diff : xload = 1;
                fine : done = 1;
            endcase    
    end

endmodule
