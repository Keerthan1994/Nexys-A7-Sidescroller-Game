vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_if.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_pgm.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/kcpsm6.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_top.v" \
"../../../../project_1.srcs/sources_1/ip/rojobot31_0/sim/rojobot31_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
