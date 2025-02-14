`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:08 05/29/2024 
// Design Name: 
// Module Name:    memTOregMux 
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
module memTOregMux(
    input wire memtoreg,
    input wire [31:0] readval,
    input wire [31:0] aluval,
    output wire [31:0] MemRegOut
);
    assign MemRegOut = memtoreg ? readval : aluval;
endmodule


