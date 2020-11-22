vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_if.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_pgm.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/kcpsm6.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_top.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/sim/rojobot31_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

