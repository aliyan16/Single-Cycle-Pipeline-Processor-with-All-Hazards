`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:15 05/31/2024 
// Design Name: 
// Module Name:    ForwardMux1 
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
module ForwardMux1(
		input [1:0] forwardA,
		input [31:0] curRSdt,
		input [31:0] EXRSdt,
		input [31:0] MEMRSdt,
		output [31:0] aluSRCA
    );
	 assign aluSRCA=(forwardA==2'b01)?EXRSdt: (forwardA==2'b10)?MEMRSdt:curRSdt;


endmodule
