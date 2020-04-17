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
    logic ps_out_1,ps_out_2,ps_out_3;
    logic done_fact_machine_wrapper;
    
    // For the rst signal
    pulse_sync pulse_sync_1(
        .ps_clk(src_clk),
        .ps_in(rst),
        .ps_out(ps_out_1)
    );
    // For the go signal
    pulse_sync pulse_sync_2(
        .ps_clk(src_clk),
        .ps_in(go),
        .ps_out(ps_out_2)
    );
      
    fact_machine_wrapper fact_machine_wrapper_1(
        .rst(ps_out_1),
        .go(ps_out_2),
        .clk(des_clk),
        .n(n),
        .result(result),
        .done(done_fact_machine_wrapper)
    );
    
    always_ff@(posedge src_clk)
    begin
        //2-FF sync for done signal to src domain
        logic [1:0] FF_SYNC;
        FF_SYNC[0] <= done_fact_machine_wrapper;
        FF_SYNC[1] <= FF_SYNC[0];
        done <= FF_SYNC[1];
    end
    
endmodule
