# Nexys-A7-Sidescroller-Game
ECE 540 SOC design final project by Keerthan Nayak, Ryan Fallis, Richard 


Project Modified Files Listing:

Hardware:
..\fpga_code\rojobot-solution-files:
rojobot_controller.v - modified for map muxing
ss_map_muxer.v - Contains the map muxing logic
robot_icon_v2.v - New icons
title_colorizer.v - New title block
map_colorizer.v - New colors
Multiple new mem files for the crash bandicoot and maps

Rojobot IP Block:
..\project_1\project_1.srcs\sources_1\ip\rojobot31_0\src:
bot31_if.v - Modified to handle crash teleporting (start/end of map)
           - Modified to handle falling mechanism. 
           - Modified to turn LocX/LocY outputs into datain as well (override in core)
bot31_pgm.v - Reassembled rojobot firmware

..\PGM Test\KCPSM6_Release9_30Sept14\Rojobot PSM\Sidescroller version 3:
bot31_pgm.psm - Modified core to take LocX and LocY as input ports.
              - Modified to override controls and force orientations.
              - Modified turning movements to become west/east + forward movement
              - Modified to remove 45 degree orientations SW/NW/SE/NE
              - Modified starting location to LocX = 01
             
Software:
..\assembly_code\RVfpga_RojoBot_SW\src:
Main.S        - Modified to work with pushbuttons or accelerometer controls.
              - Modified to assist in falling mechanism

Project Files:
Report
Powerpoint
.bit and firmware.elf file
