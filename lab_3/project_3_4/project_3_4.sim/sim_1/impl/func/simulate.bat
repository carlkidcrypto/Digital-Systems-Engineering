@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim gcd_wrapper_tb_func_impl -key {Post-Implementation:sim_1:Functional:gcd_wrapper_tb} -tclbatch gcd_wrapper_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
