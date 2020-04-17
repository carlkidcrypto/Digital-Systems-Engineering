`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Idaho
// Engineer: Carlos Santos
// 
// Create Date: 04/10/2020
// Design Name: fact_machine_wrapper
// Module Name: fact_machine_wrapper
// Project Name: Project 10
// Target Devices: Zybo xc7z010clg400-1
// This module is designed to calculate the factorial of an number "n" that is
// given. It will do it by addition instead of multiplication.
// We have 2 base cases. if n = 0 then result is 1.
// If n = 1 then result is 1.
//////////////////////////////////////////////////////////////////////////////////

module fact_machine_wrapper(
    input logic rst, go, clk,
    input logic [31:0] n,
    output logic [31:0] result,
    output logic done
    );
    
    // internal registers
    logic [31:0] sum_reg;
    logic [31:0] add_res_reg;
    
    // internal counters
    logic [31:0] cnt_1;
    logic [31:0] cnt_2;
    
    // state names
    typedef enum logic [3:0] {start, n_grt_0, inc_cnt1, cnt_grt_n, cnt_eq_1, set_sum_reg_to_1_1, 
                              add_sum_reg_cnt_times, update_sum_reg, ld_res_from_sum_reg, set_sum_reg_to_0,send_done, set_sum_reg_to_1_2                 
         } statetype;
         statetype state;
    
    //  Fact_Machine FSM
    always_ff@(posedge clk)
    begin
        if(rst)
            begin
                cnt_1 <= 0;
                cnt_2 <= 0;
                sum_reg <= 0;
                add_res_reg <= 0;
                result <= 0;
                done <= 0;
                state <= start;
            end
        else
            begin
                case(state)
                    start:
                        begin
                            if(go)
                                begin
                                    state <= n_grt_0;
                                end
                            else
                                begin
                                    state <= start;
                                end
                        end
                    
                    n_grt_0:
                        begin
                            if(n > 0)
                                begin
                                    state <= inc_cnt1;
                                end
                            else
                                begin
                                    state <= set_sum_reg_to_1_2;
                                end
                        end
                    
                    inc_cnt1:
                        begin
                            cnt_1 = cnt_1 + 1;
                            state <= cnt_grt_n;
                        end
                    
                    cnt_grt_n:
                        begin
                            if(cnt_1 > n)
                                begin
                                    state <= ld_res_from_sum_reg;
                                end
                            else
                                begin
                                    state <= cnt_eq_1;
                                end
                        end
                    
                    cnt_eq_1:
                        begin
                            if(cnt_1 == 1)
                                begin
                                    state <= set_sum_reg_to_1_1;
                                end
                            else
                                begin
                                    state <= add_sum_reg_cnt_times;
                                end
                        end
                    
                    add_sum_reg_cnt_times:
                        begin
                        // add whatever value is in sum_reg cnt_1 times
                        // Note: I tried a SystemVerilog For Loop. It didn't work
                        // I got error: [Synth 8-3380] loop condition does not converge after 2000 iterations 
                        
                            if(cnt_2 > (cnt_1 - 1))
                                begin
                                    state <= update_sum_reg;     
                                end
                            else
                                begin
                                    add_res_reg <= add_res_reg + sum_reg;
                                    cnt_2 <= cnt_2 + 1;  
                                end
                        end
                    
                    update_sum_reg:
                        begin
                            cnt_2 <= 0;
                            sum_reg <= add_res_reg;
                            add_res_reg <= 0; // clear the additon result reg
                            state <= inc_cnt1;   
                        end
                    
                    ld_res_from_sum_reg:
                        begin
                            result <= sum_reg;
                            state <= set_sum_reg_to_0;
                        end
                        
                    set_sum_reg_to_0:
                        begin
                            sum_reg <= 0;
                            state <= send_done;
                        end
                    
                    set_sum_reg_to_1_1:
                        begin
                            sum_reg <= 1;
                            state <= inc_cnt1;
                        end
                   
                    set_sum_reg_to_1_2:
                        begin
                            sum_reg <= 1;
                            state <= ld_res_from_sum_reg;
                        end
                   
                    send_done:
                        begin
                            done <= 1;
                            if(go)
                                begin
                                    cnt_1 <= 0;
                                    result <= 0;
                                    state <= n_grt_0;
                                    done <= 0;
                                end
                                
                            else if(rst)
                                begin
                                    done <= 0;
                                    state <= start;
                                end
                            else
                                begin
                                    done <= 1;
                                    state <= send_done;
                                end
                        end
                    
                endcase
            end    
    end    
endmodule: fact_machine_wrapper