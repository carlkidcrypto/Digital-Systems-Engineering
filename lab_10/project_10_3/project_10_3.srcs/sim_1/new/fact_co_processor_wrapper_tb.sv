`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2020 08:38:01 PM
// Design Name: 
// Module Name: mem_addr_wrapper_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fact_co_processor_wrapper_tb;
        
   //inputs
   logic src_clk,des_clk,rst,go;
   logic [31:0] n;
    
   //outputs
   logic done;
   logic [31:0] result;
    
   fact_co_processor_wrapper uut(.*);
    
   // Generate src clock
   parameter SRC_CLK_PRD = 150; 
   parameter SRC_HOLD_TIME = (SRC_CLK_PRD * 0.3);
   
   // Generate des clock
   parameter DES_CLK_PRD = 100; 
   parameter DES_HOLD_TIME = (DES_CLK_PRD * 0.3);
        
   initial begin
        src_clk <= 0;
        forever #(SRC_CLK_PRD/2) src_clk = ~src_clk;
   end
   
   initial begin
        des_clk <= 0;
        forever #(DES_CLK_PRD/2) des_clk = ~des_clk;
   end
   
   initial begin
   rst = 0;
   go = 0;
   n = 4;   
   @(posedge src_clk); // align with clock edge
           
   rst = 1; repeat(2)#SRC_CLK_PRD;
   rst = 0; repeat(2) #SRC_CLK_PRD;
   go = 1; repeat(2) #SRC_CLK_PRD;
   go = 0; repeat(2) #SRC_CLK_PRD;
   repeat(30) #SRC_CLK_PRD;
   n = 9; #SRC_CLK_PRD;
   go = 1; repeat(2) #SRC_CLK_PRD;
   go = 0; repeat(2) #SRC_CLK_PRD;          
   repeat(75) #SRC_CLK_PRD;
   n = 12; #SRC_CLK_PRD;
   go = 1; repeat(2) #SRC_CLK_PRD;
   go = 0; repeat(2) #SRC_CLK_PRD;        
   repeat(100) #SRC_CLK_PRD;
              
   $finish;
   end
      
    
    
endmodule
