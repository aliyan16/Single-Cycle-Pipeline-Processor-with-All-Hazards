`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:22 05/29/2024 
// Design Name: 
// Module Name:    branchAdder 
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
module branchAdder(
		input [31:0] pc,
		input [31:0] signEx,
		output reg [31:0] branchAdderOut
    );
	 reg [31:0] branch;
	 reg [4:0] brancH;
	 always @(*)
	 begin
	 branch<=signEx <<2;
	 brancH<=branch[4:0];
	 branchAdderOut=pc + brancH;
	 end

endmodule
