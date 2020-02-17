`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/17/2020
// Design Name: Curius Memory Circuit Wrapper TB
// Module Name: mem_cir_wrapper_tb
// Project Name: Project 4
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module memory_cir_wrapper_tb;
    // Inputs
    logic clk, rst;
    // Outputs
    logic [1:0] dout;
    
    mem_cir_wrapper uut (.*);
                
    // Generate clock
    parameter CLK_PRD = 100; // 10MHz 
    parameter HOLD_TIME = (CLK_PRD * 0.3);
    
    initial begin
       clk <= 0;
       forever #(CLK_PRD/2) clk = ~clk;
    end
    
    
    
    initial begin
        rst = 0;
       
        @(posedge clk); // align with clock edge
        
        rst = 1; #CLK_PRD;
        rst = 0;
        
        repeat(80) #CLK_PRD;
           
        $finish;
    end


endmodule
