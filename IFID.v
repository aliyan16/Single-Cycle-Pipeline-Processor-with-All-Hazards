`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:16 05/28/2024 
// Design Name: 
// Module Name:    IFID 
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
module IFID(
		input clk,
		input [31:0] pcvalue,
		output reg [31:0] pcStored,
		input [31:0] instructionvalue,
		output reg [31:0] instructionStored
    );
	 always @(posedge clk)
	 begin 
	 pcStored<=pcvalue;
	 instructionStored<=instructionvalue;
	 end


endmodule
