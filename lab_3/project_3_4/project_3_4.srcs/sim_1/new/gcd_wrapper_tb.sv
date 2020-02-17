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
// Outputs
logic [3:0] led;



// internal signals
logic [7:0] d_temp, d_temp2;// reg to store button input data: gcd_wrapper

logic done;
logic [7:0] result;
logic [7:0] din;

// Instantiate the Unit Under Test (UUT)
gcd_wrapper uut (
    .clk(clk),
    .btn(btn),
    .sw(sw),
    .led(led)
    );

gcd_core gcd_core1 (
    .clk(clk),
    .rst(btn[0]), // rst button internal 0
    .load(btn[1]),
    .din(din),
    .done(done),
    .gcd_result(result)
);



initial begin
    clk <= 0;
    forever #50 clk = ~clk; // clock period
end

initial begin

// initial values
btn = 2'b0; sw = 4'b0;
d_temp = 8'b0; d_temp2 = 8'b0;
din = 8'b0;

@(posedge clk) // begin at clock edge
//#30 // offset a bit

btn[0] = 1; // rst
#50
btn[0] = 0;
#50
sw = 4'b1010; // x upper
#50
d_temp[7:4] = sw; 
#50
sw = 4'b1110; // x lower
#50
d_temp[3:0] = sw;
#50
sw = 4'b1111;
#50
d_temp2[7:4] = sw;
#50
sw = 4'b0010;
#50
d_temp2[3:0] = sw;
@(posedge clk)
btn[1] = 1;
#50
@(posedge clk)
din = d_temp;
din = d_temp2;
#100
$finish;
end


endmodule: gcd_wrapper_tb
