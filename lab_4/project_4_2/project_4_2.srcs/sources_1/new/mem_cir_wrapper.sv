`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/17/2020
// Design Name: Curius Memory Circuit Wrapper
// Module Name: mem_cir_wrapper
// Project Name: Project 4
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module mem_cir_wrapper(
    input logic rst,
    input logic clk,
    output logic [1:0] dout
    );
    
    // Internal Signals
    logic [3:0] counter_up, a;
    logic [1:0] d,spo,iso; //iso is the isolated register
    logic we;  
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    mem mem1 (
      .a(a),      // input wire [3 : 0] a
      .d(d),      // input wire [1 : 0] d
      .clk(clk),  // input wire clk
      .we(we),    // input wire we
      .spo(spo)  // output wire [1 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------  

    
    always_ff@(posedge clk)
    begin
        if(rst)
            counter_up <= 4'b0000; // set the counter to 0
        else
            counter_up <= counter_up + 4'b0001; // add one to counter
    end
    
    always_comb
    begin
        // memory inputs
        a[1:0] = counter_up[2:1]; // address for the memory unit
        a[3:2] = 2'b00; // set the upper  two bits to 0.
        we = (counter_up[0] & counter_up[3]); // the and gate for the write  enable signal
        
        // memory ouput
        iso <= spo; // send data to isolated register
        dout <= iso; // pass data to dout
        d <= (dout - 1); // subtractor for d input of memory unit
        
    end
    
    
    
endmodule: mem_cir_wrapper
