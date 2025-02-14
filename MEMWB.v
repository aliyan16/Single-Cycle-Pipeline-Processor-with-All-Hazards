`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:54 05/28/2024 
// Design Name: 
// Module Name:    MEMWB 
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
module MEMWB(
    input clk,
    input [31:0] readvalue,
    output reg [31:0] readvalueStored,
    input [31:0] aluvalue,
    output reg [31:0] aluvalueStored,
    input [4:0] rsrd,
    output reg [4:0] rsrdStored,
    input memtoreg,
    output reg memtoregStored,
    input regwrite,
    output reg regwriteStored
);
    always @(posedge clk)
    begin 
        readvalueStored <= readvalue;
        aluvalueStored <= aluvalue;
        rsrdStored <= rsrd;
        memtoregStored <= memtoreg;
        regwriteStored <= regwrite;
    end
endmodule

