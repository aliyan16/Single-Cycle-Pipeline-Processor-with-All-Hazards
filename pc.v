`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:41 03/05/2024 
// Design Name: 
// Module Name:    pc 
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
module pc #(parameter N=32)(
    input clk,
    input rst,
    output reg [N-1:0] pcOut,
    input hazard,
    input [N-1:0] pcIn,
    input [31:0] pcprev
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pcOut <= {N{1'b0}};  // Reset pcOut to 0
        end else begin
            if (hazard) begin
                pcOut <= pcprev;  // Retain previous PC value during hazard
            end else begin
                if (pcIn == 31) begin
                    pcOut <= 0;  // Reset to 0 when pcIn reaches 31
                end else begin
                    pcOut <= pcIn + 1;  // Increment PC
                end
            end
        end
    end
endmodule


