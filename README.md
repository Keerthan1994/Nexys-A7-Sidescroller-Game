# Nexys-A7-Sidescroller-Game
<b>ECE 540 SOC design final project</b><br/>
by Keerthan Nayak, Ryan Fallis, Richard 
<br/>
<br/>

![image](https://user-images.githubusercontent.com/61081801/147900674-5b2fe928-56d1-4919-80c6-bea997246803.png)


<b>SS_Final_Project_Files Folder</b><br/>
Contains a dump of all the important files we modified.<br/>

Project Modified Files Listing:<br/>
<br/>
<b>Hardware:</b><br/>
..\fpga_code\rojobot-solution-files:<br/>
rojobot_controller.v - modified for map muxing<br/>
ss_map_muxer.v - Contains the map muxing logic<br/>
robot_icon_v2.v - New icons<br/>
title_colorizer.v - New title block<br/>
map_colorizer.v - New colors<br/>
Multiple new mem files for the crash bandicoot and maps<br/>
<br/>
<b>Rojobot IP Block:</b><br/>
..\project_1\project_1.srcs\sources_1\ip\rojobot31_0\src:<br/>
bot31_if.v - Modified to handle crash teleporting (start/end of map)<br/>
           - Modified to handle falling mechanism.<br/> 
           - Modified to turn LocX/LocY outputs into datain as well (override in core)<br/>
bot31_pgm.v - Reassembled rojobot firmware<br/>
<br/>
..\PGM Test\KCPSM6_Release9_30Sept14\Rojobot PSM\Sidescroller version 3:<br/>
bot31_pgm.psm - Modified core to take LocX and LocY as input ports.<br/>
              - Modified to override controls and force orientations.<br/>
              - Modified turning movements to become west/east + forward movement<br/>
              - Modified to remove 45 degree orientations SW/NW/SE/NE<br/>
              - Modified starting location to LocX = 01<br/>
             <br/>
<b>Software:</b><br/>
..\assembly_code\RVfpga_RojoBot_SW\src:<br/>
Main.S        - Modified to work with pushbuttons or accelerometer controls.<br/>
              - Modified to assist in falling mechanism<br/>
..\assembly_code\Main-accel.S - Partially working version with accelerometer.<br/>
<br/>
<b>Project Files:</b><br/>
Report<br/>
Powerpoint<br/>
.bit and firmware.elf file located in SS_Final_Project_Files Folder<br/>
