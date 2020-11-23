onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+rojobot31_0 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rojobot31_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {rojobot31_0.udo}

run -all

endsim

quit -force
