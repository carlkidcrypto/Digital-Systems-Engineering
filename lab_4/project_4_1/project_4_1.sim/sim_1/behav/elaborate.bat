@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 81cb9d459816466b831f9b6a93624255 -m64 --debug typical --relax --mt 2 -L dist_mem_gen_v8_0_11 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot memory_cir_wrapper_tb_behav xil_defaultlib.memory_cir_wrapper_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
