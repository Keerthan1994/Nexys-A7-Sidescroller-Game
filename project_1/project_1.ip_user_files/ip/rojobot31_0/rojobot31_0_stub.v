// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Nov 22 18:40:14 2020
// Host        : Ragnorak running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_stub.v
// Design      : rojobot31_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rojobot31,Vivado 2019.2" *)
module rojobot31_0(MotCtl_in, LocX_reg, LocY_reg, Sensors_reg, 
  BotInfo_reg, worldmap_addr, worldmap_data, clk_in, reset, upd_sysregs, Bot_Config_reg)
/* synthesis syn_black_box black_box_pad_pin="MotCtl_in[7:0],LocX_reg[7:0],LocY_reg[7:0],Sensors_reg[7:0],BotInfo_reg[7:0],worldmap_addr[13:0],worldmap_data[1:0],clk_in,reset,upd_sysregs,Bot_Config_reg[7:0]" */;
  input [7:0]MotCtl_in;
  output [7:0]LocX_reg;
  output [7:0]LocY_reg;
  output [7:0]Sensors_reg;
  output [7:0]BotInfo_reg;
  output [13:0]worldmap_addr;
  input [1:0]worldmap_data;
  input clk_in;
  input reset;
  output upd_sysregs;
  input [7:0]Bot_Config_reg;
endmodule
