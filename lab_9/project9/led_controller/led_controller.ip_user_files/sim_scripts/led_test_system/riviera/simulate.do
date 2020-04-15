onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+led_test_system -pli "C:/Xilinx/Vivado/2016.4/lib/win64.o/libxil_vsim.dll" -L xil_defaultlib -L xpm -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_1_3 -L axi_data_fifo_v2_1_10 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L axi_protocol_converter_v2_1_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.led_test_system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {led_test_system.udo}

run -all

endsim

quit -force
