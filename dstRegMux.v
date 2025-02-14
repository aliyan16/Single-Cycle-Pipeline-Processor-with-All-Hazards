`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:45:34 05/29/2024 
// Design Name: 
// Module Name:    dstRegMux 
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
module dstRegMux(
    input wire regdst,
    input wire [4:0] rt,
    input wire [4:0] rd,
    output wire [4:0] regmuxOut
);
    assign regmuxOut = regdst ? rd : rt;
endmodule

