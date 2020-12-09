// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rojobot31,Vivado 2019.2" *)
module rojobot31_0(MotCtl_in, LocX_reg, LocY_reg, Sensors_reg, 
  BotInfo_reg, worldmap_addr, worldmap_data, clk_in, reset, upd_sysregs, Bot_Config_reg);
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
