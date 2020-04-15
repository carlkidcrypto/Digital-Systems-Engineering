`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 04/10/2020
// Design Name: pulse sync
// Module Name: pulse_sync
// Project Name: Project 10
// Target Devices: Zybo xc7z010clg400-1
// This module will sync signals between clock domains.
// ps_clk needs to be connect to the receive domain clock.
//////////////////////////////////////////////////////////////////////////////////

module pulse_sync(
    input logic ps_clk, // the clock to sync with
    input logic ps_in, // the input signal to sync
    output logic ps_out // synced output signal
    );
    
    // internal 2-FF sync
    logic [1:0] FF_sync;
    
    always_ff@(posedge ps_clk)
    begin
        FF_sync[0] <= ps_in;
        FF_sync[1] <= FF_sync[0];
        ps_out <= FF_sync[1];
    end    
endmodule: pulse_sync