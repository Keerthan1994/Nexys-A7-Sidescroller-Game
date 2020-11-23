`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 02:59:56 PM
// Design Name: 
// Module Name: ss_map_muxer
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


module ss_map_muxer(
    input  wire        clk_75,
    input  wire        reset,
    input  reg  [15:0] debounced_SW_75,
    input  wire [7:0]  LocX,
    input  wire [13:0] vid_addr,
    input  wire [13:0] worldmap_addr,
    output wire [1:0]  worldmap_data,
    output wire [1:0]  world_pixel
    );

    wire [1:0]  worldmap_data_part_1, worldmap_data_lr, worldmap_data_loop;
    wire [1:0]  world_pixel_part_1, world_pixel_lr, world_pixel_loop;
    
    // world map part 1
    world_map world_map(
        .clka(clk_75),
        .addra(worldmap_addr),
        .douta(worldmap_data_part_1),
        .clkb(clk_75),
        .addrb(vid_addr),
        .doutb(world_pixel_part_1)
    );
    
    // world map lr
    world_map_lr world_map_lr(
        .clka(clk_75),
        .addra(worldmap_addr),
        .douta(worldmap_data_lr),
        .clkb(clk_75),
        .addrb(vid_addr),
        .doutb(world_pixel_lr)
    );
    
    // world map loop
    world_map_loop world_map_loop(
        .clka(clk_75),
        .addra(worldmap_addr),
        .douta(worldmap_data_loop),
        .clkb(clk_75),
        .addrb(vid_addr),
        .doutb(world_pixel_loop)
    );
    
    // mux to select map based on the SW
    assign {worldmap_data, world_pixel} =
        LocX == 8'h7C ? {worldmap_data_lr, world_pixel_lr} : {worldmap_data_part_1, world_pixel_part_1};

    
endmodule
