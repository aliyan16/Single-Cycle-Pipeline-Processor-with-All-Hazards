`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:25 03/17/2024 
// Design Name: 
// Module Name:    AluSrc 
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
module AluSrc(
		input [31:0] Rt,
		input [31:0] signExtend,
		input alusrc,
		output reg [31:0] result
    );
	 always@(alusrc or Rt or signExtend)
	 begin
	 if(alusrc)
	 result<=signExtend;
	 else
	 result<=Rt;
	 end


endmodule
