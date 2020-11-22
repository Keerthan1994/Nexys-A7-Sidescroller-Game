// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: ece.pdx.edu:user:rojobot31:1.0
// IP Revision: 2

(* X_CORE_INFO = "rojobot31,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "rojobot31_0,rojobot31,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module rojobot31_0 (
  MotCtl_in,
  LocX_reg,
  LocY_reg,
  Sensors_reg,
  BotInfo_reg,
  worldmap_addr,
  worldmap_data,
  clk_in,
  reset,
  upd_sysregs,
  Bot_Config_reg
);

input wire [7 : 0] MotCtl_in;
output wire [7 : 0] LocX_reg;
output wire [7 : 0] LocY_reg;
output wire [7 : 0] Sensors_reg;
output wire [7 : 0] BotInfo_reg;
output wire [13 : 0] worldmap_addr;
input wire [1 : 0] worldmap_data;
input wire clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
output wire upd_sysregs;
input wire [7 : 0] Bot_Config_reg;

  rojobot31 inst (
    .MotCtl_in(MotCtl_in),
    .LocX_reg(LocX_reg),
    .LocY_reg(LocY_reg),
    .Sensors_reg(Sensors_reg),
    .BotInfo_reg(BotInfo_reg),
    .worldmap_addr(worldmap_addr),
    .worldmap_data(worldmap_data),
    .clk_in(clk_in),
    .reset(reset),
    .upd_sysregs(upd_sysregs),
    .Bot_Config_reg(Bot_Config_reg)
  );
endmodule
