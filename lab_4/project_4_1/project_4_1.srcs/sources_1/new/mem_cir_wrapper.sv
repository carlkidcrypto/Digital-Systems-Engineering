`timescale 1ns / 1ps

module mem_cir_wrapper(
    input logic clk,
    input logic rst,
    output logic [1:0] po
    );
    
    // internal signals
    logic [3:0] count, a;
    logic [1:0] d, spo;
    logic we; 
            
        
    // Distributed memory
    mem mem1 (
      .a(a),      // input wire [3 : 0] a
      .d(d),      // input wire [1 : 0] d
      .clk(clk),  // input wire clk
      .we(we),    // input wire we
      .spo(spo)  // output wire [1 : 0] spo
    );
    // --------------------
    
    
    always_ff@(posedge clk)
    begin
        // registered mem output 
        po <= spo;
      
        // counter     
        if(rst) count <= 4'b0000;
        else count <= count+1;
    end
    
    
    always_comb
    begin
        // mem input logic
        a[1:0] = count[2:1];
        a[3:2] = 2'b00;
        we = count[0] & count[3];
        
        // mem output logic
        d = po-1; 
    end

    
    
endmodule
