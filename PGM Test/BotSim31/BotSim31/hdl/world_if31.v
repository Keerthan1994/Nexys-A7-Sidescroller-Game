// world_if31.v - Register interface to the BOTSIM 3.x external world picoblaze 
//
// Version:			3.2
// Author:			Roy Kravitz
// Last Modified:	23-May-2015
//	
// Revision History:
// -----------------
// 05-Nov-10		RK		Created this module from world_if.v v. 1.5
// 16-Nov-11		RK		Renamed to keep consistent with new BOT version 3.1.  No code changes
// 26-Oct-12		RK		Modified for kcpsm6 and Nexys3
// 23-May-15		RK		Updated for Vivado and Nexys4.  No functional changes
//
// Description
// -----------
// This module implements a register-based interface to a Rojobot-based system design.
// The Rojobot is implemented in a SOC embedded system using the Xilinx
// Picoblaze as the CPU and block of logic (in verilog) to implement the world map.
//  
// The BOTSIM (Rojobot emulator) is controlled by external logic writing to an 8-bit motor
// control register of the following format:  
//	lm_spd[2:0], lm_dir, rm_spd[2:0], rm_dir where
//		lm_spd and rm_spd are the speed of the left and write motors
//		lm_dir and rm_dir are motor forward (1) and motor reverse (0)
//
// The BOTSIM configuration is supported by the BOTConfig register which is controlled by external
//	logic
//
// A Rojobot-based system design needs access to information about the location of
// the rojobot in its simulated world.  This access is in the form of the following
// 8-bit registers:
//		Loc_X		O	X (column) coordinate of Rojobot's current location
//		Loc_y		O 	Y (row) coordinate of Rojobot's current location
//		Sensors		O	Sensor values.  Rojobot contains a proximity sensor (left and right)
//					 	A proximity sensor is set to 1 if Rojobot detects an object in
//					  	front of it.  It also contains a black line sensor (left, center
//					  	and right).  Each black line sensor is set to 0 if there is
//						a black line under it and set to 1 if there is not black line
//						under it.
//		BotInfo		O 	Information on rojobot's current orientation and movement
//
// There are two additional registers available to the Robobot-based system
//		LMDist		O	Left motor distance counter value
//		RMDist		O	Right motor distance counter value
//
// Data from the Rojobot emulator built in the PicoBlaze are stored in internal registers
// as they are written by the PicoBlaze.  The Rojobot interface provides a synchronized
// view of all of the registers by transferring the contents of the internal registers when
// internal control signals are asserted by the PicoBlaze by writing the following port addresses:
//	PRW_LOADREGS,	Port Address 0C		; loads system interface registers
//	PRW_LDMOTDIST,  Port Address 0D		; loads motor distance counters
//	PRW_RUNNING,	Port Address 0E		; a way for the PicoBlaze program to indicate it's running
// Each write to the specific port toggles the control signal (which is reset to deasserted)		  
//
//
// THIS VERSION OF THE MODULE SUPPORTS THE BOT CONFIGURATION REGISTER (BOT 3.x)						
//////////

module world_if31(
	// interface to the picoblaze
	input 					Wr_Strobe,		// Write strobe - asserted to write I/O data
							Rd_Strobe,		// Read strobe - asserted to read I/O data
	input 		[7:0] 		AddrIn,			// I/O port address
	input 		[7:0] 		DataIn,			// Data to be written to I/O register
	output reg 	[7:0] 		DataOut,		// I/O register data to picoblaze

	// interface to the system	
	input 		[7:0]		MotCtl,			// (Port 0) Motor control input	
	output reg	[7:0] 		LocX,			// (Port 1) X-coordinate of rojobot's location		
							LocY,			// (Port 2) Y-coordinate of rojobot's location
							BotInfo,		// (Port 3) Rojobot orientation and movement
							Sensors,		// (Port 4) Sensor readings
							LMDist,			// (Port 5) Left motor distance register
							RMDist,			// (Port 6) Right motor distance register
												
	// interface to the world map logic
	output reg	[7:0]		MapX,			// (Port 8) Column address of world map location
	output reg	[7:0]		MapY,			// (Port 9) Row address of world map location
	input 		[1:0]		MapVal,			// (Port 10) Map value for location [row_addr, col_addr]	

	
	input					clk,			// system clock
							reset,			// system reset
						
	// BOT update signal (interrupt for application)
	output reg				upd_sysregs,	// flag from PicoBlaze to indicate that the system registers 
											// (LocX, LocY, Sensors, BotInfo)have been updated	
										
	// BOT Configuration register (BOT 3.0)
	input 		[7:0]		BotConfig		
);

				
reg			load_sys_regs,			// Load system register flip-flop			
			load_dist_regs;			// Load distance register flip-flop


// holding registers for world.  We want all registers to be updated
// at the same time (from system's point of view) to make sure
// the world view is consistent.
reg [7:0]	LocX_int,			// X-coordinate of rojobot's location		
			LocY_int,			// Y-coordinate of rojobot's location
			BotInfo_int,		// Rojobot orientation and movement
			Sensors_int,		// Sensor readings
			LMDist_int,			// Left motor distance register
			RMDist_int;			// Right motor distance register
					
// read registers
always @(posedge clk) begin
	case (AddrIn[3:0])
		// I/O registers for rojobot simulator HW interface
		// PicoBlaze should only read MotCtl and MapVal but
		// this code returns internal register values if asked
		4'b0000 :	DataOut = MotCtl;
		4'b0001 :	DataOut = LocX_int;
		4'b0010 :	DataOut = LocY_int;
		4'b0011 :	DataOut = BotInfo_int;			
		4'b0110 : 	DataOut = RMDist_int;	
		4'b0111 : 	DataOut = BotConfig;
				
		// I/O registers for map logic	
		4'b1000 : 	DataOut = 8'b01010101;		// shouldn't be read - MapX (column address)
		4'b1001 : 	DataOut = 8'b10101010;		// shouldn't be read - MapY (row address)
		4'b1010 : 	DataOut = MapVal;			// location info from map logic	
		4'b1011 : 	DataOut = 8'd0;				// //RESERVED//

		// Load registers synchronization control signals - do nothing on read	
		4'b1100 : 	DataOut = 8'b00000000;
		4'b1101 : 	DataOut = 8'b00000000;
		
		4'b1110 : 	DataOut = 8'b00000000;		// upd_sysregs - do nothing on read
		4'b1111 : 	DataOut = 8'b10101010;		// //RESERVED//
	endcase
end // always - read registers


// write registers
always @(posedge clk or posedge reset) begin
	if (reset) begin
		LocX_int <= 0;		
		LocY_int <= 0;
		BotInfo_int <= 0;
		Sensors_int <= 0;
		LMDist_int <= 0;
		RMDist_int <= 0;
		
		load_sys_regs <= 0;
		load_dist_regs <= 0;
		upd_sysregs <= 0;
	end
	else begin
		if(Wr_Strobe) begin
			 case (AddrIn[3:0])
				// I/O registers for rojobot simulator HW interface
				4'b0000 :	;						// MotCtl is input only - do nothing
				4'b0001 :	LocX_int <= DataIn;		// Rojobot location X-coord
				4'b0010 :	LocY_int <= DataIn;		// Rojobot location X-coord
				4'b0011 :	BotInfo_int <= DataIn;	// Rojobot orientation and movement 
				4'b0100 :	Sensors_int <= DataIn;	// Rojobot sensors
				4'b0101 : 	LMDist_int <= DataIn;	// Rojobot left motor distance
				4'b0110 :	RMDist_int <= DataIn;	// Rojobot right motor distane		
				4'b0111 : 	;  						// BotConfig is input only - do nothing

				// I/O registers for map logic	
				4'b1000 : 	MapX <= DataIn;			// Map location X-coordinate
				4'b1001 : 	MapY <= DataIn;			// Map location Y-coordinate
				4'b1010 : 	;						// MapVal is input only - do nothing
				4'b1011 : 	;						// //RESERVED//

				// I/O registers for system interface	
				4'b1100 : 	load_sys_regs <= ~load_sys_regs;		// toggles load system registers ctrl signal
				4'b1101 : 	load_dist_regs <= ~load_dist_regs;		// toggles load distance register ctrl signal
				4'b1110 : 	upd_sysregs <= ~upd_sysregs;			// toggles update system registers flag
				4'b1111 : 	;										// reserved
			endcase
		end
	end
end // always - write registers

	
// synchronized system register interface
always @(posedge clk or posedge reset) begin
	if (reset) begin
		LocX <= 0;
		LocY <= 0;
		Sensors <= 0;
		BotInfo <= 0;
	end
	else if (load_sys_regs) begin  // copy holding registers to system interface registers
			LocX <= LocX_int;
			LocY <= LocY_int;
			Sensors <= Sensors_int;
			BotInfo <= BotInfo_int;
	end
	else begin // refresh registers
			LocX <= LocX;
			LocY <= LocY;
			Sensors <= Sensors;
			BotInfo <= BotInfo;
	end		
end // always - synchronized system register interface

// synchronized motor distance counter interface
always @(posedge clk or posedge reset) begin
	if (reset) begin
		LMDist <= 0;
		RMDist <= 0;
	end
	else if (load_dist_regs) begin  // copy holding registers to system interface registers
			LMDist <= LMDist_int;
			RMDist <= RMDist_int;
	end
	else begin
			LMDist <= LMDist;
			RMDist <= RMDist;
	end		
end // always - synchronized motor distance counter interface
endmodule
		
				

