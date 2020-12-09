// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec  8 13:35:29 2020
// Host        : Ragnorak running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/rromano/Documents/GitHub/Nexys-A7-Sidescroller-Game/project_1/project_1.srcs/sources_1/ip/rojobot31_0/rojobot31_0_sim_netlist.v
// Design      : rojobot31_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rojobot31_0,rojobot31,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rojobot31,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module rojobot31_0
   (MotCtl_in,
    LocX_reg,
    LocY_reg,
    Sensors_reg,
    BotInfo_reg,
    worldmap_addr,
    worldmap_data,
    clk_in,
    reset,
    upd_sysregs,
    Bot_Config_reg);
  input [7:0]MotCtl_in;
  output [7:0]LocX_reg;
  output [7:0]LocY_reg;
  output [7:0]Sensors_reg;
  output [7:0]BotInfo_reg;
  output [13:0]worldmap_addr;
  input [1:0]worldmap_data;
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output upd_sysregs;
  input [7:0]Bot_Config_reg;

  wire [7:0]BotInfo_reg;
  wire [7:0]Bot_Config_reg;
  wire [7:0]LocX_reg;
  wire [7:0]LocY_reg;
  wire [7:0]MotCtl_in;
  wire [7:0]Sensors_reg;
  wire clk_in;
  wire reset;
  wire upd_sysregs;
  wire [13:0]worldmap_addr;
  wire [1:0]worldmap_data;

  rojobot31_0_rojobot31 inst
       (.BotInfo_reg(BotInfo_reg),
        .Bot_Config_reg(Bot_Config_reg),
        .LocX_reg(LocX_reg),
        .LocY_reg(LocY_reg),
        .MotCtl_in(MotCtl_in),
        .Sensors_reg(Sensors_reg),
        .clk_in(clk_in),
        .reset(reset),
        .upd_sysregs(upd_sysregs),
        .worldmap_addr(worldmap_addr),
        .worldmap_data(worldmap_data));
endmodule

(* ORIG_REF_NAME = "bot31_if" *) 
module rojobot31_0_bot31_if
   (E,
    upd_sysregs,
    \BotInfo_int_reg[0]_0 ,
    \BotInfo_int_reg[1]_0 ,
    \BotInfo_int_reg[2]_0 ,
    \BotInfo_int_reg[3]_0 ,
    \BotInfo_int_reg[4]_0 ,
    \BotInfo_int_reg[5]_0 ,
    \BotInfo_int_reg[6]_0 ,
    \BotInfo_int_reg[7]_0 ,
    Q,
    \DataOut_reg[7]_0 ,
    LocX_reg,
    LocY_reg,
    BotInfo_reg,
    Sensors_reg,
    worldmap_addr,
    load_sys_regs_reg_0,
    clk_in,
    reset,
    upd_sysregs_reg_0,
    \DataOut_reg[0]_0 ,
    MotCtl_in,
    \LocX_int_reg[7]_0 ,
    D,
    \BotInfo_int_reg[7]_1 ,
    \LocY_int_reg[7]_0 ,
    \Sensors_int_reg[7]_0 ,
    \DataOut_reg[7]_1 ,
    \MapX_reg[6]_0 ,
    \MapY_reg[6]_0 );
  output [0:0]E;
  output upd_sysregs;
  output \BotInfo_int_reg[0]_0 ;
  output \BotInfo_int_reg[1]_0 ;
  output \BotInfo_int_reg[2]_0 ;
  output \BotInfo_int_reg[3]_0 ;
  output \BotInfo_int_reg[4]_0 ;
  output \BotInfo_int_reg[5]_0 ;
  output \BotInfo_int_reg[6]_0 ;
  output \BotInfo_int_reg[7]_0 ;
  output [7:0]Q;
  output [7:0]\DataOut_reg[7]_0 ;
  output [7:0]LocX_reg;
  output [7:0]LocY_reg;
  output [7:0]BotInfo_reg;
  output [7:0]Sensors_reg;
  output [13:0]worldmap_addr;
  input load_sys_regs_reg_0;
  input clk_in;
  input reset;
  input upd_sysregs_reg_0;
  input [1:0]\DataOut_reg[0]_0 ;
  input [7:0]MotCtl_in;
  input [0:0]\LocX_int_reg[7]_0 ;
  input [7:0]D;
  input [0:0]\BotInfo_int_reg[7]_1 ;
  input [0:0]\LocY_int_reg[7]_0 ;
  input [0:0]\Sensors_int_reg[7]_0 ;
  input [7:0]\DataOut_reg[7]_1 ;
  input [0:0]\MapX_reg[6]_0 ;
  input [0:0]\MapY_reg[6]_0 ;

  wire \BotInfo_int_reg[0]_0 ;
  wire \BotInfo_int_reg[1]_0 ;
  wire \BotInfo_int_reg[2]_0 ;
  wire \BotInfo_int_reg[3]_0 ;
  wire \BotInfo_int_reg[4]_0 ;
  wire \BotInfo_int_reg[5]_0 ;
  wire \BotInfo_int_reg[6]_0 ;
  wire \BotInfo_int_reg[7]_0 ;
  wire [0:0]\BotInfo_int_reg[7]_1 ;
  wire \BotInfo_int_reg_n_0_[0] ;
  wire \BotInfo_int_reg_n_0_[1] ;
  wire \BotInfo_int_reg_n_0_[2] ;
  wire \BotInfo_int_reg_n_0_[3] ;
  wire \BotInfo_int_reg_n_0_[4] ;
  wire \BotInfo_int_reg_n_0_[5] ;
  wire \BotInfo_int_reg_n_0_[6] ;
  wire \BotInfo_int_reg_n_0_[7] ;
  wire [7:0]BotInfo_reg;
  wire [7:0]D;
  wire [1:0]\DataOut_reg[0]_0 ;
  wire [7:0]\DataOut_reg[7]_0 ;
  wire [7:0]\DataOut_reg[7]_1 ;
  wire [0:0]E;
  wire \LocX[6]_i_2_n_0 ;
  wire \LocX[6]_i_3_n_0 ;
  wire \LocX[6]_i_4_n_0 ;
  wire \LocX[6]_i_5_n_0 ;
  wire [6:0]LocX_int;
  wire [0:0]\LocX_int_reg[7]_0 ;
  wire [7:0]LocX_int_set;
  wire [7:0]LocX_reg;
  wire \LocY[2]_i_1_n_0 ;
  wire \LocY[2]_i_2_n_0 ;
  wire \LocY[7]_i_1_n_0 ;
  wire [7:0]LocY_int;
  wire [0:0]\LocY_int_reg[7]_0 ;
  wire [7:0]LocY_reg;
  wire [0:0]\MapX_reg[6]_0 ;
  wire [0:0]\MapY_reg[6]_0 ;
  wire [7:0]MotCtl_in;
  wire [7:0]Q;
  wire [0:0]\Sensors_int_reg[7]_0 ;
  wire [7:0]Sensors_reg;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire clk_in;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire load_sys_regs_reg_0;
  wire [7:0]p_0_in;
  wire reset;
  wire upd_sysregs;
  wire upd_sysregs_reg_0;
  wire [13:0]worldmap_addr;
  wire [0:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__0_O_UNCONNECTED ;

  FDCE \BotInfo_int_reg[0] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[0]),
        .Q(\BotInfo_int_reg_n_0_[0] ));
  FDCE \BotInfo_int_reg[1] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[1]),
        .Q(\BotInfo_int_reg_n_0_[1] ));
  FDCE \BotInfo_int_reg[2] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[2]),
        .Q(\BotInfo_int_reg_n_0_[2] ));
  FDCE \BotInfo_int_reg[3] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[3]),
        .Q(\BotInfo_int_reg_n_0_[3] ));
  FDCE \BotInfo_int_reg[4] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[4]),
        .Q(\BotInfo_int_reg_n_0_[4] ));
  FDCE \BotInfo_int_reg[5] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[5]),
        .Q(\BotInfo_int_reg_n_0_[5] ));
  FDCE \BotInfo_int_reg[6] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[6]),
        .Q(\BotInfo_int_reg_n_0_[6] ));
  FDCE \BotInfo_int_reg[7] 
       (.C(clk_in),
        .CE(\BotInfo_int_reg[7]_1 ),
        .CLR(reset),
        .D(D[7]),
        .Q(\BotInfo_int_reg_n_0_[7] ));
  FDCE \BotInfo_reg[0] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[0] ),
        .Q(BotInfo_reg[0]));
  FDCE \BotInfo_reg[1] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[1] ),
        .Q(BotInfo_reg[1]));
  FDCE \BotInfo_reg[2] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[2] ),
        .Q(BotInfo_reg[2]));
  FDCE \BotInfo_reg[3] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[3] ),
        .Q(BotInfo_reg[3]));
  FDCE \BotInfo_reg[4] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[4] ),
        .Q(BotInfo_reg[4]));
  FDCE \BotInfo_reg[5] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[5] ),
        .Q(BotInfo_reg[5]));
  FDCE \BotInfo_reg[6] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[6] ),
        .Q(BotInfo_reg[6]));
  FDCE \BotInfo_reg[7] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(\BotInfo_int_reg_n_0_[7] ),
        .Q(BotInfo_reg[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[0]_i_4 
       (.I0(\BotInfo_int_reg_n_0_[0] ),
        .I1(LocY_int[0]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[0]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[0]),
        .O(\BotInfo_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[1]_i_4 
       (.I0(\BotInfo_int_reg_n_0_[1] ),
        .I1(LocY_int[1]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[1]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[1]),
        .O(\BotInfo_int_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[2]_i_2 
       (.I0(\BotInfo_int_reg_n_0_[2] ),
        .I1(LocY_int[2]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[2]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[2]),
        .O(\BotInfo_int_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[3]_i_3 
       (.I0(\BotInfo_int_reg_n_0_[3] ),
        .I1(LocY_int[3]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[3]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[3]),
        .O(\BotInfo_int_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[4]_i_3 
       (.I0(\BotInfo_int_reg_n_0_[4] ),
        .I1(LocY_int[4]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[4]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[4]),
        .O(\BotInfo_int_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[5]_i_3 
       (.I0(\BotInfo_int_reg_n_0_[5] ),
        .I1(LocY_int[5]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[5]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[5]),
        .O(\BotInfo_int_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[6]_i_2 
       (.I0(\BotInfo_int_reg_n_0_[6] ),
        .I1(LocY_int[6]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[6]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[6]),
        .O(\BotInfo_int_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \DataOut[7]_i_3 
       (.I0(\BotInfo_int_reg_n_0_[7] ),
        .I1(LocY_int[7]),
        .I2(\DataOut_reg[0]_0 [1]),
        .I3(LocX_int_set[7]),
        .I4(\DataOut_reg[0]_0 [0]),
        .I5(MotCtl_in[7]),
        .O(\BotInfo_int_reg[7]_0 ));
  FDRE \DataOut_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [0]),
        .Q(\DataOut_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \DataOut_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [1]),
        .Q(\DataOut_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \DataOut_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [2]),
        .Q(\DataOut_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \DataOut_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [3]),
        .Q(\DataOut_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \DataOut_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [4]),
        .Q(\DataOut_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \DataOut_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [5]),
        .Q(\DataOut_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \DataOut_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [6]),
        .Q(\DataOut_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \DataOut_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\DataOut_reg[7]_1 [7]),
        .Q(\DataOut_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCDCCCCCCCCCCCD)) 
    \LocX[0]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[0]),
        .I2(\LocX[6]_i_3_n_0 ),
        .I3(LocX_int[1]),
        .I4(LocX_int[5]),
        .I5(LocX_int[4]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC8CCCD)) 
    \LocX[1]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[1]),
        .I2(\LocX[6]_i_2_n_0 ),
        .I3(\LocX[6]_i_3_n_0 ),
        .I4(\LocX[6]_i_4_n_0 ),
        .I5(\LocX[6]_i_5_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFEFFFFFE00000000)) 
    \LocX[2]_i_1 
       (.I0(p_0_in[7]),
        .I1(\LocX[6]_i_3_n_0 ),
        .I2(LocX_int[1]),
        .I3(LocX_int[5]),
        .I4(LocX_int[4]),
        .I5(LocX_int[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC8CCCD)) 
    \LocX[3]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[3]),
        .I2(\LocX[6]_i_2_n_0 ),
        .I3(\LocX[6]_i_3_n_0 ),
        .I4(\LocX[6]_i_4_n_0 ),
        .I5(\LocX[6]_i_5_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC8CCCD)) 
    \LocX[4]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[4]),
        .I2(\LocX[6]_i_2_n_0 ),
        .I3(\LocX[6]_i_3_n_0 ),
        .I4(\LocX[6]_i_4_n_0 ),
        .I5(\LocX[6]_i_5_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC8CCCD)) 
    \LocX[5]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[5]),
        .I2(\LocX[6]_i_2_n_0 ),
        .I3(\LocX[6]_i_3_n_0 ),
        .I4(\LocX[6]_i_4_n_0 ),
        .I5(\LocX[6]_i_5_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC8CCCD)) 
    \LocX[6]_i_1 
       (.I0(p_0_in[7]),
        .I1(LocX_int[6]),
        .I2(\LocX[6]_i_2_n_0 ),
        .I3(\LocX[6]_i_3_n_0 ),
        .I4(\LocX[6]_i_4_n_0 ),
        .I5(\LocX[6]_i_5_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \LocX[6]_i_2 
       (.I0(LocX_int[1]),
        .I1(LocX_int[5]),
        .I2(LocX_int[4]),
        .O(\LocX[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFFFFFF7FFE)) 
    \LocX[6]_i_3 
       (.I0(LocX_int[3]),
        .I1(LocX_int[4]),
        .I2(LocX_int[0]),
        .I3(LocX_int[2]),
        .I4(LocX_int[5]),
        .I5(LocX_int[6]),
        .O(\LocX[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LocX[6]_i_4 
       (.I0(LocX_int[5]),
        .I1(LocX_int[4]),
        .I2(LocX_int[6]),
        .O(\LocX[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LocX[6]_i_5 
       (.I0(LocX_int[2]),
        .I1(LocX_int[3]),
        .I2(LocX_int[0]),
        .I3(LocX_int[1]),
        .O(\LocX[6]_i_5_n_0 ));
  FDCE \LocX_int_reg[0] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(LocX_int[0]));
  FDCE \LocX_int_reg[1] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(LocX_int[1]));
  FDCE \LocX_int_reg[2] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(LocX_int[2]));
  FDCE \LocX_int_reg[3] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(LocX_int[3]));
  FDCE \LocX_int_reg[4] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(LocX_int[4]));
  FDCE \LocX_int_reg[5] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(LocX_int[5]));
  FDCE \LocX_int_reg[6] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(LocX_int[6]));
  FDCE \LocX_int_reg[7] 
       (.C(clk_in),
        .CE(\LocX_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[7]),
        .Q(p_0_in[7]));
  FDRE \LocX_int_set_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(LocX_int_set[0]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(LocX_int_set[1]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(LocX_int_set[2]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(LocX_int_set[3]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(LocX_int_set[4]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(LocX_int_set[5]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(LocX_int_set[6]),
        .R(1'b0));
  FDRE \LocX_int_set_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(LocX_int_set[7]),
        .R(1'b0));
  FDCE \LocX_reg[0] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(LocX_reg[0]));
  FDCE \LocX_reg[1] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(LocX_reg[1]));
  FDCE \LocX_reg[2] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(LocX_reg[2]));
  FDCE \LocX_reg[3] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(LocX_reg[3]));
  FDCE \LocX_reg[4] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(LocX_reg[4]));
  FDCE \LocX_reg[5] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(LocX_reg[5]));
  FDCE \LocX_reg[6] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(LocX_reg[6]));
  FDCE \LocX_reg[7] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(LocX_reg[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \LocY[2]_i_1 
       (.I0(LocY_int[2]),
        .I1(\LocY[2]_i_2_n_0 ),
        .I2(\BotInfo_int_reg_n_0_[7] ),
        .I3(\BotInfo_int_reg_n_0_[0] ),
        .I4(\BotInfo_int_reg_n_0_[4] ),
        .I5(\BotInfo_int_reg_n_0_[5] ),
        .O(\LocY[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \LocY[2]_i_2 
       (.I0(\BotInfo_int_reg_n_0_[2] ),
        .I1(\BotInfo_int_reg_n_0_[3] ),
        .I2(\BotInfo_int_reg_n_0_[6] ),
        .I3(\BotInfo_int_reg_n_0_[1] ),
        .O(\LocY[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA28)) 
    \LocY[7]_i_1 
       (.I0(E),
        .I1(LocX_int[4]),
        .I2(LocX_int[5]),
        .I3(LocX_int[1]),
        .I4(\LocX[6]_i_3_n_0 ),
        .I5(p_0_in[7]),
        .O(\LocY[7]_i_1_n_0 ));
  FDCE \LocY_int_reg[0] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(LocY_int[0]));
  FDCE \LocY_int_reg[1] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(LocY_int[1]));
  FDCE \LocY_int_reg[2] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(LocY_int[2]));
  FDCE \LocY_int_reg[3] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(LocY_int[3]));
  FDCE \LocY_int_reg[4] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(LocY_int[4]));
  FDCE \LocY_int_reg[5] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(LocY_int[5]));
  FDCE \LocY_int_reg[6] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(LocY_int[6]));
  FDCE \LocY_int_reg[7] 
       (.C(clk_in),
        .CE(\LocY_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[7]),
        .Q(LocY_int[7]));
  FDCE \LocY_reg[0] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(LocY_int[0]),
        .Q(LocY_reg[0]));
  FDCE \LocY_reg[1] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(LocY_int[1]),
        .Q(LocY_reg[1]));
  FDCE \LocY_reg[2] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\LocY[2]_i_1_n_0 ),
        .Q(LocY_reg[2]));
  FDCE \LocY_reg[3] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_6 ),
        .Q(LocY_reg[3]));
  FDCE \LocY_reg[4] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_5 ),
        .Q(LocY_reg[4]));
  FDCE \LocY_reg[5] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_4 ),
        .Q(LocY_reg[5]));
  FDCE \LocY_reg[6] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_7 ),
        .Q(LocY_reg[6]));
  FDCE \LocY_reg[7] 
       (.C(clk_in),
        .CE(\LocY[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_6 ),
        .Q(LocY_reg[7]));
  FDCE \MapX_reg[0] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(worldmap_addr[0]));
  FDCE \MapX_reg[1] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(worldmap_addr[1]));
  FDCE \MapX_reg[2] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(worldmap_addr[2]));
  FDCE \MapX_reg[3] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(worldmap_addr[3]));
  FDCE \MapX_reg[4] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(worldmap_addr[4]));
  FDCE \MapX_reg[5] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(worldmap_addr[5]));
  FDCE \MapX_reg[6] 
       (.C(clk_in),
        .CE(\MapX_reg[6]_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(worldmap_addr[6]));
  FDCE \MapY_reg[0] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(worldmap_addr[7]));
  FDCE \MapY_reg[1] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(worldmap_addr[8]));
  FDCE \MapY_reg[2] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(worldmap_addr[9]));
  FDCE \MapY_reg[3] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(worldmap_addr[10]));
  FDCE \MapY_reg[4] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(worldmap_addr[11]));
  FDCE \MapY_reg[5] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(worldmap_addr[12]));
  FDCE \MapY_reg[6] 
       (.C(clk_in),
        .CE(\MapY_reg[6]_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(worldmap_addr[13]));
  FDCE \Sensors_int_reg[0] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \Sensors_int_reg[1] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \Sensors_int_reg[2] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \Sensors_int_reg[3] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \Sensors_int_reg[4] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \Sensors_int_reg[5] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \Sensors_int_reg[6] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \Sensors_int_reg[7] 
       (.C(clk_in),
        .CE(\Sensors_int_reg[7]_0 ),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \Sensors_reg[0] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[0]),
        .Q(Sensors_reg[0]));
  FDCE \Sensors_reg[1] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[1]),
        .Q(Sensors_reg[1]));
  FDCE \Sensors_reg[2] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[2]),
        .Q(Sensors_reg[2]));
  FDCE \Sensors_reg[3] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[3]),
        .Q(Sensors_reg[3]));
  FDCE \Sensors_reg[4] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[4]),
        .Q(Sensors_reg[4]));
  FDCE \Sensors_reg[5] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[5]),
        .Q(Sensors_reg[5]));
  FDCE \Sensors_reg[6] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[6]),
        .Q(Sensors_reg[6]));
  FDCE \Sensors_reg[7] 
       (.C(clk_in),
        .CE(E),
        .CLR(reset),
        .D(Q[7]),
        .Q(Sensors_reg[7]));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({LocY_int[4:2],i__carry_i_1_n_0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\NLW__inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LocY_int[5]}),
        .O({\NLW__inferred__0/i__carry__0_O_UNCONNECTED [3:2],\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(LocY_int[6]),
        .I1(LocY_int[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(LocY_int[5]),
        .I1(LocY_int[6]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(LocY_int[2]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(LocY_int[4]),
        .I1(LocY_int[5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(LocY_int[3]),
        .I1(LocY_int[4]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(LocY_int[2]),
        .I1(LocY_int[3]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    i__carry_i_5
       (.I0(LocY_int[2]),
        .I1(\LocY[2]_i_2_n_0 ),
        .I2(\BotInfo_int_reg_n_0_[7] ),
        .I3(\BotInfo_int_reg_n_0_[0] ),
        .I4(\BotInfo_int_reg_n_0_[4] ),
        .I5(\BotInfo_int_reg_n_0_[5] ),
        .O(i__carry_i_5_n_0));
  FDCE load_sys_regs_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset),
        .D(load_sys_regs_reg_0),
        .Q(E));
  FDCE upd_sysregs_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset),
        .D(upd_sysregs_reg_0),
        .Q(upd_sysregs));
endmodule

(* ORIG_REF_NAME = "bot31_pgm" *) 
module rojobot31_0_bot31_pgm
   (instruction,
    clk_in,
    bram_enable,
    address);
  output [17:0]instruction;
  input clk_in;
  input bram_enable;
  input [11:0]address;

  wire [11:0]address;
  wire bram_enable;
  wire clk_in;
  wire [17:0]data_in_b;
  wire [17:0]instruction;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h1861861860A0286186186186086255D14AAAAAAA220A008082D74A288A802AAA),
    .INITP_01(256'h99D67766759DD80025508A18618618618222083620D8820D88360D8D8D0A1686),
    .INITP_02(256'h49768924976892497689249768924976892497689249768924974820A820D820),
    .INITP_03(256'hB62D8B62D8B62D25513744DD01555540880A82236222201548D34D3455522892),
    .INITP_04(256'h00000000000000000000000000000000000000000000000000000000000B42D8),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h00000000000000000000000000000000000000000000000000002AAA96A91800),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h01A79007003901BA002A1C401D011E001F0200BD006C004E2004200420042004),
    .INIT_01(256'h008A02E001F02028E01DC800D031E01DC900B030002A00390E00006701C09000),
    .INIT_02(256'h0A00019E0B00011302C001D0200E01F1180019000C100D0000DF02E001F00F00),
    .INIT_03(256'h400E00105000D00DD00DD806D9055000D00ED00ED00CD00CDA03DB04DC02DD01),
    .INIT_04(256'h110010205000A02002105000300F5000400E400E400E400EE049410EA0200200),
    .INIT_05(256'hE10011EE1001E10011CC1001E10011CE1001E10011CE1001E10011001001E100),
    .INIT_06(256'h1001E100111710005000003E1220310F01005000E100114F1001E10011D81001),
    .INIT_07(256'h11751001E10011641001E10011531001E10011421001E10011311001E1001120),
    .INIT_08(256'h20BC00406090D500052004105000003E1200013041065000E10011061001E100),
    .INIT_09(256'h20BC100200851300014060A0D50C20BC100400406099D50820BC00406094D504),
    .INIT_0A(256'h100600851301014060B1D50E20BC100200851300010000851300014060AAD50D),
    .INIT_0B(256'hE100110F10105000004020BC100600851301010000851301014060BBD50F20BC),
    .INIT_0C(256'h1001E10011F11001E10011011001E10011111001E10011101001E100111F1001),
    .INIT_0D(256'h04205000400E400E400E400E310F0100004B12105000E10011FF1001E10011F0),
    .INIT_0E(256'h970160F1D10F060020ED960160ECD00F60F3D40400D607C006D09C029D010510),
    .INIT_0F(256'h210387102103170160FED10F860020FA160160F9D00F6100D408210307102103),
    .INIT_10(256'hD209D108500001700060500001C000D0610BD002010E02700160500001700060),
    .INIT_11(256'h0500010E11010400010E920191016125DF000700010E02C001D05000900A0000),
    .INIT_12(256'h010E11010500010E12010400010E920211016133DF01500001890600010E1101),
    .INIT_13(256'h01890600010E12010500010E12010400010E920111016141DF02500001890600),
    .INIT_14(256'hDF04500001890600010E12010500010E91010400010E12011102614FDF035000),
    .INIT_15(256'h9101616BDF05500001890600010E91010500010E91010400010E12011101615D),
    .INIT_16(256'h010E120191016179DF06500001890600010E91010500010E92010400010E1202),
    .INIT_17(256'h11010400010E920191026187DF07500001890600010E92010500010E92010400),
    .INIT_18(256'h4006400640064006400640060070500010FF500001890600010E92010500010E),
    .INIT_19(256'h400600E050005008619DD6025010619AD40250186197D50230F86194D7015007),
    .INIT_1A(256'h400EF1311102F1301102F1321101F133110050004010310701F0400640064006),
    .INIT_1B(256'h50000A00019E1B00180019005000F131F130311F0100F1321107F1331101D000),
    .INIT_1C(256'h22302130B332400E400E4008420E4008410E420E420E420E420E0200310F0100),
    .INIT_1D(256'h400E400E508009200210E1DCC21021DED200504008100120E1D5C12021D7D100),
    .INIT_1E(256'h61ED920101E71219500061E8910101E31128500061E4900110185000400E400E),
    .INIT_1F(256'h500061FC930101EC13C8500061F7930101EC1364500061F2930101EC13325000),
    .INIT_20(256'h0000000000000000000000005000620693010330130A50006201940101FB1405),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'hD90598049902D00CD00CDC02DD014C060CD01D01D004900018FF19FF1C001D00),
    .INIT_31(256'h0000000000000000000000000000000000002304D00ED00E01FBD00DD00DD806),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    kcpsm6_rom
       (.ADDRARDADDR({address[9:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_in),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,address[11:10]}),
        .DIBDI(data_in_b[15:0]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP(data_in_b[17:16]),
        .DOADO(instruction[15:0]),
        .DOBDO(data_in_b[15:0]),
        .DOPADOP(instruction[17:16]),
        .DOPBDOP(data_in_b[17:16]),
        .ENARDEN(bram_enable),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "kcpsm6" *) 
module rojobot31_0_kcpsm6
   (D,
    kcpsm6_rom,
    E,
    write_strobe_flop_0,
    write_strobe_flop_1,
    write_strobe_flop_2,
    write_strobe_flop_3,
    write_strobe_flop_4,
    write_strobe_flop_5,
    write_strobe_flop_6,
    bram_enable,
    address,
    out_port,
    \DataOut_reg[2] ,
    \DataOut_reg[6] ,
    \DataOut_reg[0] ,
    Bot_Config_reg,
    Q,
    worldmap_data,
    \DataOut_reg[5] ,
    \DataOut_reg[7] ,
    \DataOut_reg[3] ,
    \DataOut_reg[1] ,
    \DataOut_reg[4] ,
    load_sys_regs_reg,
    upd_sysregs,
    reset,
    clk_in,
    instruction,
    upper_reg_banks_0);
  output [7:0]D;
  output [1:0]kcpsm6_rom;
  output [0:0]E;
  output [0:0]write_strobe_flop_0;
  output [0:0]write_strobe_flop_1;
  output [0:0]write_strobe_flop_2;
  output [0:0]write_strobe_flop_3;
  output [0:0]write_strobe_flop_4;
  output write_strobe_flop_5;
  output write_strobe_flop_6;
  output bram_enable;
  output [11:0]address;
  output [7:0]out_port;
  input \DataOut_reg[2] ;
  input \DataOut_reg[6] ;
  input \DataOut_reg[0] ;
  input [7:0]Bot_Config_reg;
  input [7:0]Q;
  input [1:0]worldmap_data;
  input \DataOut_reg[5] ;
  input \DataOut_reg[7] ;
  input \DataOut_reg[3] ;
  input \DataOut_reg[1] ;
  input \DataOut_reg[4] ;
  input [0:0]load_sys_regs_reg;
  input upd_sysregs;
  input reset;
  input clk_in;
  input [17:0]instruction;
  input [7:0]upper_reg_banks_0;

  wire [7:0]Bot_Config_reg;
  wire [7:0]D;
  wire \DataOut[0]_i_2_n_0 ;
  wire \DataOut[0]_i_3_n_0 ;
  wire \DataOut[1]_i_2_n_0 ;
  wire \DataOut[1]_i_3_n_0 ;
  wire \DataOut[2]_i_3_n_0 ;
  wire \DataOut[3]_i_2_n_0 ;
  wire \DataOut[4]_i_2_n_0 ;
  wire \DataOut[5]_i_2_n_0 ;
  wire \DataOut[6]_i_3_n_0 ;
  wire \DataOut[7]_i_2_n_0 ;
  wire \DataOut_reg[0] ;
  wire \DataOut_reg[1] ;
  wire \DataOut_reg[2] ;
  wire \DataOut_reg[3] ;
  wire \DataOut_reg[4] ;
  wire \DataOut_reg[5] ;
  wire \DataOut_reg[6] ;
  wire \DataOut_reg[7] ;
  wire [0:0]E;
  wire [7:0]Q;
  wire active_interrupt;
  wire active_interrupt_value;
  wire [11:0]address;
  wire alu_mux_sel_0;
  wire alu_mux_sel_1;
  wire alu_mux_sel_value_0;
  wire alu_mux_sel_value_1;
  wire alu_result_0;
  wire alu_result_1;
  wire alu_result_2;
  wire alu_result_3;
  wire alu_result_4;
  wire alu_result_5;
  wire alu_result_6;
  wire alu_result_7;
  wire arith_carry;
  wire arith_carry_in;
  wire arith_carry_value;
  wire arith_logical_result_0;
  wire arith_logical_result_1;
  wire arith_logical_result_2;
  wire arith_logical_result_3;
  wire arith_logical_result_4;
  wire arith_logical_result_5;
  wire arith_logical_result_6;
  wire arith_logical_result_7;
  wire arith_logical_sel_0;
  wire arith_logical_value_0;
  wire arith_logical_value_1;
  wire arith_logical_value_2;
  wire arith_logical_value_3;
  wire arith_logical_value_4;
  wire arith_logical_value_5;
  wire arith_logical_value_6;
  wire arith_logical_value_7;
  wire bank;
  wire bank_value;
  wire bram_enable;
  wire carry_arith_logical_0;
  wire carry_arith_logical_1;
  wire carry_arith_logical_2;
  wire carry_arith_logical_3;
  wire carry_arith_logical_4;
  wire carry_arith_logical_5;
  wire carry_arith_logical_6;
  wire carry_arith_logical_7;
  wire carry_flag;
  wire carry_flag_value;
  wire carry_in_zero;
  wire carry_lower_parity;
  wire carry_lower_zero;
  wire carry_middle_zero;
  wire carry_pc_0;
  wire carry_pc_1;
  wire carry_pc_10;
  wire carry_pc_2;
  wire carry_pc_3;
  wire carry_pc_4;
  wire carry_pc_5;
  wire carry_pc_6;
  wire carry_pc_7;
  wire carry_pc_8;
  wire carry_pc_9;
  wire clk_in;
  wire drive_carry_in_zero;
  wire feed_pointer_value_0;
  wire feed_pointer_value_1;
  wire feed_pointer_value_2;
  wire feed_pointer_value_3;
  wire feed_pointer_value_4;
  wire flag_enable;
  wire flag_enable_type;
  wire flag_enable_value;
  wire half_arith_logical_0;
  wire half_arith_logical_1;
  wire half_arith_logical_2;
  wire half_arith_logical_3;
  wire half_arith_logical_4;
  wire half_arith_logical_5;
  wire half_arith_logical_6;
  wire half_arith_logical_7;
  wire half_pc_0;
  wire half_pc_1;
  wire half_pc_10;
  wire half_pc_11;
  wire half_pc_2;
  wire half_pc_3;
  wire half_pc_4;
  wire half_pc_5;
  wire half_pc_6;
  wire half_pc_7;
  wire half_pc_8;
  wire half_pc_9;
  wire half_pointer_value_0;
  wire half_pointer_value_1;
  wire half_pointer_value_2;
  wire half_pointer_value_3;
  wire half_pointer_value_4;
  wire [17:0]instruction;
  wire int_enable_type;
  wire internal_reset;
  wire internal_reset_value;
  wire interrupt_enable;
  wire interrupt_enable_value;
  wire k_write_strobe_value;
  wire [1:0]kcpsm6_rom;
  wire [0:0]load_sys_regs_reg;
  wire loadstar_type;
  wire logical_carry_mask_0;
  wire logical_carry_mask_1;
  wire logical_carry_mask_2;
  wire logical_carry_mask_3;
  wire logical_carry_mask_4;
  wire logical_carry_mask_5;
  wire logical_carry_mask_6;
  wire logical_carry_mask_7;
  wire lower_parity;
  wire lower_parity_sel;
  wire lower_zero;
  wire lower_zero_sel;
  wire middle_zero;
  wire middle_zero_sel;
  wire move_type;
  wire [7:0]out_port;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_7_in;
  wire parity;
  wire pc_move_is_valid;
  wire pc_value_0;
  wire pc_value_1;
  wire pc_value_10;
  wire pc_value_11;
  wire pc_value_2;
  wire pc_value_3;
  wire pc_value_4;
  wire pc_value_5;
  wire pc_value_6;
  wire pc_value_7;
  wire pc_value_8;
  wire pc_value_9;
  wire pc_vector_0;
  wire pc_vector_1;
  wire pc_vector_10;
  wire pc_vector_11;
  wire pc_vector_2;
  wire pc_vector_3;
  wire pc_vector_4;
  wire pc_vector_5;
  wire pc_vector_6;
  wire pc_vector_7;
  wire pc_vector_8;
  wire pc_vector_9;
  wire pop_stack;
  wire [7:2]port_id;
  wire push_stack;
  wire read_strobe_value;
  wire regbank_type;
  wire register_enable;
  wire register_enable_type;
  wire register_enable_value;
  wire [11:0]register_vector;
  wire reset;
  wire return_vector_0;
  wire return_vector_1;
  wire return_vector_10;
  wire return_vector_11;
  wire return_vector_2;
  wire return_vector_3;
  wire return_vector_4;
  wire return_vector_5;
  wire return_vector_6;
  wire return_vector_7;
  wire return_vector_8;
  wire return_vector_9;
  wire returni_type;
  wire run;
  wire run_value;
  wire shadow_bank;
  wire shadow_carry_flag;
  wire shadow_zero_flag;
  wire shadow_zero_value;
  wire shift_carry;
  wire shift_carry_value;
  wire shift_in_bit;
  wire shift_rotate_result_0;
  wire shift_rotate_result_1;
  wire shift_rotate_result_2;
  wire shift_rotate_result_3;
  wire shift_rotate_result_4;
  wire shift_rotate_result_5;
  wire shift_rotate_result_6;
  wire shift_rotate_result_7;
  wire shift_rotate_value_0;
  wire shift_rotate_value_1;
  wire shift_rotate_value_2;
  wire shift_rotate_value_3;
  wire shift_rotate_value_4;
  wire shift_rotate_value_5;
  wire shift_rotate_value_6;
  wire shift_rotate_value_7;
  wire special_bit;
  wire spm_data_0;
  wire spm_data_1;
  wire spm_data_2;
  wire spm_data_3;
  wire spm_data_4;
  wire spm_data_5;
  wire spm_data_6;
  wire spm_data_7;
  wire spm_enable;
  wire spm_enable_value;
  wire spm_ram_data_0;
  wire spm_ram_data_1;
  wire spm_ram_data_2;
  wire spm_ram_data_3;
  wire spm_ram_data_4;
  wire spm_ram_data_5;
  wire spm_ram_data_6;
  wire spm_ram_data_7;
  wire stack_bank;
  wire stack_bit;
  wire stack_carry_flag;
  wire [11:0]stack_memory;
  wire [4:0]stack_pointer;
  wire stack_pointer_carry_0;
  wire stack_pointer_carry_1;
  wire stack_pointer_carry_2;
  wire stack_pointer_carry_3;
  wire stack_pointer_carry_4;
  wire stack_pointer_value_0;
  wire stack_pointer_value_1;
  wire stack_pointer_value_2;
  wire stack_pointer_value_3;
  wire stack_pointer_value_4;
  wire stack_zero_flag;
  wire strobe_type;
  wire [4:4]sx_addr;
  wire sx_addr4_value;
  wire t_state_0;
  wire t_state_value_0;
  wire t_state_value_1;
  wire upd_sysregs;
  wire upper_parity;
  wire [7:0]upper_reg_banks_0;
  wire upper_reg_banks_n_2;
  wire upper_reg_banks_n_3;
  wire upper_reg_banks_n_7;
  wire upper_zero_sel;
  wire use_zero_flag;
  wire use_zero_flag_value;
  wire [1:0]worldmap_data;
  wire write_strobe;
  wire [0:0]write_strobe_flop_0;
  wire [0:0]write_strobe_flop_1;
  wire [0:0]write_strobe_flop_2;
  wire [0:0]write_strobe_flop_3;
  wire [0:0]write_strobe_flop_4;
  wire write_strobe_flop_5;
  wire write_strobe_flop_6;
  wire write_strobe_value;
  wire zero_flag;
  wire zero_flag_value;
  wire [3:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED ;
  wire [3:0]NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED;
  wire [3:0]NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED;
  wire [3:1]NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED;
  wire [3:0]NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_parity_muxcy_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_parity_muxcy_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_parity_muxcy_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_parity_muxcy_CARRY4_S_UNCONNECTED;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \BotInfo_int[7]_i_1 
       (.I0(write_strobe),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(port_id[2]),
        .I4(port_id[3]),
        .O(write_strobe_flop_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DataOut[0]_i_1 
       (.I0(\DataOut[0]_i_2_n_0 ),
        .I1(port_id[3]),
        .I2(\DataOut[0]_i_3_n_0 ),
        .I3(port_id[2]),
        .I4(\DataOut_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \DataOut[0]_i_2 
       (.I0(worldmap_data[0]),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(port_id[2]),
        .O(\DataOut[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB3B0)) 
    \DataOut[0]_i_3 
       (.I0(Bot_Config_reg[0]),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(Q[0]),
        .O(\DataOut[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DataOut[1]_i_1 
       (.I0(\DataOut[1]_i_2_n_0 ),
        .I1(port_id[3]),
        .I2(\DataOut[1]_i_3_n_0 ),
        .I3(port_id[2]),
        .I4(\DataOut_reg[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCC08)) 
    \DataOut[1]_i_2 
       (.I0(worldmap_data[1]),
        .I1(kcpsm6_rom[1]),
        .I2(port_id[2]),
        .I3(kcpsm6_rom[0]),
        .O(\DataOut[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88FC)) 
    \DataOut[1]_i_3 
       (.I0(Bot_Config_reg[1]),
        .I1(kcpsm6_rom[1]),
        .I2(Q[1]),
        .I3(kcpsm6_rom[0]),
        .O(\DataOut[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \DataOut[2]_i_1 
       (.I0(\DataOut_reg[2] ),
        .I1(port_id[2]),
        .I2(\DataOut[2]_i_3_n_0 ),
        .I3(port_id[3]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBFBC)) 
    \DataOut[2]_i_3 
       (.I0(Bot_Config_reg[2]),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(Q[2]),
        .O(\DataOut[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80DFDF8F80D0D0)) 
    \DataOut[3]_i_1 
       (.I0(kcpsm6_rom[1]),
        .I1(kcpsm6_rom[0]),
        .I2(port_id[3]),
        .I3(\DataOut[3]_i_2_n_0 ),
        .I4(port_id[2]),
        .I5(\DataOut_reg[3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8830)) 
    \DataOut[3]_i_2 
       (.I0(Bot_Config_reg[3]),
        .I1(kcpsm6_rom[1]),
        .I2(Q[3]),
        .I3(kcpsm6_rom[0]),
        .O(\DataOut[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \DataOut[4]_i_1 
       (.I0(kcpsm6_rom[0]),
        .I1(port_id[3]),
        .I2(\DataOut[4]_i_2_n_0 ),
        .I3(port_id[2]),
        .I4(\DataOut_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB3B0)) 
    \DataOut[4]_i_2 
       (.I0(Bot_Config_reg[4]),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(Q[4]),
        .O(\DataOut[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \DataOut[5]_i_1 
       (.I0(kcpsm6_rom[1]),
        .I1(kcpsm6_rom[0]),
        .I2(port_id[3]),
        .I3(\DataOut[5]_i_2_n_0 ),
        .I4(port_id[2]),
        .I5(\DataOut_reg[5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h88FC)) 
    \DataOut[5]_i_2 
       (.I0(Bot_Config_reg[5]),
        .I1(kcpsm6_rom[1]),
        .I2(Q[5]),
        .I3(kcpsm6_rom[0]),
        .O(\DataOut[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \DataOut[6]_i_1 
       (.I0(\DataOut_reg[6] ),
        .I1(port_id[2]),
        .I2(\DataOut[6]_i_3_n_0 ),
        .I3(port_id[3]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hBFBC)) 
    \DataOut[6]_i_3 
       (.I0(Bot_Config_reg[6]),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(Q[6]),
        .O(\DataOut[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F80DFDF8F80D0D0)) 
    \DataOut[7]_i_1 
       (.I0(kcpsm6_rom[1]),
        .I1(kcpsm6_rom[0]),
        .I2(port_id[3]),
        .I3(\DataOut[7]_i_2_n_0 ),
        .I4(port_id[2]),
        .I5(\DataOut_reg[7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8830)) 
    \DataOut[7]_i_2 
       (.I0(Bot_Config_reg[7]),
        .I1(kcpsm6_rom[1]),
        .I2(Q[7]),
        .I3(kcpsm6_rom[0]),
        .O(\DataOut[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \LocX_int[7]_i_1 
       (.I0(write_strobe),
        .I1(kcpsm6_rom[1]),
        .I2(kcpsm6_rom[0]),
        .I3(port_id[2]),
        .I4(port_id[3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \LocY_int[7]_i_1 
       (.I0(write_strobe),
        .I1(kcpsm6_rom[0]),
        .I2(kcpsm6_rom[1]),
        .I3(port_id[2]),
        .I4(port_id[3]),
        .O(write_strobe_flop_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \MapX[6]_i_1 
       (.I0(write_strobe),
        .I1(kcpsm6_rom[1]),
        .I2(port_id[3]),
        .I3(port_id[2]),
        .I4(kcpsm6_rom[0]),
        .O(write_strobe_flop_3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \MapY[6]_i_1 
       (.I0(write_strobe),
        .I1(port_id[3]),
        .I2(kcpsm6_rom[0]),
        .I3(port_id[2]),
        .I4(kcpsm6_rom[1]),
        .O(write_strobe_flop_4));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Sensors_int[7]_i_1 
       (.I0(write_strobe),
        .I1(kcpsm6_rom[1]),
        .I2(port_id[2]),
        .I3(kcpsm6_rom[0]),
        .I4(port_id[3]),
        .O(write_strobe_flop_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    active_interrupt_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(active_interrupt_value),
        .Q(active_interrupt),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  LUT6_2 #(
    .INIT(64'hCC33FF0080808080)) 
    active_interrupt_lut
       (.I0(interrupt_enable),
        .I1(bram_enable),
        .I2(1'b0),
        .I3(bank),
        .I4(loadstar_type),
        .I5(1'b1),
        .O5(active_interrupt_value),
        .O6(sx_addr4_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  LUT6 #(
    .INIT(64'h00AA00FF33CC0F00)) 
    \address_loop[0].lsb_pc.high_int_vector.pc_lut 
       (.I0(register_vector[0]),
        .I1(pc_vector_0),
        .I2(address[0]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \address_loop[0].lsb_pc.pc_muxcy_CARRY4 
       (.CI(1'b0),
        .CO({carry_pc_3,carry_pc_2,carry_pc_1,carry_pc_0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({pc_value_3,pc_value_2,pc_value_1,pc_value_0}),
        .S({half_pc_3,half_pc_2,half_pc_1,half_pc_0}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110000" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[0].output_data.pc_vector_mux_lut 
       (.I0(instruction[0]),
        .I1(return_vector_0),
        .I2(instruction[1]),
        .I3(return_vector_1),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_0),
        .O6(pc_vector_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[0].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_0),
        .Q(address[0]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[0].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[0]),
        .Q(return_vector_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110001" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[10].output_data.pc_vector_mux_lut 
       (.I0(instruction[10]),
        .I1(return_vector_10),
        .I2(instruction[11]),
        .I3(return_vector_11),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_10),
        .O6(pc_vector_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[10].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_10),
        .Q(address[10]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[10].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[10]),
        .Q(return_vector_10),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[10].upper_pc.low_int_vector.pc_lut 
       (.I0(register_vector[10]),
        .I1(pc_vector_10),
        .I2(address[10]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[11].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_11),
        .Q(address[11]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[11].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[11]),
        .Q(return_vector_11),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[11].upper_pc.low_int_vector.pc_lut 
       (.I0(register_vector[11]),
        .I1(pc_vector_11),
        .I2(address[11]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[1].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_1),
        .Q(address[1]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[1].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[1]),
        .Q(return_vector_1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[1].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[1]),
        .I1(pc_vector_1),
        .I2(address[1]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110000" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[2].output_data.pc_vector_mux_lut 
       (.I0(instruction[2]),
        .I1(return_vector_2),
        .I2(instruction[3]),
        .I3(return_vector_3),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_2),
        .O6(pc_vector_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[2].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_2),
        .Q(address[2]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[2].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[2]),
        .Q(return_vector_2),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[2].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[2]),
        .I1(pc_vector_2),
        .I2(address[2]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[3].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_3),
        .Q(address[3]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[3].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[3]),
        .Q(return_vector_3),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110000" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[3].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[3]),
        .I1(pc_vector_3),
        .I2(address[3]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110000" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[4].output_data.pc_vector_mux_lut 
       (.I0(instruction[4]),
        .I1(return_vector_4),
        .I2(instruction[5]),
        .I3(return_vector_5),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_4),
        .O6(pc_vector_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[4].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_4),
        .Q(address[4]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[4].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[4]),
        .Q(return_vector_4),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[4].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[4]),
        .I1(pc_vector_4),
        .I2(address[4]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4 
       (.CI(carry_pc_3),
        .CO({carry_pc_7,carry_pc_6,carry_pc_5,carry_pc_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pc_value_7,pc_value_6,pc_value_5,pc_value_4}),
        .S({half_pc_7,half_pc_6,half_pc_5,half_pc_4}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[5].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_5),
        .Q(address[5]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[5].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[5]),
        .Q(return_vector_5),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[5].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[5]),
        .I1(pc_vector_5),
        .I2(address[5]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110000" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[6].output_data.pc_vector_mux_lut 
       (.I0(instruction[6]),
        .I1(return_vector_6),
        .I2(instruction[7]),
        .I3(return_vector_7),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_6),
        .O6(pc_vector_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[6].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_6),
        .Q(address[6]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[6].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[6]),
        .Q(return_vector_6),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[6].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[6]),
        .I1(pc_vector_6),
        .I2(address[6]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[7].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_7),
        .Q(address[7]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[7].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[7]),
        .Q(return_vector_7),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110001" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[7].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[7]),
        .I1(pc_vector_7),
        .I2(address[7]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "112'b0110101101100011011100000111001101101101001101100101111101110110011001010110001101110100011011110111001000110001" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[8].output_data.pc_vector_mux_lut 
       (.I0(instruction[8]),
        .I1(return_vector_8),
        .I2(instruction[9]),
        .I3(return_vector_9),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector_8),
        .O6(pc_vector_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[8].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_8),
        .Q(address[8]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[8].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[8]),
        .Q(return_vector_8),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[8].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[8]),
        .I1(pc_vector_8),
        .I2(address[8]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4 
       (.CI(carry_pc_7),
        .CO({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED [3],carry_pc_10,carry_pc_9,carry_pc_8}),
        .CYINIT(1'b0),
        .DI({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({pc_value_11,pc_value_10,pc_value_9,pc_value_8}),
        .S({half_pc_11,half_pc_10,half_pc_9,half_pc_8}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[9].pc_flop 
       (.C(clk_in),
        .CE(t_state_0),
        .D(pc_value_9),
        .Q(address[9]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "136'b0110101101100011011100000111001101101101001101100101111101110011011101000110000101100011011010110101111101110010011000010110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[9].return_vector_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_memory[9]),
        .Q(return_vector_9),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "80'b01101011011000110111000001110011011011010011011001011111011100000110001100110010" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[9].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[9]),
        .I1(pc_vector_9),
        .I2(address[9]),
        .I3(p_0_in),
        .I4(p_1_in),
        .I5(p_2_in),
        .O(half_pc_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  LUT6_2 #(
    .INIT(64'h03CA000004200000)) 
    alu_decode0_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(alu_mux_sel_value_0),
        .O6(arith_logical_sel_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  LUT6_2 #(
    .INIT(64'h7708000000000F00)) 
    alu_decode1_lut
       (.I0(carry_flag),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(alu_mux_sel_value_1),
        .O6(arith_carry_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  LUT6_2 #(
    .INIT(64'hD000000002000000)) 
    alu_decode2_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(p_3_in),
        .O6(p_4_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel0_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(alu_mux_sel_value_0),
        .Q(alu_mux_sel_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel1_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(alu_mux_sel_value_1),
        .Q(alu_mux_sel_1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    arith_carry_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_carry_value),
        .Q(arith_carry),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 arith_carry_xorcy_CARRY4
       (.CI(carry_arith_logical_7),
        .CO(NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI(NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED[3:0]),
        .O({NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED[3:1],arith_carry_value}),
        .S({NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED[3:1],1'b0}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    bank_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(bank_value),
        .Q(bank),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack1" *) 
  LUT6 #(
    .INIT(64'hACACFF00FF00FF00)) 
    bank_lut
       (.I0(instruction[0]),
        .I1(shadow_bank),
        .I2(instruction[16]),
        .I3(bank),
        .I4(regbank_type),
        .I5(t_state_0),
        .O(bank_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    carry_flag_flop
       (.C(clk_in),
        .CE(flag_enable),
        .D(carry_flag_value),
        .Q(carry_flag),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  LUT6_2 #(
    .INIT(64'h3333AACCF0AA0000)) 
    carry_flag_lut
       (.I0(shift_carry),
        .I1(arith_carry),
        .I2(parity),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[16]),
        .O5(drive_carry_in_zero),
        .O6(carry_flag_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110000" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].alu_mux_lut 
       (.I0(arith_logical_result_0),
        .I1(shift_rotate_result_0),
        .I2(upper_reg_banks_0[0]),
        .I3(spm_data_0),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_0),
        .Q(arith_logical_result_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[0].arith_logical_lut 
       (.I0(kcpsm6_rom[0]),
        .I1(register_vector[8]),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_0),
        .O6(half_arith_logical_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_0),
        .Q(shift_rotate_result_0),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4 
       (.CI(1'b0),
        .CO({carry_arith_logical_3,carry_arith_logical_2,carry_arith_logical_1,carry_arith_logical_0}),
        .CYINIT(arith_carry_in),
        .DI({logical_carry_mask_3,logical_carry_mask_2,logical_carry_mask_1,logical_carry_mask_0}),
        .O({arith_logical_value_3,arith_logical_value_2,arith_logical_value_1,arith_logical_value_0}),
        .S({half_arith_logical_3,half_arith_logical_2,half_arith_logical_1,half_arith_logical_0}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  LUT6 #(
    .INIT(64'hBFBC8F8CB3B08380)) 
    \data_path_loop[0].lsb_shift_rotate.shift_bit_lut 
       (.I0(instruction[0]),
        .I1(instruction[1]),
        .I2(instruction[2]),
        .I3(carry_flag),
        .I4(register_vector[8]),
        .I5(p_7_in),
        .O(shift_in_bit));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut 
       (.I0(shift_in_bit),
        .I1(register_vector[9]),
        .I2(register_vector[8]),
        .I3(register_vector[10]),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_0),
        .O6(shift_rotate_value_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_port_id" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].output_data.sy_kk_mux_lut 
       (.I0(register_vector[0]),
        .I1(instruction[0]),
        .I2(register_vector[1]),
        .I3(instruction[1]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(kcpsm6_rom[0]),
        .O6(kcpsm6_rom[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_out_port" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].second_operand.out_port_lut 
       (.I0(register_vector[8]),
        .I1(instruction[4]),
        .I2(register_vector[9]),
        .I3(instruction[5]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[0]),
        .O6(out_port[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[0].small_spm.small_spm_ram.spm_ram 
       (.ADDRA({port_id[5:2],kcpsm6_rom}),
        .ADDRB({port_id[5:2],kcpsm6_rom}),
        .ADDRC({port_id[5:2],kcpsm6_rom}),
        .ADDRD({port_id[5:2],kcpsm6_rom}),
        .DIA(register_vector[8]),
        .DIB(register_vector[9]),
        .DIC(register_vector[10]),
        .DID(register_vector[11]),
        .DOA(spm_ram_data_0),
        .DOB(spm_ram_data_1),
        .DOC(spm_ram_data_2),
        .DOD(spm_ram_data_3),
        .WCLK(clk_in),
        .WE(spm_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_0),
        .Q(spm_data_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110000" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[1].alu_mux_lut 
       (.I0(arith_logical_result_1),
        .I1(shift_rotate_result_1),
        .I2(upper_reg_banks_0[1]),
        .I3(spm_data_1),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_1),
        .Q(arith_logical_result_1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[1].arith_logical_lut 
       (.I0(kcpsm6_rom[1]),
        .I1(register_vector[9]),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_1),
        .O6(half_arith_logical_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_1),
        .Q(shift_rotate_result_1),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_1),
        .Q(spm_data_1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110000" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].alu_mux_lut 
       (.I0(arith_logical_result_2),
        .I1(shift_rotate_result_2),
        .I2(upper_reg_banks_0[2]),
        .I3(spm_data_2),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_2),
        .Q(arith_logical_result_2),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[2].arith_logical_lut 
       (.I0(port_id[2]),
        .I1(register_vector[10]),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_2),
        .O6(half_arith_logical_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_2),
        .Q(shift_rotate_result_2),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].mid_shift_rotate.shift_rotate_lut 
       (.I0(register_vector[9]),
        .I1(register_vector[11]),
        .I2(register_vector[10]),
        .I3(upper_reg_banks_n_3),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_2),
        .O6(shift_rotate_value_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_port_id" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].output_data.sy_kk_mux_lut 
       (.I0(register_vector[2]),
        .I1(instruction[2]),
        .I2(register_vector[3]),
        .I3(instruction[3]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[2]),
        .O6(port_id[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_out_port" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].second_operand.out_port_lut 
       (.I0(register_vector[10]),
        .I1(instruction[6]),
        .I2(register_vector[11]),
        .I3(instruction[7]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[2]),
        .O6(out_port[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_2),
        .Q(spm_data_2),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110000" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[3].alu_mux_lut 
       (.I0(arith_logical_result_3),
        .I1(shift_rotate_result_3),
        .I2(upper_reg_banks_0[3]),
        .I3(spm_data_3),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_3),
        .Q(arith_logical_result_3),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110000" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[3].arith_logical_lut 
       (.I0(port_id[3]),
        .I1(register_vector[11]),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_3),
        .O6(half_arith_logical_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_3),
        .Q(shift_rotate_result_3),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110000" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_3),
        .Q(spm_data_3),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110001" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].alu_mux_lut 
       (.I0(arith_logical_result_4),
        .I1(shift_rotate_result_4),
        .I2(upper_reg_banks_0[4]),
        .I3(spm_data_4),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_4),
        .Q(arith_logical_result_4),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[4].arith_logical_lut 
       (.I0(port_id[4]),
        .I1(upper_reg_banks_n_3),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_4),
        .O6(half_arith_logical_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_4),
        .Q(shift_rotate_result_4),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].mid_shift_rotate.shift_rotate_lut 
       (.I0(register_vector[11]),
        .I1(upper_reg_banks_n_2),
        .I2(upper_reg_banks_n_3),
        .I3(upper_reg_banks_n_7),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_4),
        .O6(shift_rotate_value_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_port_id" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].output_data.sy_kk_mux_lut 
       (.I0(register_vector[4]),
        .I1(instruction[4]),
        .I2(register_vector[5]),
        .I3(instruction[5]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[4]),
        .O6(port_id[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_out_port" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].second_operand.out_port_lut 
       (.I0(upper_reg_banks_n_3),
        .I1(instruction[8]),
        .I2(upper_reg_banks_n_2),
        .I3(instruction[9]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[4]),
        .O6(out_port[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[4].small_spm.small_spm_ram.spm_ram 
       (.ADDRA({port_id[5:2],kcpsm6_rom}),
        .ADDRB({port_id[5:2],kcpsm6_rom}),
        .ADDRC({port_id[5:2],kcpsm6_rom}),
        .ADDRD({port_id[5:2],kcpsm6_rom}),
        .DIA(upper_reg_banks_n_3),
        .DIB(upper_reg_banks_n_2),
        .DIC(upper_reg_banks_n_7),
        .DID(p_7_in),
        .DOA(spm_ram_data_4),
        .DOB(spm_ram_data_5),
        .DOC(spm_ram_data_6),
        .DOD(spm_ram_data_7),
        .WCLK(clk_in),
        .WE(spm_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_4),
        .Q(spm_data_4),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4 
       (.CI(carry_arith_logical_3),
        .CO({carry_arith_logical_7,carry_arith_logical_6,carry_arith_logical_5,carry_arith_logical_4}),
        .CYINIT(1'b0),
        .DI({logical_carry_mask_7,logical_carry_mask_6,logical_carry_mask_5,logical_carry_mask_4}),
        .O({arith_logical_value_7,arith_logical_value_6,arith_logical_value_5,arith_logical_value_4}),
        .S({half_arith_logical_7,half_arith_logical_6,half_arith_logical_5,half_arith_logical_4}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110001" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[5].alu_mux_lut 
       (.I0(arith_logical_result_5),
        .I1(shift_rotate_result_5),
        .I2(upper_reg_banks_0[5]),
        .I3(spm_data_5),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_5),
        .Q(arith_logical_result_5),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[5].arith_logical_lut 
       (.I0(port_id[5]),
        .I1(upper_reg_banks_n_2),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_5),
        .O6(half_arith_logical_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_5),
        .Q(shift_rotate_result_5),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_5),
        .Q(spm_data_5),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110001" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].alu_mux_lut 
       (.I0(arith_logical_result_6),
        .I1(shift_rotate_result_6),
        .I2(upper_reg_banks_0[6]),
        .I3(spm_data_6),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_6),
        .Q(arith_logical_result_6),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[6].arith_logical_lut 
       (.I0(port_id[6]),
        .I1(upper_reg_banks_n_7),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_6),
        .O6(half_arith_logical_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_6),
        .Q(shift_rotate_result_6),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].msb_shift_rotate.shift_rotate_lut 
       (.I0(upper_reg_banks_n_2),
        .I1(p_7_in),
        .I2(upper_reg_banks_n_7),
        .I3(shift_in_bit),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value_6),
        .O6(shift_rotate_value_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_port_id" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].output_data.sy_kk_mux_lut 
       (.I0(register_vector[6]),
        .I1(instruction[6]),
        .I2(register_vector[7]),
        .I3(instruction[7]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[6]),
        .O6(port_id[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_out_port" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].second_operand.out_port_lut 
       (.I0(upper_reg_banks_n_7),
        .I1(instruction[10]),
        .I2(p_7_in),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[6]),
        .O6(out_port[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_6),
        .Q(spm_data_6),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011011000111010100110001" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[7].alu_mux_lut 
       (.I0(arith_logical_result_7),
        .I1(shift_rotate_result_7),
        .I2(upper_reg_banks_0[7]),
        .I3(spm_data_7),
        .I4(alu_mux_sel_0),
        .I5(alu_mux_sel_1),
        .O(alu_result_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].arith_logical_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(arith_logical_value_7),
        .Q(arith_logical_result_7),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101100001011001000110010000110001" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[7].arith_logical_lut 
       (.I0(port_id[7]),
        .I1(p_7_in),
        .I2(arith_logical_sel_0),
        .I3(p_3_in),
        .I4(p_4_in),
        .I5(1'b1),
        .O5(logical_carry_mask_7),
        .O6(half_arith_logical_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].low_hwbuild.shift_rotate_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_rotate_value_7),
        .Q(shift_rotate_result_7),
        .R(instruction[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "88'b0110101101100011011100000111001101101101001101100101111101110011011100000110110100110001" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].small_spm.spm_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_ram_data_7),
        .Q(spm_data_7),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    flag_enable_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(flag_enable_value),
        .Q(flag_enable),
        .R(active_interrupt));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 init_zero_muxcy_CARRY4
       (.CI(1'b0),
        .CO({zero_flag_value,carry_middle_zero,carry_lower_zero,carry_in_zero}),
        .CYINIT(1'b0),
        .DI({shadow_zero_flag,middle_zero,lower_zero,drive_carry_in_zero}),
        .O(NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED[3:0]),
        .S({upper_zero_sel,middle_zero_sel,lower_zero_sel,carry_flag_value}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode0" *) 
  LUT6_2 #(
    .INIT(64'h0010000000000800)) 
    int_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(loadstar_type),
        .O6(int_enable_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    internal_reset_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(internal_reset_value),
        .Q(internal_reset),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    interrupt_enable_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(interrupt_enable_value),
        .Q(interrupt_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode0" *) 
  LUT6 #(
    .INIT(64'h000000000000CAAA)) 
    interrupt_enable_lut
       (.I0(interrupt_enable),
        .I1(instruction[0]),
        .I2(int_enable_type),
        .I3(t_state_0),
        .I4(active_interrupt),
        .I5(internal_reset),
        .O(interrupt_enable_value));
  LUT6 #(
    .INIT(64'hEFFFFFFF10000000)) 
    load_sys_regs_i_1
       (.I0(kcpsm6_rom[0]),
        .I1(kcpsm6_rom[1]),
        .I2(port_id[3]),
        .I3(port_id[2]),
        .I4(write_strobe),
        .I5(load_sys_regs_reg),
        .O(write_strobe_flop_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  LUT6_2 #(
    .INIT(64'h0000000087780000)) 
    lower_parity_lut
       (.I0(instruction[13]),
        .I1(carry_flag),
        .I2(arith_logical_result_0),
        .I3(arith_logical_result_1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(lower_parity),
        .O6(lower_parity_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_reg0" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    lower_reg_banks
       (.ADDRA({bank,instruction[7:4]}),
        .ADDRB({sx_addr,instruction[11:8]}),
        .ADDRC({bank,instruction[7:4]}),
        .ADDRD({sx_addr,instruction[11:8]}),
        .DIA({alu_result_1,alu_result_0}),
        .DIB({alu_result_1,alu_result_0}),
        .DIC({alu_result_3,alu_result_2}),
        .DID({alu_result_3,alu_result_2}),
        .DOA(register_vector[1:0]),
        .DOB(register_vector[9:8]),
        .DOC(register_vector[3:2]),
        .DOD(register_vector[11:10]),
        .WCLK(clk_in),
        .WE(register_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  LUT6_2 #(
    .INIT(64'h0000000000000001)) 
    lower_zero_lut
       (.I0(alu_result_0),
        .I1(alu_result_1),
        .I2(alu_result_2),
        .I3(alu_result_3),
        .I4(alu_result_4),
        .I5(1'b1),
        .O5(lower_zero),
        .O6(lower_zero_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  LUT6_2 #(
    .INIT(64'h0000000D00000000)) 
    middle_zero_lut
       (.I0(use_zero_flag),
        .I1(zero_flag),
        .I2(alu_result_5),
        .I3(alu_result_6),
        .I4(alu_result_7),
        .I5(1'b1),
        .O5(middle_zero),
        .O6(middle_zero_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode0" *) 
  LUT6_2 #(
    .INIT(64'h7777027700000200)) 
    move_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(returni_type),
        .O6(move_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 parity_muxcy_CARRY4
       (.CI(1'b0),
        .CO({NLW_parity_muxcy_CARRY4_CO_UNCONNECTED[3:1],carry_lower_parity}),
        .CYINIT(1'b0),
        .DI({NLW_parity_muxcy_CARRY4_DI_UNCONNECTED[3:1],lower_parity}),
        .O({NLW_parity_muxcy_CARRY4_O_UNCONNECTED[3:2],parity,NLW_parity_muxcy_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_parity_muxcy_CARRY4_S_UNCONNECTED[3:2],upper_parity,lower_parity_sel}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_vector1" *) 
  LUT6_2 #(
    .INIT(64'h0000F000000023FF)) 
    pc_mode1_lut
       (.I0(instruction[12]),
        .I1(returni_type),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(p_0_in),
        .O6(p_1_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_vector1" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    pc_mode2_lut
       (.I0(instruction[12]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(active_interrupt),
        .O(p_2_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode0" *) 
  LUT6 #(
    .INIT(64'h5A3CFFFF00000000)) 
    pc_move_is_valid_lut
       (.I0(carry_flag),
        .I1(zero_flag),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(pc_move_is_valid));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack1" *) 
  LUT6_2 #(
    .INIT(64'hFFFF100000002000)) 
    push_pop_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(pop_stack),
        .O6(push_stack));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  LUT6_2 #(
    .INIT(64'h4000000001000000)) 
    read_strobe_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(read_strobe_value),
        .O6(write_strobe_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack1" *) 
  LUT6 #(
    .INIT(64'h0080020000000000)) 
    regbank_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(regbank_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    register_enable_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(register_enable_value),
        .Q(register_enable),
        .R(active_interrupt));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  LUT6_2 #(
    .INIT(64'hC0CC0000A0AA0000)) 
    register_enable_lut
       (.I0(flag_enable_type),
        .I1(register_enable_type),
        .I2(instruction[12]),
        .I3(instruction[17]),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(flag_enable_value),
        .O6(register_enable_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  LUT6_2 #(
    .INIT(64'h00013F3F0010F7CE)) 
    register_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(flag_enable_type),
        .O6(register_enable_type));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  LUT6_2 #(
    .INIT(64'hFFFFF55500000EEE)) 
    reset_lut
       (.I0(run),
        .I1(internal_reset),
        .I2(stack_pointer_carry_4),
        .I3(bram_enable),
        .I4(reset),
        .I5(1'b1),
        .O5(run_value),
        .O6(internal_reset_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(run_value),
        .Q(run),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_bank_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_bank),
        .Q(shadow_bank),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_carry_flag_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_carry_flag),
        .Q(shadow_carry_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_zero_flag_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(shadow_zero_value),
        .Q(shadow_zero_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    shift_carry_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(shift_carry_value),
        .Q(shift_carry),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  LUT6 #(
    .INIT(64'hFFFFAACCF0F0F0F0)) 
    shift_carry_lut
       (.I0(register_vector[8]),
        .I1(p_7_in),
        .I2(shadow_carry_flag),
        .I3(instruction[3]),
        .I4(instruction[7]),
        .I5(instruction[16]),
        .O(shift_carry_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    spm_enable_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(spm_enable_value),
        .Q(spm_enable),
        .R(active_interrupt));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  LUT6_2 #(
    .INIT(64'h8000000020000000)) 
    spm_enable_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(t_state_0),
        .I5(1'b1),
        .O5(k_write_strobe_value),
        .O6(spm_enable_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_bit_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_bit),
        .Q(special_bit),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[0].lsb_stack.pointer_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_pointer_value_0),
        .Q(stack_pointer[0]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \stack_loop[0].lsb_stack.stack_muxcy_CARRY4 
       (.CI(1'b0),
        .CO({stack_pointer_carry_3,stack_pointer_carry_2,stack_pointer_carry_1,stack_pointer_carry_0}),
        .CYINIT(1'b0),
        .DI({feed_pointer_value_3,feed_pointer_value_2,feed_pointer_value_1,feed_pointer_value_0}),
        .O({stack_pointer_value_3,stack_pointer_value_2,stack_pointer_value_1,stack_pointer_value_0}),
        .S({half_pointer_value_3,half_pointer_value_2,half_pointer_value_1,half_pointer_value_0}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  LUT6_2 #(
    .INIT(64'h001529AAAAAAAAAA)) 
    \stack_loop[0].lsb_stack.stack_pointer_lut 
       (.I0(stack_pointer[0]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_0),
        .O6(half_pointer_value_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[1].upper_stack.pointer_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_pointer_value_1),
        .Q(stack_pointer[1]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[1].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[1]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_1),
        .O6(half_pointer_value_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[2].upper_stack.pointer_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_pointer_value_2),
        .Q(stack_pointer[2]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[2].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[2]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_2),
        .O6(half_pointer_value_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[3].upper_stack.pointer_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_pointer_value_3),
        .Q(stack_pointer[3]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110000" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[3].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[3]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_3),
        .O6(half_pointer_value_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110001" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[4].upper_stack.pointer_flop 
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_pointer_value_4),
        .Q(stack_pointer[4]),
        .R(internal_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110001" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 \stack_loop[4].upper_stack.stack_muxcy_CARRY4 
       (.CI(stack_pointer_carry_3),
        .CO({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED [3:1],stack_pointer_carry_4}),
        .CYINIT(1'b0),
        .DI({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED [3:1],feed_pointer_value_4}),
        .O({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED [3:1],stack_pointer_value_4}),
        .S({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED [3:1],half_pointer_value_4}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "104'b01101011011000110111000001110011011011010011011001011111011100110111010001100001011000110110101100110001" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[4].upper_stack.stack_pointer_lut 
       (.I0(stack_pointer[4]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(t_state_0),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value_4),
        .O6(half_pointer_value_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_high
       (.ADDRA(stack_pointer),
        .ADDRB(stack_pointer),
        .ADDRC(stack_pointer),
        .ADDRD(stack_pointer),
        .DIA(address[5:4]),
        .DIB(address[7:6]),
        .DIC(address[9:8]),
        .DID(address[11:10]),
        .DOA(stack_memory[5:4]),
        .DOB(stack_memory[7:6]),
        .DOC(stack_memory[9:8]),
        .DOD(stack_memory[11:10]),
        .WCLK(clk_in),
        .WE(t_state_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_low
       (.ADDRA(stack_pointer),
        .ADDRB(stack_pointer),
        .ADDRC(stack_pointer),
        .ADDRD(stack_pointer),
        .DIA({zero_flag,carry_flag}),
        .DIB({run,bank}),
        .DIC(address[1:0]),
        .DID(address[3:2]),
        .DOA({stack_zero_flag,stack_carry_flag}),
        .DOB({stack_bit,stack_bank}),
        .DOC(stack_memory[1:0]),
        .DOD(stack_memory[3:2]),
        .WCLK(clk_in),
        .WE(t_state_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_zero_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(stack_zero_flag),
        .Q(shadow_zero_value),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    sx_addr4_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(sx_addr4_value),
        .Q(sx_addr),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state1_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(t_state_value_0),
        .Q(t_state_0),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state2_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(t_state_value_1),
        .Q(bram_enable),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_control" *) 
  LUT6_2 #(
    .INIT(64'h0083000B00C4004C)) 
    t_state_lut
       (.I0(t_state_0),
        .I1(bram_enable),
        .I2(1'b0),
        .I3(internal_reset),
        .I4(special_bit),
        .I5(1'b1),
        .O5(t_state_value_0),
        .O6(t_state_value_1));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    upd_sysregs_i_1
       (.I0(port_id[2]),
        .I1(kcpsm6_rom[0]),
        .I2(port_id[3]),
        .I3(kcpsm6_rom[1]),
        .I4(write_strobe),
        .I5(upd_sysregs),
        .O(write_strobe_flop_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode2" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    upper_parity_lut
       (.I0(arith_logical_result_2),
        .I1(arith_logical_result_3),
        .I2(arith_logical_result_4),
        .I3(arith_logical_result_5),
        .I4(arith_logical_result_6),
        .I5(arith_logical_result_7),
        .O(upper_parity));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_reg1" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    upper_reg_banks
       (.ADDRA({bank,instruction[7:4]}),
        .ADDRB({sx_addr,instruction[11:8]}),
        .ADDRC({bank,instruction[7:4]}),
        .ADDRD({sx_addr,instruction[11:8]}),
        .DIA({alu_result_5,alu_result_4}),
        .DIB({alu_result_5,alu_result_4}),
        .DIC({alu_result_7,alu_result_6}),
        .DID({alu_result_7,alu_result_6}),
        .DOA(register_vector[5:4]),
        .DOB({upper_reg_banks_n_2,upper_reg_banks_n_3}),
        .DOC(register_vector[7:6]),
        .DOD({p_7_in,upper_reg_banks_n_7}),
        .WCLK(clk_in),
        .WE(register_enable));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  LUT6 #(
    .INIT(64'hFBFF000000000000)) 
    upper_zero_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(upper_zero_sel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    use_zero_flag_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(use_zero_flag_value),
        .Q(use_zero_flag),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_decode1" *) 
  LUT6_2 #(
    .INIT(64'hA280000000F000F0)) 
    use_zero_flag_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(strobe_type),
        .O6(use_zero_flag_value));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    write_strobe_flop
       (.C(clk_in),
        .CE(1'b1),
        .D(write_strobe_value),
        .Q(write_strobe),
        .R(active_interrupt));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* HBLKNM = "kcpsm6_flags" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    zero_flag_flop
       (.C(clk_in),
        .CE(flag_enable),
        .D(zero_flag_value),
        .Q(zero_flag),
        .R(internal_reset));
endmodule

(* ORIG_REF_NAME = "rojobot31" *) 
module rojobot31_0_rojobot31
   (LocX_reg,
    LocY_reg,
    BotInfo_reg,
    Sensors_reg,
    worldmap_addr,
    upd_sysregs,
    reset,
    clk_in,
    MotCtl_in,
    Bot_Config_reg,
    worldmap_data);
  output [7:0]LocX_reg;
  output [7:0]LocY_reg;
  output [7:0]BotInfo_reg;
  output [7:0]Sensors_reg;
  output [13:0]worldmap_addr;
  output upd_sysregs;
  input reset;
  input clk_in;
  input [7:0]MotCtl_in;
  input [7:0]Bot_Config_reg;
  input [1:0]worldmap_data;

  wire BOTCPU_n_1;
  wire BOTCPU_n_14;
  wire BOTCPU_n_15;
  wire BOTCPU_n_16;
  wire BOTCPU_n_17;
  wire BOTCPU_n_5;
  wire BOTREGIF_n_0;
  wire BOTREGIF_n_2;
  wire BOTREGIF_n_3;
  wire BOTREGIF_n_4;
  wire BOTREGIF_n_5;
  wire BOTREGIF_n_6;
  wire BOTREGIF_n_7;
  wire BOTREGIF_n_8;
  wire BOTREGIF_n_9;
  wire BotInfo_int;
  wire [7:0]BotInfo_reg;
  wire [7:0]Bot_Config_reg;
  wire [7:0]DataOut;
  wire LocX_int;
  wire [7:0]LocX_reg;
  wire LocY_int;
  wire [7:0]LocY_reg;
  wire [7:0]MotCtl_in;
  wire [7:0]Sensors_int;
  wire Sensors_int_0;
  wire [7:0]Sensors_reg;
  wire [11:0]address;
  wire bram_enable;
  wire clk_in;
  wire [7:0]in_port;
  wire [17:0]instruction;
  wire [7:0]out_port;
  wire [1:0]port_id;
  wire reset;
  wire upd_sysregs;
  wire [13:0]worldmap_addr;
  wire [1:0]worldmap_data;

  rojobot31_0_kcpsm6 BOTCPU
       (.Bot_Config_reg(Bot_Config_reg),
        .D({DataOut[7],BOTCPU_n_1,DataOut[5:3],BOTCPU_n_5,DataOut[1:0]}),
        .\DataOut_reg[0] (BOTREGIF_n_2),
        .\DataOut_reg[1] (BOTREGIF_n_3),
        .\DataOut_reg[2] (BOTREGIF_n_4),
        .\DataOut_reg[3] (BOTREGIF_n_5),
        .\DataOut_reg[4] (BOTREGIF_n_6),
        .\DataOut_reg[5] (BOTREGIF_n_7),
        .\DataOut_reg[6] (BOTREGIF_n_8),
        .\DataOut_reg[7] (BOTREGIF_n_9),
        .E(LocX_int),
        .Q(Sensors_int),
        .address(address),
        .bram_enable(bram_enable),
        .clk_in(clk_in),
        .instruction(instruction),
        .kcpsm6_rom(port_id),
        .load_sys_regs_reg(BOTREGIF_n_0),
        .out_port(out_port),
        .reset(reset),
        .upd_sysregs(upd_sysregs),
        .upper_reg_banks_0(in_port),
        .worldmap_data(worldmap_data),
        .write_strobe_flop_0(LocY_int),
        .write_strobe_flop_1(BotInfo_int),
        .write_strobe_flop_2(Sensors_int_0),
        .write_strobe_flop_3(BOTCPU_n_14),
        .write_strobe_flop_4(BOTCPU_n_15),
        .write_strobe_flop_5(BOTCPU_n_16),
        .write_strobe_flop_6(BOTCPU_n_17));
  rojobot31_0_bot31_if BOTREGIF
       (.\BotInfo_int_reg[0]_0 (BOTREGIF_n_2),
        .\BotInfo_int_reg[1]_0 (BOTREGIF_n_3),
        .\BotInfo_int_reg[2]_0 (BOTREGIF_n_4),
        .\BotInfo_int_reg[3]_0 (BOTREGIF_n_5),
        .\BotInfo_int_reg[4]_0 (BOTREGIF_n_6),
        .\BotInfo_int_reg[5]_0 (BOTREGIF_n_7),
        .\BotInfo_int_reg[6]_0 (BOTREGIF_n_8),
        .\BotInfo_int_reg[7]_0 (BOTREGIF_n_9),
        .\BotInfo_int_reg[7]_1 (BotInfo_int),
        .BotInfo_reg(BotInfo_reg),
        .D(out_port),
        .\DataOut_reg[0]_0 (port_id),
        .\DataOut_reg[7]_0 (in_port),
        .\DataOut_reg[7]_1 ({DataOut[7],BOTCPU_n_1,DataOut[5:3],BOTCPU_n_5,DataOut[1:0]}),
        .E(BOTREGIF_n_0),
        .\LocX_int_reg[7]_0 (LocX_int),
        .LocX_reg(LocX_reg),
        .\LocY_int_reg[7]_0 (LocY_int),
        .LocY_reg(LocY_reg),
        .\MapX_reg[6]_0 (BOTCPU_n_14),
        .\MapY_reg[6]_0 (BOTCPU_n_15),
        .MotCtl_in(MotCtl_in),
        .Q(Sensors_int),
        .\Sensors_int_reg[7]_0 (Sensors_int_0),
        .Sensors_reg(Sensors_reg),
        .clk_in(clk_in),
        .load_sys_regs_reg_0(BOTCPU_n_16),
        .reset(reset),
        .upd_sysregs(upd_sysregs),
        .upd_sysregs_reg_0(BOTCPU_n_17),
        .worldmap_addr(worldmap_addr));
  rojobot31_0_bot31_pgm BOTSIMPGM
       (.address(address),
        .bram_enable(bram_enable),
        .clk_in(clk_in),
        .instruction(instruction));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
