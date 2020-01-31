`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: lab1_tb
/////////////////////////////////////////////////////////////////
module gcd_core_tb;

// Inputs
logic clk;
logic rst;
logic load;
logic [7:0] din;
// Outputs
logic [7:0] gcd_result;
logic done;
// Instantiate the Unit Under Test (UUT)
gcd_core uut (
.clk(clk),
.rst(rst),
.load(load),
.din(din),
.gcd_result(gcd_result),
.done(done)
);

parameter CLK_PRD = 100; // 10 MHz clock
parameter HOLD_TIME = (CLK_PRD*0.3);

initial begin
clk <= 0;
forever #(CLK_PRD/2) clk = ~clk;
end

initial begin
// Initialize Inputs
rst = 0;
load = 0;
din = 8'bx;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

@(posedge clk); // align with clock edge

#HOLD_TIME; // offset a hold time

repeat(2) #CLK_PRD; // Now only wait integer clock periods

rst = 1; #CLK_PRD;

rst = 0;

repeat(2) #CLK_PRD;

load = 1; #CLK_PRD;

load = 0; din = 8'd27; #CLK_PRD;

din = 8'd18; #CLK_PRD;

din = 8'bx; #CLK_PRD;

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