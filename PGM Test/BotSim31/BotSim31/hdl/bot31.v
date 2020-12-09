//	bot31.v - BOTSIM (Rojobot) 3.1 top level
//
//	Version:		3.2
//	Author:			Roy Kravitz
//	Last Modified:	23-May-2015
//	
//	Revision History:
//	-----------------
//	03-Sep-06		RK		Created this module
//	16-Oct-09		RK		Minor changes for changover to ECE510
//	24-Oct-12		RK		Nodified for Nexys3 and kcpsm6
//	26-Oct-11		RK		Added variable wheel control and BOTSIM configuration
//	23-May-15		RK		Updated for Vivado and Nexys4.  No functional changes
//	
//	Description
//	-----------
//	This module is the top level module for the BOTSIM 3.1  (Rojobot).  The BOTSIN interfaces
//	to the Application CPU via an 8-bit register interface.  These registers are available
//	as outputs from the module.  Input to the BOTSIM is through a single 8-bit
//	motor control register which contains values for the left and right wheel speed and direction
//	
//	This module also provides a register-based interface to video logic.
//	
//	The BOTSIM contains a picoblaze and its program ROM, world map logic (including the Dual-port RA
//	containing the map) and the register-based interface to the picoblaze.
//  The picoblaze implements the rojobot and the world it moves around in.
//
//	NOTE:  The kcpsm6 and program ROM variables and instantiations are taken from kcpsm6_design_template.v
//
// THIS VERSION (BOT 3.1) IMPLEMENTS VARIABLE SPEED CONTROL ADDS SUPPORT FOR THE USER TO CONFIGURE THE WHEEL
// MOVEMENT THRESHOLD AND TYPE OF MOTOR CONTROL  (ON/OFF CONTROL vs. VARIABLE SPEED).  
//////////

module bot31(
	// system interface registers
	input 		[7:0]		MotCtl_in,		// Motor control input	
	output		[7:0] 		LocX_reg,		// X-coordinate of rojobot's location		
							LocY_reg,		// Y-coordinate of rojobot's location
							Sensors_reg,	// Sensor readings
							BotInfo_reg,	// Information about rojobot's activity
							LMDist_reg,		// left motor distance register
							RMDist_reg,		// right motor distance register
						
	// interface to the video logic
	input 		[9:0]		vid_row,		// video logic row address
							vid_col,		// video logic column address

	output 		[1:0]		vid_pixel_out,	// pixel (location) value

	// interface to the system
	input					clk,			// system clock
							reset,			// system reset
	output					upd_sysregs,	// flag from PicoBlaze to indicate that the system registers 
											// (LocX, LocY, Sensors, BotInfo)have been updated
											
	// BOT configuration register - BOT 3.1 feature									
	input 		[7:0]		Bot_Config_reg	// Bot Configuration register
);

// internal variables for picoblaze and program ROM signals
// signal names taken from kcpsm6_design_template.v
wire	[11:0]		address;
wire	[17:0]		instruction;
wire				bram_enable;
wire				rdl;

wire	[7:0]		port_id;
wire	[7:0]		out_port;
wire	[7:0]		in_port;
wire				write_strobe;
wire				read_strobe;
wire				interrupt;
wire				interrupt_ack;
wire				kcpsm6_sleep; 
wire				kcpsm6_reset;
	
wire 	[1:0]		wrld_loc_info;		// location value from world map
wire 	[7:0]		wrld_col_addr,		// column address to map logic
					wrld_row_addr;		// row address to map logic
	
// global assigns
assign kcpsm6_reset = reset;			// Picoblaze is reset w/ global reset signal
assign kcpsm6_sleep = 1'b0;				// kcpsm6 sleep mode is not used
assign interrupt = 1'b0;				// kcpsm6 interrupt is not used	

// instantiate the BOTSIM Picoblaze and its Program ROM
kcpsm6 #(
	.interrupt_vector	(12'h3FF),
	.scratch_pad_memory_size(64),
	.hwbuild		(8'h00))
  BOTSIMCPU (
	.address 		(address),
	.instruction 	(instruction),
	.bram_enable 	(bram_enable),
	.port_id 		(port_id),
	.write_strobe 	(write_strobe),
	.k_write_strobe (),				// Constant Optimized writes are not used in this implementation
	.out_port 		(out_port),
	.read_strobe 	(read_strobe),
	.in_port 		(in_port),
	.interrupt 		(interrupt),
	.interrupt_ack 	(),				// Interrupt is not used in this implementation
	.reset 			(kcpsm6_reset),
	.sleep			(kcpsm6_sleep),
	.clk 			(clk)
); 

 // instantiate the BOTSIM program ROM
 // JTAG update is disabled - This is the "production" BOTSIM
 // so save the functionality for the Application program
 bot31_pgm BOTSIMPGM ( 
	.enable 		(bram_enable),
	.address 		(address),
	.instruction 	(instruction),
	.clk 			(clk));

// instantiate the world  interface
world_if31  WRLDIF (
	// interface to the picoblaze
	.Wr_Strobe(write_strobe),		// Write strobe - asserted to write I/O data
	.Rd_Strobe(read_strobe),		// Read strobe - asserted to read I/O data
	.AddrIn(port_id),
	.DataIn(out_port),				// Data to be written to I/O register
	.DataOut(in_port),				// Data to be read from I/O register
	
	// interface to the system	
	.MotCtl(MotCtl_in),				// Motor control input	
	.LocX(LocX_reg),				// X-coordinate of rojobot's location		
	.LocY(LocY_reg),				// Y-coordinate of rojobot's location
	.BotInfo(BotInfo_reg),			// Information about rojobot's activity
	.Sensors(Sensors_reg),			// Sensor readings

	.LMDist(LMDist_reg),			// left motor distance register
	.RMDist(RMDist_reg),			// right motor distance register
												
	// interface to the world map logic
	.MapX(wrld_col_addr),			// column address of world map location 	
	.MapY(wrld_row_addr),			// row address of world map location 
	.MapVal(wrld_loc_info),			// map value for location [row_addr, col_addr]

	// system-wide signals	
	.clk(clk),						// 25Mhz system clock
	.reset(reset),					// system reset
			
	// update system registers (interrupt request to Application CPU
	.upd_sysregs(upd_sysregs),		// flag from PicoBlaze to indicate that the system registers 
									// (LocX, LocY, Sensors, BotInfo)have been updated
									
	// BOT Config register - BOTSIM 3.0
	.BotConfig(Bot_Config_reg)
);
		
// instantiate the world map logic
map31 	MAP (
	// interface to external world emulator
	.wrld_col_addr(wrld_col_addr),		// column address of world map location
	.wrld_row_addr(wrld_row_addr),		// row address of world map location
	.wrld_loc_info(wrld_loc_info),		// map value for location [row_addr, col_addr]

	// interface to the video logic
	.vid_row(vid_row),					// video logic row address
	.vid_col(vid_col),					// video logic column address
	.vid_pixel_out(vid_pixel_out),		// pixel (location) value

	// interface to the system
	.clk(clk),							// system clock
	.reset(reset)						// system reset
);
				
endmodule
						
