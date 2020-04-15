`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 03/29/2020
// Design Name: mem_addr_wrapper
// Module Name: Genomatic
// Project Name: Project 8
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////


module mem_addr_wrapper(
    input logic up1,
    input logic up2,
    input logic rst,clr,stop_mem,
    input logic clk,
    output logic [3:0] codon,
    output logic [3:0] gene
    );
    
    // Internal Signals
    logic [4:0] counter_1, a1; //codon mem
    logic [7:0] counter_2, a2; // gene mem
    logic [3:0] spo1,spo2; // codon and gene mem output
        
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    codon_mem codon_mem_1 (
      .a(a1),      // input wire [4 : 0] a
      .spo(spo1)  // output wire [3 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------
    
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    gene_mem gene_mem_1 (
      .a(a2),      // input wire [7 : 0] a
      .spo(spo2)  // output wire [3 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------
    

/* ----- BEGIN: Address Code for Codon Mem and Gene Mem ----- */    
    always_ff@(posedge clk)
        begin
            if(rst)
                counter_1 <= 0; // set the counter to 0     
            else
                if(up1) // signal to increment counter
                    counter_1 <= counter_1 + 1; // add one to counter
                else
                    counter_1 <= counter_1; // nothin changes it stays the same
                           
            if(rst)
                counter_2 <= 0; // set the counter to 0
            else
                if(up2) // signal to increment counter
                    counter_2 <= counter_2 + 1; // add one to counter
                else if(clr)
                    counter_2 <= 0;
                else
                    counter_2 <= counter_2; // nothing changes it stays the sam
           if(stop_mem)
                begin
                    counter_1 <= 0;
                    counter_2 <= 0;
                end
                            
        end
        
        always_comb
        begin
            // memory inputs
            a1 = counter_1; // address for codon mem unit
            a2 = counter_2; // address for gene mem unit
            
            // memory ouput
            codon <= spo1; // send data to isolated register
            gene <= spo2; // pass data to dout
            
        end
/* ----- END: Address Code for Codon Mem and Gene Mem ----- */  
endmodule: mem_addr_wrapper
