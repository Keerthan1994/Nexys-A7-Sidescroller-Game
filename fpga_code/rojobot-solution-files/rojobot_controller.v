`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Thong Doan
// 
// Create Date: 10/02/2020 08:21:59 PM
// Design Name: 
// Module Name: rojobot_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//      This module wraps the rojobot module and the WB interface signals
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rojobot_controller(

    // System
    input wire         clk,            // 100MHz clock
	input wire         rstn,           // reset active low
	input wire         clk_75,         // 75MHz clock
	input wire [15:0]  debounced_SW,   // the switches

    // WISHBONE Interface
	input wire [31:0]  wb_adr_i, 
	input wire [31:0]  wb_dat_i, 
	input wire [3:0]   wb_sel_i, 
	input wire         wb_we_i, 
	input wire         wb_cyc_i, 
	input wire         wb_stb_i,
	input wire [2:0]   wb_cti_i, 
	input wire [1:0]   wb_bte_i,
	output reg [31:0]  wb_dat_o, 
	output reg         wb_ack_o, 
	output wire        wb_err_o, 
	output wire        wb_rtry_o,
	
	// VGA
    input wire [11:0]  pixel_column,    // VGA screen column
    input wire [11:0]  pixel_row,       // VGA screen row
    input wire         video_on,        // VGA signal for visible region
    output wire [ 3:0] VGA_R,           // VGA red channel
    output wire [ 3:0] VGA_G,           // VGA green channel
    output wire [ 3:0] VGA_B            // VGA blue channel
	
    );
    
    // ****************************************
    // VARIABLES
    // ****************************************
    
    // for SYNC
    reg rstn_75;                        // reset in 75MHz domain
    reg [15:0] debounced_SW_75;         // the switches in 75 domain
    
    // for WISHBONE bus
    reg [7:0]   WB_H_BOT_CTRL;          // bot control sent from software
    reg         WB_H_INT_ACK;           // int ack sent from software
    wire        WB_H_BOT_UPDATE_SYNC;   // bot update sync syngal sent from Rojobot
    wire [31:0] WB_H_BOT_INFO;          // bot info sent from Rojobot
    wire        req_we;                 // write enable
    wire [7:0]  WB_HADDR;               // used for offseting, extracted from wishbone-address-bus 
    
    // Rojobot
    wire [7:0]  MotCtl_in;
    reg  [7:0]  MotCtl_in_75;           // sync to 75MHz domain
    wire [7:0]  LocX_reg;
    reg  [7:0]  LocX_reg_100;           // sync to 100MHz domain
    wire [7:0]  LocY_reg;
    reg  [7:0]  LocY_reg_100;           // sync to 100MHz domain
    wire [7:0]  Sensors_reg;
    reg  [7:0]  Sensors_reg_100;        // sync to 100MHz domain
    wire [7:0]  BotInfo_reg;
    reg  [7:0]  BotInfo_reg_100;        // sync to 100MHz domain
    wire        upd_sysregs;
    reg         upd_sysregs_100;        // sync to 100MHz domain
    wire [11:0] icon;
    
    // Handshake flip-flop
    reg         H_BOT_UPDATE_SYNC;
    wire        IO_INT_ACK;
  
    // World map
    wire [13:0] worldmap_addr;
    //wire [1:0]  worldmap_data, worldmap_data_part_1, worldmap_data_lr, worldmap_data_loop;
    wire [13:0] vid_addr;
    //wire [1:0]  world_pixel_part_1, world_pixel_lr, world_pixel_loop;
    wire [1:0]  world_pixel;
    wire [11:0] map_color;
    
    // Title
    wire [11:0] title_color;
    
    // Scaler
    wire [6:0]  world_row, world_column;
    wire        out_of_map;
    
    // ****************************************
    // INSTANCES
    // ****************************************
    
    // rojobot
    rojobot31_0 robot (
        .MotCtl_in(MotCtl_in_75),         // input wire [7 : 0] MotCtl_in
        .LocX_reg(LocX_reg),              // output wire [7 : 0] LocX_reg
        .LocY_reg(LocY_reg),              // output wire [7 : 0] LocY_reg
        .Sensors_reg(Sensors_reg),        // output wire [7 : 0] Sensors_reg
        .BotInfo_reg(BotInfo_reg),        // output wire [7 : 0] BotInfo_reg
        .worldmap_addr(worldmap_addr),    // output wire [13 : 0] worldmap_addr
        .worldmap_data(worldmap_data),    // input wire [1 : 0] worldmap_data
        .clk_in(clk_75),                  // input wire clk_in
        .reset(~rstn_75),                 // input wire reset
        .upd_sysregs(upd_sysregs),        // output wire upd_sysregs
        .Bot_Config_reg(debounced_SW_75)  // input wire [7 : 0] Bot_Config_reg
    );
    
    // handshake flip-flop
    always @ (posedge clk) begin
        if (IO_INT_ACK == 1'b1) begin
            H_BOT_UPDATE_SYNC <= 1'b0;
        end else if (upd_sysregs_100 == 1'b1) begin
            H_BOT_UPDATE_SYNC <= 1'b1;
        end else begin
            H_BOT_UPDATE_SYNC <= H_BOT_UPDATE_SYNC;
        end
    end
    
    // Sidescroller Map Muxer:
    ss_map_muxer map_muxer(
        .clk(clk),
        .clk_75(clk_75),
        .reset(~rstn_75), //changed from rstn_75 to ~rstn_75
        .debounced_SW_75(debounced_SW_75),
        .LocX(LocX_reg),
        .vid_addr(vid_addr),
        .worldmap_addr(worldmap_addr),
        .worldmap_data(worldmap_data),
        .world_pixel(world_pixel)
    );
    
    // scaler
    vga_scaler_v2 vga_scaler_v2(
        .world_row(world_row),
        .world_column(world_column),
        .pixel_row(pixel_row),
        .pixel_column(pixel_column),
        .vid_addr(vid_addr),
        .out_of_map(out_of_map)
    );
    
    // rojobot ICON  
    robot_icon_v2 robot_icon_v2(
        .clk(clk_75),
        .reset(~rstn_75),
        .pixel_row(pixel_row),
        .pixel_column(pixel_column),
        .LocX_reg(LocX_reg),
        .LocY_reg(LocY_reg),
        .BotInfo_reg(BotInfo_reg),
        .icon(icon)
    );
    
    // map colorizer
    map_colorizer map_colorizer(
        .pixel_row(pixel_row),
        .pixel_column(pixel_column),
        .map_value(world_pixel),
        .map_color(map_color)
    );
    
    // title colorizer
    title_colorizer title_colorizer(
        .clk(clk_75),
        .pixel_row(pixel_row),
        .pixel_column(pixel_column),
        .title_color(title_color)
    );
    
    // colorizer
    colorizer_v2 colorizer_v2(
        .icon(icon),
        .map_color(map_color),
        .title_color(title_color),
        .video_on(video_on),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B)
    );
    
    // ****************************************
    // LOGIC
    // ****************************************
    
    // sync signals from 100MHz to 75MHz domain
    always @(posedge clk_75) begin
        rstn_75 <= rstn;
        MotCtl_in_75 <= MotCtl_in;
        debounced_SW_75 <= debounced_SW;
    end
    
    // sync signals from 75MHz to 100MHz domain
    always @(posedge clk) begin
        LocX_reg_100 <= LocX_reg;
        LocY_reg_100 <= LocY_reg;
        Sensors_reg_100 <= Sensors_reg;
        BotInfo_reg_100 <= BotInfo_reg;
        upd_sysregs_100 <= upd_sysregs;
    end
    
    // connect WISBHONE data & robot data
    assign WB_H_BOT_INFO = {LocX_reg_100, LocY_reg_100, Sensors_reg_100, BotInfo_reg_100};
    assign WB_H_BOT_UPDATE_SYNC = H_BOT_UPDATE_SYNC;
    assign MotCtl_in = WB_H_BOT_CTRL;
    assign IO_INT_ACK = WB_H_INT_ACK;
    
    // determine write enable, extract address offset
    assign req_we = &{wb_cyc_i, wb_stb_i, wb_we_i, !wb_ack_o};
    assign WB_HADDR = wb_adr_i[7:0];
    
    // WISHBONE acknowledge
    always @(posedge clk, negedge rstn) begin
        if (~rstn) begin
            wb_ack_o <= 0;
        end
        else begin
            wb_ack_o <= wb_cyc_i & !wb_ack_o;
        end
    end
    
    // write data via WISHBONE bus
    always @(posedge clk, negedge rstn) begin
    
        // reset
        if (~rstn) begin
            WB_H_INT_ACK  <= 1'b0;
            WB_H_BOT_CTRL  <= 8'h00;
        end
        else if (req_we & wb_sel_i[0]) begin
            case (WB_HADDR)
                // bot control
                8'h10: WB_H_BOT_CTRL <= wb_dat_i[7:0];
            
                // int ack
                8'h18: WB_H_INT_ACK  <= wb_dat_i[0];
            endcase
        end
    end
    
    // read data via WISHBONE bus
    always @ (posedge clk, negedge rstn) begin
        if (~rstn) begin
            wb_dat_o <= 32'h00_00_00_00;
        end
        else begin
            case (WB_HADDR)
                // bot info
                8'h0C: wb_dat_o <= WB_H_BOT_INFO;
          
                // update sync
                8'h14: wb_dat_o <= {31'h00_00_00_00, WB_H_BOT_UPDATE_SYNC};
            endcase
        end
    end
    
endmodule


