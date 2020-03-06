`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/17/2020
// Design Name: BMEM GCD SPI Wrapper TB
// Module Name: BMEM_GCD_SPI_Wrapper_tb
// Project Name: Project 5
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module BMEM_GCD_SPI_Wrapper_tb;
    // Inputs
    logic clk, btn;
    // Outputs
    logic [7:0] dout;
    
    BMEM_GCD_SPI_Wrapper uut (.*);
                
    // Generate clock
    parameter CLK_PRD = 100; // 10MHz 
    parameter HOLD_TIME = (CLK_PRD * 0.3);
    
    initial begin
       clk <= 0;
       forever #(CLK_PRD/2) clk = ~clk;
    end
    
    
    
    initial begin
        btn = 0;
       
        @(posedge clk); // align with clock edge
        
        btn = 1; #CLK_PRD;
        btn = 0;
        
        repeat(80) #CLK_PRD;
           
        $finish;
    end


endmodule
