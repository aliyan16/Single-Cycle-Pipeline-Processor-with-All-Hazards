`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:40 05/31/2024 
// Design Name: 
// Module Name:    HazardDetection 
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
module HazardDetection(
    input exMemRead,
    input [4:0] curRs,
    input [4:0] curRt,
    input [4:0] exRd,
    output reg hazard
);
	always @(*)
	begin
	hazard<=1'b0;
	hazard <=(exMemRead && ((curRs == exRd) || (curRt == exRd))) ? 1'b1: 1'b0;
	end

endmodule
