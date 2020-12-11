// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Dec 10 16:38:33 2020
// Host        : Ragnorak running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/world_map_lr/world_map_lr_stub.v
// Design      : world_map_lr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module world_map_lr(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[13:0],douta[1:0],clkb,addrb[13:0],doutb[1:0]" */;
  input clka;
  input [13:0]addra;
  output [1:0]douta;
  input clkb;
  input [13:0]addrb;
  output [1:0]doutb;
endmodule
