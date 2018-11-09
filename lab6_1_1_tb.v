`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/08 22:16:08
// Design Name: 
// Module Name: lab6_1_1_tb
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


module lab6_1_1_tb;
    reg Clk;
    reg load; 
    reg reset;
    reg [3:0] D;
    wire [3:0] Q;
    
    lab6_1_1 DUT ( .Clk(Clk), .D(D), .reset(reset), .load(load), .Q(Q));
    
    initial
        #300 $finish;
    
    initial
    begin
        Clk=1'b0;
        while(1) #10 Clk=~Clk;
    end
    
    initial
    begin
        load=1'b0;
        #60 load=1'b1;
        #20 load=1'b0;
        #40 load=1'b1;
        #20 load=1'b0;
        #55 load=1'b1;
        #20 load=1'b0;
        #65 load=1'b1;
    end
    
    initial
    begin
        reset=1'b0;
        #155 reset=1'b1;
        #85 reset=1'b0;
    end
    
    initial
    begin
        D=4'b0000;
        #20 D=4'b0101;
        #60 D=4'b1001;
    end
endmodule
