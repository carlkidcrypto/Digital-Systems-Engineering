@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim memory_cir_wrapper_tb_time_impl -key {Post-Implementation:sim_1:Timing:memory_cir_wrapper_tb} -tclbatch memory_cir_wrapper_tb.tcl -view C:/Users/carlo/Downloads/lab_4/project_4_2/project_4_2.srcs/sim_1/imports/lab_4/memory_circuit_wrapper.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
