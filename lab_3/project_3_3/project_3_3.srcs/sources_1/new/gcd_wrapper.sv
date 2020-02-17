`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
//
// Create Date: 02/10/2020
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
logic [7:0] d_temp, d_temp2;// reg to store button input data: gcd_wrapper

logic rst, load, rst_deb, load_deb;
logic load_core;
logic [7:0] result;
logic [7:0] din;

// synthesis only
assign rst = rst_deb;
assign load = load_deb;

// sim only
//assign rst = btn[0];
//assign load = btn[1];

// Instantiate stuff - could have used .name or .*
gcd_core gcd_core1 (
    .clk(clk),
    .rst(rst), // rst button internal 0
    .load(load_core),
    .din(din),
    .done(done),
    .gcd_result(result)
);

debounce debouce1 (
    .clk(clk),
    .rst_btn(btn[0]),
    .load_btn(btn[1]),
    .rst_deb(rst_deb),
    .load_deb(load_deb)
);


// Note: helpful site: http://www.vlsifacts.com/port-mapping-for-module-instantiation-in-verilog/


// symbolic state names as an enumerated type
typedef enum logic [3:0]
{start, ldx_up_nib, ldx_lo_nib, ldy_up_nib, ldy_lo_nib, sendx, sendy, wait_done, fin} statetype;
statetype  state;
    
always_ff @(posedge clk) 
    begin // start the input_fsm
        if(rst) // button 0 is the rst button
            state <= start; // if the reset is asserted at any point.
        else
            case(state)
                start:
                    begin
                        load_core <= 0;
                        if(load) // if load is asserted
                                state <= ldx_up_nib;
                    end
                ldx_up_nib: // upper nibble
                    begin
                                        if(load) // if load is asserted
                                                d_temp[7:4] <= sw[3:0];
                                                state <= ldx_lo_nib;
                                    end
                    
                            
                ldx_lo_nib: // lower nibble
                    begin
                                        if(load) // if load is asserted
                                                d_temp[3:0] <= sw[3:0];
                                                state <= ldy_up_nib;
                                    end
                        
                ldy_up_nib: // upper nibble
                    begin
                                        if(load) // if load is asserted                         
                                                d_temp2[7:4] <= sw[3:0];                                        
                                                state <= ldy_lo_nib;
                                    end
                       
                ldy_lo_nib: // lower nibble
                    begin
                                        if(load) // if load is asserted
                                            begin
                                                d_temp2[3:0] <= sw[3:0];
                                                load_core = 1;
                                                state <= sendx;
                                            end
                                    end
                    
                sendx:
                    begin
                                      //  if(load_deb) // if load is asserted
                                    begin
                                        din = d_temp;
                                        state <= sendy;
                                    end
                                    end
                    
                sendy:
                    begin
                                       //s if(load_deb) // if load is asserted
                                       begin
                                       din = d_temp2;
                                       state <= wait_done;
                                    end
                                    end
               wait_done:
                    if(done)
                        state <= fin;
                    
                fin: if(load)
                        state <= start; // add the other stuff for transitioning to start... if done and BTN 1 
           
                default:   state <= start;
            endcase
    end // end the fsm
    
    always_comb
        begin
         // default outputs
         //led = 4'b0000; 
         //load_core = 0;
         
            case(state)
                fin:
                    begin
                        case({sw[1],sw[0]})
                            2'b11: led [3:0] = result [7:4]; // upper bits
                            2'b10: led [3:0] = result [3:0]; // lower bits
                            2'b00: led [3:0] = done;
                            2'b01: led [3:0] = done;
                            default: led [3:0] = done;
                        endcase
                    end
                    
            endcase                                   
    end // end comb block
                   
endmodule: gcd_wrapper