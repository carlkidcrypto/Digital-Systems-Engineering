@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim BMEM_GCD_SPI_Wrapper_tb_behav -key {Behavioral:sim_1:Functional:BMEM_GCD_SPI_Wrapper_tb} -tclbatch BMEM_GCD_SPI_Wrapper_tb.tcl -view C:/Users/carlo/Downloads/project_5_1/project_5_1.srcs/sim_1/imports/project_5_1/BMEM_GCD_SPI_Wrapper.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
