@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 032b8dda55a4498487eb2e34ee18dad6 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot memory_cir_wrapper_tb_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 xil_defaultlib.memory_cir_wrapper_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
