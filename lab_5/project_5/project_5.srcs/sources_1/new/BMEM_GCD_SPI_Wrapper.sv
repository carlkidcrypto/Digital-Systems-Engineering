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
    input logic rst,
    input logic clk,
    output logic [7:0] dout
    );
    
    // Internal Signals
    logic [4:0] counter_up, a;
    logic [7:0] d,spo,iso; //iso is the isolated register
    logic we;  
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    mem mem1 (
      .a(a),      // input wire [4 : 0] a
      .d(d),      // input wire [7 : 0] d
      .clk(clk),  // input wire clk
      .we(we),    // input wire we
      .spo(spo)  // output wire [1 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------  

    
    always_ff@(posedge clk)
    begin
        if(rst)
            counter_up <= 5'b0; // set the counter to 0
        else
        begin
            counter_up <= counter_up + 5'b1; // add one to counter
            // memory ouput
            iso <= spo; // send data to isolated register
            dout <= iso; // pass data to dout 
        end   
    end
    
    always_comb
    begin
        // memory inputs
        a = counter_up; // address for the memory unit
        we = 0; // write  enable signal
        d = 0;
    end
        
endmodule: BMEM_GCD_SPI_Wrapper
