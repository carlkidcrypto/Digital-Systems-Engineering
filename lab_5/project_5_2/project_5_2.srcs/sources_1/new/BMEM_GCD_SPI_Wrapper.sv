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
    output logic mosi, sclk,chs
    );
    
    // Internal Signals
    
    // Block Memory
    logic [4:0] counter_up, a;
    logic [7:0] d,spo;
    logic we;  
    
    // GCD Core
    logic load, done,done_SPI, rst,rst_deb;
    logic [7:0] din, gcd_result;
    
    // SPI  MEM
    logic [7:0] SPI_IN;
    logic finished;
    // synthesis only
    assign rst = rst_deb;
    
    // sim only
    //assign rst = btn;
    
    gcd_core gcd_core1 (.*);
    debounce debounce1 (
        .clk(clk),
        .rst_btn(btn),
        .rst_deb(rst_deb)
        // don't need load for this project
    );
    SPI_FSM SPI_FSM1 (
        .done(done_SPI),
        .clk(clk),
        .sclk(sclk),
        .chs(chs),
        .mosi(mosi),
        .finished(finished),
        .SPI_IN(SPI_IN)
        ); // SPI FSM for data outflow. CS, SCLK, MOSI. Only inputs: clk, SPI_IN [7:0]
    
    
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
    {start, load1, load2,wait1,wait2} statetype;
    statetype state;
    
    always_ff@(posedge clk)
    begin
    
    if(rst)
        begin
            counter_up <= 5'b0;
            state <= load1;
        end
    else
            case(state)
                load1: 
                    begin
                        counter_up <= counter_up + 5'b1; // add one to counter
                        din <= spo; // send data to GCD Core
                        if(spo == 0)
                            state <= start;
                        else 
                            state <= load2;
                    end
                load2: 
                    begin
                        counter_up <= counter_up + 5'b1; // add one to counter
                        din <= spo; // send data to GCD Core
                        if(spo == 0)
                            state <= start;  
                        else
                            state <= wait1;
                    end
                wait1:
                    begin
                        SPI_IN <= gcd_result;
                        if(done == 0)
                            state <= wait1;
                        else
                            begin
                                state <= wait2;
                                done_SPI <= 1;
                            end
                    end
                wait2: // wait state for SPI_FSM
                    begin
                        if(finished == 0)
                            state <= wait2;
                        else
                            begin
                                done_SPI <= 0;
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
            wait1: 
                begin
                    load = 0;
                end 
        endcase 
    end        
endmodule: BMEM_GCD_SPI_Wrapper
