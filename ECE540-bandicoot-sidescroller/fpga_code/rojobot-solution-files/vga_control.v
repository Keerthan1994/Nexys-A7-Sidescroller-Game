`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Thong Doan
// 
// Create Date: 08/22/2020 03:19:28 PM
// Design Name: 
// Module Name: vga_control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module vga_control(

    // System
    input wire         clk, 
	input wire         rstn, 

    // WISHBONE Interface
	input wire [31:0]  wb_adr_i, 
	input wire [31:0]  wb_dat_i, 
	input wire [3:0]   wb_sel_i, 
	input wire         wb_we_i, 
	input wire         wb_cyc_i, 
	input wire         wb_stb_i,
	input wire [2:0]   wb_cti_i, 
	input wire [1:0]   wb_bte_i,
	output wire [31:0] wb_dat_o, 
	output reg         wb_ack_o, 
	output wire        wb_err_o, 
	output wire        wb_rtry_o,
	
	// VGA signals
    input  wire clk_75,              // 75MHz clock
    output wire horiz_sync,          // horizontal sync
    output wire vert_sync,           // vertical sync
    output wire [3:0] VGA_R,         // Red channel
    output wire [3:0] VGA_G,         // Green channel
    output wire [3:0] VGA_B,         // Blue channel
	output wire [11:0] pixel_row,    // row position on the screen
    output wire [11:0] pixel_column, // column position on the screen
    output wire video_on             // flag if current position belongs to visible area
    );
    
    // ****************************************
    // VARIABLES
    // ****************************************
    
    reg rstn_75;                    // reset signal synced to 75MHz
    reg [11:0] map_color;           // register determining color for the screen
    reg [11:0] map_color_75;        // sync to 75MHz
    wire req_we;                    // write enable
    
    // ****************************************
    // INSTANCES
    // ****************************************
    
    // dtg: sync signals with the VGA: 1024x768 @75MHz
    dtg vga_dtg_inst(
        .clock(clk_75), 
        .rst(~rstn_75),
	    .horiz_sync(horiz_sync), 
	    .vert_sync(vert_sync), 
	    .video_on(video_on),
	    .pixel_row(pixel_row),
	    .pixel_column(pixel_column)
    );

    // colorizer
    vga_colorizer vga_colorizer_inst(
        .icon(),
        .map_color(map_color_75),
        .title_color(),
        .video_on(video_on),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B)
    );
    
    // ****************************************
    // LOGIC
    // ****************************************
    
    // determine write enable
    assign req_we = &{wb_cyc_i, wb_stb_i, wb_we_i, !wb_ack_o};
    
    // sync signals from 100MHz to 75MHz domain
    always @(posedge clk_75) begin
        rstn_75 <= rstn;
        map_color_75 <= map_color;
    end
    
    // domain: 100MHz
    always @(posedge clk, negedge rstn) begin

        if (~rstn) begin
            wb_ack_o <= 1'b0;
            map_color <= 12'h0F8;
        end
        else begin
            // handle: acknowledge
            wb_ack_o <= wb_cyc_i & !wb_ack_o;
            
            // record color
            if (req_we & wb_sel_i[0]) begin
                map_color[7:0]  <= wb_dat_i[7:0];
            end
            if (req_we & wb_sel_i[1]) begin
                map_color[11:8] <= wb_dat_i[11:8];
            end
        end
    end
    
endmodule
