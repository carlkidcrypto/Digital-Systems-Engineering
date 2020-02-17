`timescale 1ns / 1ps



module memory_cir_tb;
//Inputs 
logic rst,clk;
//outputs
logic [1:0] dout;


// Instantiate the Unit Under Test (UUT)
memory_cir uut (.*);


initial begin
clk <= 0;
forever #100 clk = ~clk;
end


initial begin
rst = 1;
#200
rst = 0;


#1000
$finish;
end
endmodule