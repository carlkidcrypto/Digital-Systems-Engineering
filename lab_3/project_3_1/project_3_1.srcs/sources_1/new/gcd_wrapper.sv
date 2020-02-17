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
logic [7:0] d_temp,d_temp2; // reg to store button input data: gcd_wrapper
logic [1:0] btn_internal;
logic gcd_core_load, gcd_core_done;
logic [7:0] gcd_core_result, gcd_core_din;
logic d_temp_enb,d_temp2_enb;
// Instantiate stuff - could have used .name or .*
// Note: helpful site: http://www.vlsifacts.com/port-mapping-for-module-instantiation-in-verilog/
debounce debouce1 (
    .clk(clk),
    .rst_btn(btn[0]),
    .load_btn(btn[1]),
    .rst_deb(btn_internal[0]),
    .load_deb(btn_internal[1])
);


gcd_core gcd_core1 (
    .clk(clk),
    .rst(btn_internal[0]),
    .load(gcd_core_load),
    .din(gcd_core_din),
    .gcd_result(gcd_core_result),
    .done(gcd_core_done) 
);


// symbolic state names as an enumerated type
typedef enum logic [2:0]
{start, ldx_up_nib, ldx_lo_nib, ldy_up_nib, ldy_lo_nib, sendx, sendy, fin} statetype;
statetype  state;
    
always_ff @(posedge clk , negedge btn_internal[0])
    begin // start the input_fsm
        if(btn_internal[0])
            state <= start; // if the reset is asserted at any point.
        else
            case(state)
                start:
                    begin
                        if(btn_internal[1]) // if load is asserted
                            begin
                                d_temp_enb <= 1; // set the enable for reg d_temp
                                state <= ldx_up_nib;
                            end
                        else
                            begin
                                d_temp_enb <= 0; // set the enable for reg d_temp
                                state <= start;
                            end
                    end
                ldx_up_nib: // upper nibble
                    begin
                        if(btn_internal[1])
                            begin
                                d_temp_enb <= 1; // set the enable for reg d_temp
                                //d_temp[7] <= sw[3];
                                //d_temp[6] <= sw[2];
                               // d_temp[5] <= sw[1];
                               // d_temp[4] <= sw[0];
                                state <= ldx_lo_nib;
                             end
                        else
                            begin
                                d_temp_enb <= 0; // set the enable for reg d_temp
                                state <= ldx_up_nib;
                            end
                    end
                ldx_lo_nib: // lower nibble
                        begin
                            if(btn_internal[1])
                                begin
                                    d_temp_enb <= 1; // set the enable for reg d_temp
                                    //d_temp[3] <= sw[3];
                                    //d_temp[2] <= sw[2];
                                    //d_temp[1] <= sw[1];
                                    //d_temp[0] <= sw[0];
                                    state <= ldy_up_nib;    
                                end
                            else
                                begin
                                    d_temp_enb = 0; // set the enable for reg d_temp    
                                    state <= ldx_lo_nib;
                                end
                            end
                ldy_up_nib: // upper nibble
                        begin
                            if(btn_internal[1])
                                begin
                                    d_temp2_enb <= 1; // set the enable for reg d_temp2    
                                   // d_temp2[7] <= sw[3];
                                   // d_temp2[6] <= sw[2];
                                   // d_temp2[5] <= sw[1];
                                   // d_temp2[4] <= sw[0];
                                    state <= ldy_lo_nib;
                                end
                            else
                                begin
                                    d_temp2_enb <= 0; // set the enable for reg d_temp2  
                                    state <= ldy_up_nib;
                                end
                        end
                ldy_lo_nib: // lower nibble
                    begin
                        if(btn_internal[1])
                            begin
                                d_temp2_enb <= 1; // set the enable for reg d_temp2  
                               // d_temp2[3] <= sw[3];
                                //d_temp2[2] <= sw[2];
                                //d_temp2[1] <= sw[1];
                               // d_temp2[0] <= sw[0];
                                state <= sendx;
                        end
                        else
                            begin
                                d_temp2_enb <= 0; // set the enable for reg d_temp2  
                                state <= ldy_lo_nib;
                            end
                    end
                sendx:
                    begin
                        //gcd_core_load = 1;
                        //gcd_core_din = d_temp; // send x data
                        //gcd_core_load = 0;
                        state <= sendy;
                    end
                sendy:
                    begin
                       // gcd_core_load = 1;
                        //gcd_core_din = d_temp2; // send y data
                        //gcd_core_load = 0;
                        state <= fin;
                    end
                fin: state <= start; // add the other stuff for transitioning to start... if done and BTN 1 
           
                default: state <= start;
            endcase
    end // end the fsm
    
    always_comb
        begin
         // default outputs
                
            case(state)
                ldx_up_nib:
                    begin
                        if(d_temp_enb == 1)
                            begin
                                d_temp[7] = sw[3];
                                d_temp[6] = sw[2];
                                d_temp[5] = sw[1];
                                d_temp[4] = sw[0];
                            end
                    end
                ldx_lo_nib:
                    begin
                        if(d_temp_enb == 1)
                            begin
                                d_temp[3] = sw[3];
                                d_temp[2] = sw[2];
                                d_temp[1] = sw[1];
                                d_temp[0] = sw[0];
                            end
                    end
                ldy_up_nib:
                    begin
                        if(d_temp2_enb == 1)
                            begin
                                d_temp2[7] = sw[3];
                                d_temp2[6] = sw[2];
                                d_temp2[5] = sw[1];
                                d_temp2[4] = sw[0];
                            end
                   end
                ldy_lo_nib:
                    begin
                        if(d_temp2_enb == 1)
                            begin
                                d_temp2[3] = sw[3];
                                d_temp2[2] = sw[2];
                                d_temp2[1] = sw[1];
                                d_temp2[0] = sw[0];
                            end
                    end
                sendx:
                    begin
                        gcd_core_load = 1;
                        gcd_core_din = d_temp; // send x data
                        gcd_core_load = 0;    
                    end
                sendy:
                    begin
                        gcd_core_load = 1;
                        gcd_core_din = d_temp2; // send y data
                        gcd_core_load = 0;    
                    end
                fin:
                    begin
                case({sw[0],sw[1]})
                    2'b01: // lower bits
                        begin
                            led[3] = gcd_core_result[3];
                            led[2] = gcd_core_result[2];
                            led[1] = gcd_core_result[1];
                            led[0] = gcd_core_result[0];
                        end
                    2'b11: // upper bits
                        begin
                            led[3] = gcd_core_result[7];
                            led[2] = gcd_core_result[6];
                            led[1] = gcd_core_result[5];
                            led[0] = gcd_core_result[4];
                        end
                   2'b10: // sw 1 not asserted. Don't care about sw 0
                       begin
                        led[3] = 0;
                        led[2] = 0;
                        led[1] = 0;
                        led[0] = gcd_core_done; // let done signal through
                       end
                   2'b00: // sw 1 not asserted. Don't care about sw 0
                        begin
                            led[3] = 0;
                            led[2] = 0;
                            led[1] = 0;
                            led[0] = gcd_core_done; // let done signal through
                        end   
                endcase
                    end
            endcase                                   
    end // end comb block
               
                        
        

            
    
endmodule: gcd_wrapper