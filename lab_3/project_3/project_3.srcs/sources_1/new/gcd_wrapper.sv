`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/7/2020
// Design Name: GCD Wrapper for Project 3
// Module Name: gcd_wrapper
// Project Name: Project 3
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////


module gcd_wrapper(
    input [1:0] btn, // rst = btn[0], load = btn[1]
    input [3:0] sw,
    input clk,
    output logic [3:0] led
    );
// internal signals
logic [7:0] d_temp; // reg to store button input data: gcd_wrapper
logic [3:0] d_temp2; // reg to store led: gcd_wrapper
logic [7:0] gcd_result; // gcd_core signals
logic done;
logic xsel, xload, ysel, yload, x_eq_y, x_gt_y; // datapath signals
logic rst_btn, load_btn, load_deb, rst_deb; // debounce signals  
logic load, rst; // gcd_core signals
logic [7:0] din; // gcd_core signals
// Instantiate stuff - could have used .name or .*
debounce debouce1 (.*);
gcd_core gcd_core1 (.*);

assign rst_btn = btn [0]; // set internal signal rst_btn to whatever btn[0] is
assign load_btn = btn [1]; // set internal load_btn to whatever btn[1] is
assign rst = rst_btn;
    // symbolic state names as an enumerated type
    typedef enum logic [2:0] 
        {start, ldx_up_nib, ldx_lo_nib, ldy_up_nib, ldy_lo_nib, fin} statetype;  
    statetype  state;
    
    always_ff @(posedge clk)
    begin // start the input_fsm
    if(rst_deb)
        state <= start; // if the reset is asserted at any point.
    else
        case(state)
        start:
                begin
                if(load_deb) // if load is asserted
                    state <= ldx_up_nib;
                else
                    state <= start;
                end
        ldx_up_nib: // upper nibble
                    begin
                    if(btn[0])
                        begin
                            d_temp[7] = sw[3];
                            d_temp[6] = sw[2];
                            d_temp[5] = sw[1];
                            d_temp[4] = sw[0];
                            state <= ldx_lo_nib;
                        end
                    else
                        state <= ldx_up_nib;
                    end
        ldx_lo_nib: // lower nibble
                    begin
                    if(load_deb)
                        begin
                            d_temp[3] = sw[3];
                            d_temp[2] = sw[2];
                            d_temp[1] = sw[1];
                            d_temp[0] = sw[0];
                            state <= ldy_up_nib;
                        end
                    else
                        state <= ldx_lo_nib;
                    end
        ldy_up_nib: // upper nibble
                    begin
                    if(load_deb)
                        begin
                            d_temp[7] = sw[3];
                            d_temp[6] = sw[2];
                            d_temp[5] = sw[1];
                            d_temp[4] = sw[0];                       
                            state <= ldy_lo_nib;
                        end
                    else
                        state <= ldy_up_nib;
                    end
        ldy_lo_nib: // lower nibble
                    begin
                    if(load_deb)
                        begin
                            d_temp[3] = sw[3];
                            d_temp[2] = sw[2];
                            d_temp[1] = sw[1];
                            d_temp[0] = sw[0];
                            state <= fin;
                        end
                     else
                        state <= ldy_lo_nib;
                    end
        fin:
            begin
                load = 1;
                din = d_temp; // transfer data from d_temp to din
                state <= start;
            end                    
        default: state <= start;             
        endcase
    end // end the fsm
    
    
        
        
        always_comb
        begin
        // default outputs
        led = 3'b0; // start out with no led.
        
        if(sw[0])
            begin
            d_temp2[3] = gcd_result[7];
            d_temp2[2] = gcd_result[6];
            d_temp2[1] = gcd_result[5];
            d_temp2[0] = gcd_result[4];
            end
        else
            begin
            d_temp2[3] = gcd_result[3];
            d_temp2[2] = gcd_result[2];
            d_temp2[1] = gcd_result[1];
            d_temp2[0] = gcd_result[0];
            end
            
        if(!sw[1]) // if sw(1) is asserted
            begin
                led[3] = d_temp2[3];
                led[2] = d_temp2[2];
                led[1] = d_temp2[1];
                led[0] = d_temp2[0];
            end  
        else
            begin
                led[3] = 0;
                led[2] = 0;
                led[1] = 0;
                led[0] = done; // Let done signal through
            end
        end // end comb block
            
    
endmodule: gcd_wrapper
