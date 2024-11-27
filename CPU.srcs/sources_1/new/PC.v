`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/16 11:34:37
// Design Name: 
// Module Name: PC
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


module PC( clk, rst, NPC, PC );

   input         clk;
   input         rst;
   input  [31:2] NPC;
   output [31:2] PC;

   reg [31:2] PC;
   reg [1:0] tmp;

   always @(negedge clk or posedge rst) begin
      if ( rst ) 
         {PC, tmp} <= 32'h0000_3000;   
      else 
         PC <= NPC;
   end // end always

endmodule


