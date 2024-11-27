`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 19:17:41
// Design Name: 
// Module Name: mux2
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


module mux2(A,B,SEL,OUT);
    input  [31:0] A,B;
    input  SEL;
    output [31:0] OUT;
    assign OUT = SEL?B:A;//«Î≤π≥‰ÕÍ’˚
endmodule
