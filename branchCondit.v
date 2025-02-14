`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:11 05/29/2024 
// Design Name: 
// Module Name:    branchCondit 
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
module branchCondit(
    input wire branch,
    input wire zero,
    output reg pcSRC
);
	always @(*)
	begin
    pcSRC <= (branch && zero) ? 1 : 0;
	 end
endmodule

