`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/7/2020
// Design Name: GCD Wrapper test bench for Project 3
// Module Name: gcd_wrapper_tb
// Project Name: Project 3
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module gcd_wrapper_tb;
// Inputs
logic [1:0] btn; // rst = btn[0], load = btn[1]
logic [3:0] sw;
logic clk;
logic done;
// Outputs
logic [3:0] led;

// Instantiate the Unit Under Test (UUT)
gcd_wrapper uut (.*);

parameter CLK_PRD = 100; // 10 MHz clock
parameter HOLD_TIME = (CLK_PRD*0.3);

initial begin
clk <= 0;
forever #(CLK_PRD/2) clk = ~clk;
end

initial begin
// Initialize Inputs
btn = 2'b00;
sw = 3'b000;
//led = 4'b0000;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

@(posedge clk); // align with clock edge

#HOLD_TIME; // offset a hold time

btn[0] = 1; //rst 1
repeat(2) #CLK_PRD; // Now only wait integer clock periods
btn[0] = 0; // rst 0
repeat(2) #CLK_PRD; // Now only wait integer clock periods
sw = 3'b111; // x upper
btn[1] = 1; // load 1
#20
btn[1] = 0; // load 0
#20
sw = 3'b101; // x lower
btn[1] = 1; // load 1
#20
btn[1] = 0; // load 0
#20
sw = 3'b110; // y upper
btn[1] = 1; // load 1
#20
btn[1] = 0; // load 0
#20
sw = 3'b111; // y lower
btn[1] = 1; // load 1
#20
btn[1] = 0; // load 0
repeat(2) #CLK_PRD;


begin : run_loop
forever
begin
@(posedge clk);
if (done) disable run_loop;
end
end // run_loops

$finish;

end
endmodule
