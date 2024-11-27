`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 20:10:41
// Design Name: 
// Module Name: Adder30
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


module Adder30(a, b, cin, c);
	input wire [31:2] a;
	input wire [31:2] b;
	input wire cin;
	output wire [31:2] c;
	assign c = a + b +cin;
endmodule

