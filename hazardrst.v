`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:22 06/01/2024 
// Design Name: 
// Module Name:    hazardrst 
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
module hazardrst(
		input clk,
		input hazard,
		output reg hazarD
    );
	 always @(posedge clk)
	 begin
	 if(hazard)
	 hazarD<=1'b1;
	 else
	 hazarD<=1'b0;
	 end

endmodule
