@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 4880e8d4561a4983b9934fde9972101d -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot gcd_wrapper_tb_func_impl xil_defaultlib.gcd_wrapper_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
