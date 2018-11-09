`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/08 22:12:14
// Design Name: 
// Module Name: lab6_1_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab6_1_1(
    input Clk,
    input [3:0] D,
    input reset,
    input load,
    output reg [3:0] Q
    );
    always @(posedge Clk)
        if (reset)
        begin
            Q <= 4'b0;
        end else if (load)
        begin
            Q <= D;
        end
endmodule
