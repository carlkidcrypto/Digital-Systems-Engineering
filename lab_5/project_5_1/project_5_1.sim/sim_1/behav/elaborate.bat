@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto ee93b5bbbbde42648259f998ff9d478e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L dist_mem_gen_v8_0_11 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot BMEM_GCD_SPI_Wrapper_tb_behav xil_defaultlib.BMEM_GCD_SPI_Wrapper_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
