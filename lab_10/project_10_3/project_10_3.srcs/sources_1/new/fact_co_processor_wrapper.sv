`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 03:02:16 PM
// Design Name: 
// Module Name: fact_co_processor_wrapper
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


module fact_co_processor_wrapper(
    input logic [31:0] n,
    input logic rst, go, src_clk, des_clk,
    output logic done,
    output [31:0] result
    );
    
    //Internal Siganls
    logic rst_fmw1,go_fmw1,done_fwm1;
    logic [31:0] result_fmw1,n_fmw1;
    
    fact_machine_wrapper fmw1 (
    .rst(rst_fmw1),
    .go(go_fmw1),
    .clk(des_clk),
    .n(n_fmw1),
    .result(result_fmw1),
    .done(done_fmw1)
    );
        
    assign result = result_fmw1;
    assign done = done_fmw1;
    assign n_fmw1 = n;
    
    logic [2:0] go_reg;
    logic [2:0] rst_reg;
     
    always_ff@(posedge des_clk)
    begin
        
        // go fmw1 signal in
        go_reg[0] <= go;
        go_reg[1] <= go_reg[0];
        go_reg[2] <= go_reg[1];
        go_fmw1 <= go_reg[2] ^ go_reg[1];
        
         // rst fmw1 signal in
         rst_reg[0] <= rst;
         rst_reg[1] <= rst_reg[0];
         rst_reg[2] <= rst_reg[1];
         rst_fmw1 <= rst_reg[2] ^ rst_reg[1];
                        
    end    
    
endmodule
