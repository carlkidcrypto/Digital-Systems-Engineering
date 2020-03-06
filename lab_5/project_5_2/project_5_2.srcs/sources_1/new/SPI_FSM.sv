`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 02/17/2020
// Design Name: SPI FSM
// Module Name: SPI_FSM
// Project Name: Project 5
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////

module SPI_FSM(
    input logic done,
    input logic clk,
    output logic sclk,
    output logic chs, //chip select signal
    output logic mosi,
    output logic finished,
    input [7:0] SPI_IN
    );

// state names
    typedef enum logic [3:0]
    {start,cs,data1,data2,data3,data4,data5,data6,data7,data8,fine} statetype;
    statetype state;
    
// Internal  Signals
logic [9:0] SPI_Counter_Up; // 10 bit counter
logic [7:0] din;

assign din = SPI_IN;

always_ff@(posedge clk) // counter
begin
     if(done)
        SPI_Counter_Up <= SPI_Counter_Up + 10'b1; // add one to counter, start the counter
      else
        SPI_Counter_Up <= 0; 
                    
      if(SPI_Counter_Up == 600) // 600 my estimate for 200 KHz
        sclk <= 1;
      else
        sclk <= 0;
         
end // end counter

always_ff@(posedge clk) // begin FSM
    begin
       if(done)
            begin            
                case(state)
                    cs: 
                        begin
                            if(sclk == 1)
                                state <= data1;
                            else
                                state <= cs;
                        end
                    data1: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data2;
                                    mosi <= din[0];
                                end
                            else
                                state <= data1;
                        end
                    data2: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data3;
                                    mosi <= din[1];
                                end
                            else
                                state <= data2;
                        end
                    data3: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data4;
                                    mosi <= din[2];
                                end
                            else
                                state <= data3;
                        end
                    data4: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data5;
                                    mosi <= din[3];
                                end
                            else
                                state <= data4;
                         end
                    data5: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data6;
                                    mosi <= din[4];
                                end
                            else
                                state <= data5;
                        end
                    data6: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data7;
                                    mosi <= din[5];
                                end
                            else
                                state <= data6;
                        end
                    data7: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= data8;
                                    mosi <= din[6];
                                end
                            else
                                state <= data7;
                        end
                    data8: 
                        begin
                            if(sclk == 1)
                                begin
                                    state <= fine;
                                    mosi <= din[7];
                                end
                            else
                                state <= data8;
                        end
                    fine: 
                        begin
                            mosi <= 0;
                            state <= start;
                        end
                    default: state <= start;       
                endcase
            end
        else // If done is not asserted stay in start case
            begin
                mosi <= 0;
                state <= start;
            end         
    end // end FSM
    
    always_comb // Combinational logic for FSM
    begin
        // initial values
        chs = 1; finished = 0;
        case(state)
            start: finished = 0;     
            cs: chs = 0;
            fine: begin
                    finished = 1;
                    chs = 1 ;
                  end
        endcase  
    end  
endmodule:  SPI_FSM
