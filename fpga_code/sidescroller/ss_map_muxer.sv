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
    input  wire        clk,
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
     //try making a previous state register to save when second map state is up
    // Should only trigger on a change in LocX
    reg [3:0] current_map;
    reg [3:0] next_state;   //stores next map state for teleporting to next map 
    reg [3:0] prev_state; //stores previous map state for teleporting to previous map
    
    always @(posedge clk or negedge reset) begin
        if (reset) begin
            current_map <= 0;
            next_state <= 0;
        end
        //checks conditions at right end of map screen
        else if (LocX == 8'h7C) begin
             //switches into second map
            if (next_state == 2 && current_map == 0) begin
            current_map <= 2;
            end
            //switches into third map
            else if (next_state == 3 && current_map == 2) begin
            current_map <= 3;
            end
            else begin
            end
        end
        //checks condition at left end of map screen 
        else if (LocX == 8'h01) begin
            //sustains map 2 when teleporting back to loc 01 on switch from map 1 to 2
            if (next_state == 2 && current_map == 2) begin 
            current_map <= 2;
            next_state <= 3;
            prev_state <= 2; //loads in current_map value for map 2 in the event player is moving E to telport from 00 to 7B of 1st map 
            end
            //sustains map 3 when teleporting back to loc 01 on switch from map 2 to 3
            else if (next_state == 3 && current_map == 3) begin
            current_map <= 3;
            prev_state <= 3;
            end
            //sets current map to 1 when starting go or when traversing back to starting point 
            else if (current_map == 0) begin
            current_map <= 0;
            next_state <= 2;
            prev_state <= 0;
            end    
            //enables return to 1st map from 2nd map 
            else if (next_state == 3 && current_map == 2) begin
            prev_state <= 2;
            end
            else begin
            end    
        end
        //This is to clear out prev_state after teleportation from 00 to 7B so it can be set again at 01 
        else if (LocX == 8'h7A) begin
            prev_state <= 0;
        end
        //checks / sets conditions for returning to the previous map screen - moving W 
        else if (LocX == 8'h7B) begin
            //returns to 1st map from 2nd map 
            if (prev_state == 2) begin
                //these values are carried through so player can turn E and return to screen they came from 
                current_map <= 0; 
                next_state <= 2;    
            end   
            //returns to 2nd map from 3rd map 
            else if (prev_state == 3) begin
                current_map <= 2;
                next_state <= 3;
            end
            else begin
            end
        end
        else begin //added this "do nothing" else state to prevent "invisible" latch 
        current_map <= current_map;
        next_state <= next_state;
        end 
    end
    
    // mux to select map based on the SW (Will need to be updated once we have more maps.)
    assign {worldmap_data, world_pixel} =
        current_map < 1 ? {worldmap_data_part_1, world_pixel_part_1} : 
        (current_map < 3 ? {worldmap_data_lr, world_pixel_lr} : 
        (current_map < 4 ? {worldmap_data_loop, world_pixel_loop} : {worldmap_data_loop, world_pixel_loop}));
  
endmodule
