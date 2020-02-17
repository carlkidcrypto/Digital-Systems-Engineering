`timescale 1ns / 1ps

module memory_cir_wrapper_tb();

    logic clk, rst;
    logic [1:0] po;
    
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
               
        //#HOLD_TIME; // offset a hold time
        
        repeat(2) #CLK_PRD; // now only wait integer clock periods
        
        rst = 1; #CLK_PRD;
        rst = 0;
        
        repeat(80) #CLK_PRD;
           
        $finish;
    end


endmodule
