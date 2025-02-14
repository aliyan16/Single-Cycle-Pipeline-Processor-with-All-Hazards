`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:41 05/31/2024 
// Design Name: 
// Module Name:    ForwardMux2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ForwardMux2(
		input [1:0] forwardB,
		input [31:0] curRTdt,
		input [31:0] EXRTdt,
		input [31:0] MEMRTdt,
		output [31:0] aluSRCB
    );
	  assign aluSRCB=(forwardB==2'b01)?EXRTdt: (forwardB==2'b10)?MEMRTdt:curRTdt;

endmodule
