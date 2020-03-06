`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/17/2020
// Design Name: BMEM GCD SPI Wrapper
// Module Name: BMEM_GCD_SPI_Wrapper
// Project Name: Project 5
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module BMEM_GCD_SPI_Wrapper(
    input logic btn,
    input logic clk,
    output logic [7:0] dout
    );
    
    // Internal Signals
    
    // Block Memory
    logic [4:0] counter_up, a;
    logic [7:0] d,spo,iso; //iso is the isolated register
    logic we;  
    
    // GCD Core
    logic load, done, rst;
    logic [7:0] din, gcd_result;
    
    gcd_core gcd_core1 (.*);
    
    
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    mem mem1 (
      .a(a),      // input wire [4 : 0] a
      .d(d),      // input wire [7 : 0] d
      .clk(clk),  // input wire clk
      .we(we),    // input wire we
      .spo(spo)  // output wire [1 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------  


    // state names
    typedef enum logic [2:0]
    {start, load1, load2, check1, check2, wait1} statetype;
    statetype state;
    
    always_ff@(posedge clk)
    begin
    
    if(btn)
        begin
            counter_up <= 5'b0;
            rst <= 1;
            state <= load1;
        end
    else
            case(state)
                load1: 
                    begin
                        rst <= 0;
                        counter_up <= counter_up + 5'b1; // add one to counter
                        iso <= spo; // send data to isolated
                        din <= iso; // send data to GCD Core 
                        state <= check1;
                    end
                load2: 
                    begin
                        counter_up <= counter_up + 5'b1; // add one to counter
                        iso <= spo; // send data to isolated
                        din <= iso; // send data to GCD Core  
                        state <= check2;
                    end
                check1:
                    begin
                        if(iso == 0)
                            state <= start;
                        else
                            state <= load2;
                    end
                check2:
                    begin
                       if(iso == 0)
                        state <= start;
                       else
                        state <= wait1;
                    end
                wait1:
                    begin
                        if(done == 0)
                            state <= wait1;
                        else
                            begin
                                dout <= gcd_result;
                                state <= load1;
                            end
                    end
               default: state <= start;     
            endcase   
    end
    
    always_comb
    begin     
        //default inputs
        load = 0;
        
        // default memory inputs
        a = 0; // address for the memory unit
        we = 0; // write  enable signal
        d = 0; // data in for BMEM
        
        case(state)
            start:
                begin                      
                    a = 0;
                    load = 0;
                end
            load1:
                begin
                    a = counter_up; // address for the memory unit
                    we = 0; // write  enable signal
                    d = 0;  // data in for BMEM
                    load = 0;
                end
            load2:
                begin
                    a = counter_up; // address for the memory unit
                    we = 0; // write  enable signal
                    d = 0; // data in for BMEM
                    load = 1;
                end
        endcase
        
    end
        
endmodule: BMEM_GCD_SPI_Wrapper
