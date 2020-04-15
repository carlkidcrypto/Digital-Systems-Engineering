`timescale 1ns / 1ps
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 03/29/2020
// Design Name: sequence_wrapper
// Module Name: Genomatic
// Project Name: Project 8
// Target Devices: Zybo xc7z010clg400-1
//////////////////////////////////////////////////////////////////////////////////


module sequence_wrapper(
    input logic rst,clk,
    input logic [3:0] sw,
    output logic [3:0] led
    );
    
    
    // Internal Signals
    logic get_codon,get_gene,codon_done,clr_gene,done,stop,stop_grabber;
    logic [3:0] A,B,C,D,E,F; //
    
    codon_gene_grabber_wrapper codon_gene_grabber_wrapper_1 (.*);
    
    assign stop = stop_grabber;
    // Counters
    logic [3:0] counter_1; // counter to hold the current codon count  
    logic [2:0] counter_2;    
    // Internal Store Count Registers
    logic [3:0] Codon_1_Count,Codon_2_Count,Codon_3_Count,Codon_4_Count,Codon_5_Count,Codon_6_Count; // There will be at most six codons ever
    
        
    // state names
     typedef enum logic [5:0] {Start,Is_RegA_F,Is_RegB_F,Is_RegC_F,Is_RegD_F,Is_RegE_F,
     Is_RegA_Gene,Is_RegB_Gene,Is_RegC_Gene,Is_RegD_Gene,Is_RegE_Gene,Is_Gene_F_1,Get_Next_Gene,
     Is_Gene_F_2, Add_1_Count,STOP,Grab_Next_Codon,wait1,wait2,wait3,wait4,wait5,wait6,wait7,wait8,wait9,wait10,wait11,wait12,wait13,wait14,wait15,Fin                 
     } statetype;
     statetype state;      
           
     always_ff@(posedge clk)
     begin
        if(rst)
            begin
                counter_1 <= 0;
                counter_2 <= 0;
                Codon_1_Count <= 0;
                Codon_2_Count <= 0;
                Codon_3_Count <= 0;
                Codon_4_Count <= 0;
                Codon_5_Count <= 0;
                Codon_6_Count <= 0;
                get_codon <= 1;
                get_gene <= 0;
                done <= 0;
                stop_grabber <= 0;
                clr_gene <= 0;
            end
        else
            get_codon <= 0;
            
                         
        if(codon_done)
            begin
                state <= Is_RegA_F;
                counter_1 <= 0;
            end
        else
            begin
                case(state)
                    Start:
                        begin
                            
                            
                            if(counter_2 == 3'b001)
                                Codon_1_Count <= counter_1;
                            else if(counter_2 == 3'b010)
                                Codon_2_Count <= counter_1;
                            else if(counter_2 == 3'b011)
                                Codon_3_Count <= counter_1;
                            else if(counter_2 == 3'b100)
                                Codon_4_Count <= counter_1;
                            else if(counter_2 == 3'b101)
                                Codon_5_Count <= counter_1;
                            else if(counter_2 == 3'b110)
                                Codon_6_Count <= counter_1;
                            else
                                state <= Fin;
                                
                            clr_gene <= 0;
                            get_codon <= 0;  
                        end
                /* States for RegA */
                    Is_RegA_F:
                        begin
                            if(A == 4'b1111) // If RegA holds an F.
                                state <= STOP;
                            else
                                state <= Is_RegA_Gene;
                        end
                    Is_RegA_Gene:
                        begin
                            if(A ==  F) // gene is RegF
                                begin
                                    get_gene <= 1;
                                    state <= wait7;
                                end
                            else
                                begin
                                    state <= Is_Gene_F_1;
                                end
                        end
                    wait7:
                        begin
                            get_gene <= 0;
                            state <= wait8;
                        end
                    wait8: state <= Is_RegB_F;
                    Is_Gene_F_1:
                        begin
                            if(F == 4'b1111) // is current gene an F
                                begin
                                    get_gene <= 1;
                                    state <= wait1;
                                end
                            else
                                begin
                                    get_gene <= 1;
                                    state <= wait4;
                                end           
                        end
                   wait4: 
                        begin
                            get_gene <= 0;
                            state <= wait5;    
                        end
                   wait5: state <= wait6;
                   wait6: state <= Is_RegA_F;
                   wait1: 
                        begin
                         get_gene <= 0;
                         state <= wait2;
                        end
                   wait2: state <= wait3;
                   wait3: state <= Is_Gene_F_2;
                   Is_Gene_F_2:
                        begin
                            if(F == 4'b1111)
                                begin
                                    get_gene <= 0;
                                    state <= STOP;
                                end
                            else
                                begin
                                    get_gene <= 0;
                                    state <= Is_RegA_F;
                                end
                        end
                /* States for RegB */
                    Is_RegB_F:
                        begin
                            get_gene <= 0;
                            if(B == 4'b1111) // If RegB holds an F
                                begin
                                    state <= Add_1_Count;
                                end
                            else
                                state <= Is_RegB_Gene;  
                        end
                   Is_RegB_Gene:
                        begin
                            if(B == F)
                                begin
                                     get_gene <= 1;
                                    state <= wait9;
                                end
                            else
                                state <= Is_Gene_F_1;
                        end
                   wait9:
                        begin
                            get_gene <= 0;
                            state  <=  wait10;
                        end
                  wait10: state <= Is_RegC_F;
                  /* States for RegC */
                  Is_RegC_F:
                        begin
                            get_gene <= 0;
                            if(C == 4'b1111)
                                begin
                                    state <=  Add_1_Count;
                                end
                            else
                                state <= Is_RegC_Gene;
                        end
                  Is_RegC_Gene:
                        begin
                            if(C == F)
                                begin
                                     get_gene <= 1;
                                    state <= wait11;
                                end
                            else
                                state <= Is_Gene_F_1; 
                        end
                  wait11:
                        begin
                            get_gene <= 0;
                            state <= wait12;
                        end
                  wait12: state <= Is_RegD_F;
                  /* States for  RegD */
                  Is_RegD_F:
                        begin
                            get_gene <= 0;
                            if(D == 4'b1111)
                                begin
                                    state <= Add_1_Count;
                                end
                            else
                                state <= Is_RegD_Gene;
                        end
                  Is_RegD_Gene:
                        begin
                            if(D == F)
                                begin
                                    get_gene <= 1;
                                    state <= wait13;
                                end
                            else
                                state <= Is_Gene_F_1;
                        end
                  wait13:
                        begin
                            get_gene <= 0;
                            state <= wait11;
                        end
                  wait14: state <=  Is_RegE_F;
                  Is_RegE_F:
                        begin
                            if(E == 4'b1111)
                                begin                                   
                                    state <= Add_1_Count;
                                end
                            else
                                state <= Is_RegE_Gene;
                        end            
                  Is_RegE_Gene:
                        begin
                            if(E == F)
                                begin
                                    get_gene <= 1;
                                    state <= wait15;
                                end
                            else
                                state <= Is_Gene_F_1;
                        end
                  wait15:
                        begin
                            get_gene <= 0;
                            counter_1 <= counter_1 + 1;
                            state <= Is_RegA_F;
                        end
                  Add_1_Count:
                        begin
                            get_gene <= 0;
                            counter_1 <=  counter_1 + 1;
                            state <= Is_RegA_F;  
                        end
                  STOP: 
                        begin
                            counter_2 <= counter_2 + 1;            
                            state <= Grab_Next_Codon;
                        end
                  Grab_Next_Codon:
                        begin
                          
                            get_codon <= 1;
                            clr_gene <= 1;
                            state <= Start;
                        end
                 Fin:
                    begin
                        stop_grabber <= 1;
                        done <= 1;
                        state <= Fin;
                    end
                endcase
            end
               
     end
     
     always_comb
        begin
            case(sw)
                4'b0001: led = Codon_1_Count;
                4'b0010: led = Codon_2_Count;
                4'b0011: led = Codon_3_Count;
                4'b0100: led = Codon_4_Count;
                4'b0101: led = Codon_5_Count;
                4'b0110: led = Codon_6_Count;
                
                default: led = done;
            endcase
        end     
       
endmodule: sequence_wrapper
