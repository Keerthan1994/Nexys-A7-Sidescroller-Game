onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib world_map_loop_opt

do {wave.do}

view wave
view structure
view signals

do {world_map_loop.udo}

run -all

quit -force
