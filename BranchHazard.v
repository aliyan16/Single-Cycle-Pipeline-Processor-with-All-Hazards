`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:59:05 06/01/2024 
// Design Name: 
// Module Name:    BranchHazard 
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
module BranchHazard(
		input branch,
		output reg branchDet
    );
	 always@(*)
	 begin
	 if(branch)
	 branchDet<=1'b1;
	 else 
	 branchDet<=1'b0;
	 end


endmodule
