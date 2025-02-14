`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:02 05/28/2024 
// Design Name: 
// Module Name:    mux1 
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
module mux1(
    input wire branch,
    input wire [31:0] pcvalue,
    input wire [31:0] branchvalue,
    output wire [31:0] muxOut
);
    assign muxOut = branch ? branchvalue : pcvalue;
endmodule

