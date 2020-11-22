onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib world_map_lr_opt

do {wave.do}

view wave
view structure
view signals

do {world_map_lr.udo}

run -all

quit -force
