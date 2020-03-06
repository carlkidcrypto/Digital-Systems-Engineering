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
    {start,cs,data1,data2,data3,data4,data5,data6,data7,data8,wait1,fine} statetype;
    statetype state;
    
// Internal  Signals
logic [9:0] SPI_Counter_Up; // 10 bit counter
logic enb;

always_ff@(negedge clk) // counter
begin
     if(done)
        begin
            sclk <= 0;
            SPI_Counter_Up <= 0;
        end 
    else
        begin
        SPI_Counter_Up <= SPI_Counter_Up + 1; // add one to counter, start the counter
        
        if(SPI_Counter_Up == 300) // 600 my estimate for 200 KHz
            sclk <= 1;
        else
            sclk <= 0;
                      
        if(SPI_Counter_Up == 301)
            SPI_Counter_Up <= 0;
            
        if(sclk)
            enb <= 1;
        else
            enb <= 0;        
      end
      
      
end // end counter

always_ff@(posedge clk,negedge enb) // begin FSM
    begin
             if(done)
                begin
                    state <= cs;
                end
             
             else
                begin       
                case(state)   
                    cs: 
                        begin
                            mosi <= 0;
                            state <= data1;
                        end
                    data1:
                        begin
                           // mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[0];
                                    state <= data2;
                                end
                            else
                               state <= data1;
                            
                        end
                    data2:
                        begin
                            //mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[1];
                                    state <= data3;
                                end
                            else
                              state <= data2;
                        end
                    data3:
                        begin
                            //mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[2];
                                    state <= data4;
                                end
                            else
                                state <= data3;
                            
                        end
                    data4:
                       begin
                            //mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[3];
                                    state <= data5;
                                end
                            else
                               state <= data4;
                            
                         end
                    data5:
                       begin
                           // mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[4];
                                    state <= data6;
                                end
                            else
                                state <= data5;
                            
                        end
                    data6:
                        begin
                           // mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[5];
                                    state <= data7;
                                end
                            else
                                state <= data6;
                                    
                        end
                    data7:
                        begin
                            //mosi <= 0;
                            if(enb)
                                begin
                                    mosi <= SPI_IN[6];
                                    state <= data8;
                                end
                            else
                                state <= data7;
                            
                        end
                    data8:
                                begin
                                   // mosi <= 0;
                                    if(enb)
                                        begin
                                            mosi <= SPI_IN[7];
                                            state <= wait1;
                                        end
                                    else
                                        state <= data8;
                                    
                                end
                    wait1:
                        begin
                            mosi <=0;
                            state <= fine;
                        end            
                    fine: 
                        begin
                            mosi <= 0;
                            state <= start;
                        end
                    default: state <= start;       
                endcase
            end
    end // end FSM
    
    always_comb // Combinational logic for FSM
    begin
        // initial values
        chs = 1; finished = 0;
        case(state)
            start: finished = 0;     
            cs: chs = 0;
            data1: chs = 0;
            data2: chs = 0;
            data3: chs = 0;
            data4: chs = 0;
            data5: chs = 0;
            data6: chs = 0;
            data7: chs = 0;
            data8: chs = 0;
            wait1: chs = 0;
            fine: begin
                    finished = 1;
                    chs = 1 ;
                  end
        endcase  
    end  
endmodule:  SPI_FSM
