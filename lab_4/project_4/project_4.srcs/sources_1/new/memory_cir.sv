`timescale 1ns / 1ps




module memory_cir( 
    input logic rst,clk,
    output logic [1:0] dout
    );
// Internal signals
logic [3:0] counter_up, counter, a;
logic [1:0] d, spo, iso;
logic we;   
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    my_test_mem_dist_mem_gen_0_0 my_test_mem1 (
     .a(a), // input [ 3: 0] a
     .d(d), // input [1 : 0] d
     .clk(clk), // input clk
     .we(we), // input we
     .spo(spo) // output [1 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------
    
// up counter
    always @(posedge clk)
    begin
    if(rst)
        counter_up <= 4'd0; // set counter to 0
    //else
       // begin
          //  if(counter_up == 4'b1111)
                counter_up <= 4'b0000;
           // else
                counter_up <= counter_up + 4'd1;
      //  end
        
     iso <= spo; // memory data out to isolated reg
     dout <= iso;   
    end 
    assign counter = counter_up;

always_comb
begin   

    we = (counter[3] & counter[0]); // write enable for mem unit
    a = counter[2:1]; // address for mem unit
    d = (dout - 1); //subtractor
end    
  
endmodule: memory_cir
