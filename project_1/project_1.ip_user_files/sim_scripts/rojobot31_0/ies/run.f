-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_if.v" \
  "../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_pgm.v" \
  "../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/kcpsm6.v" \
  "../../../../project_1.srcs/sources_1/ip/rojobot31_0/src/bot31_top.v" \
  "../../../../project_1.srcs/sources_1/ip/rojobot31_0/sim/rojobot31_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

