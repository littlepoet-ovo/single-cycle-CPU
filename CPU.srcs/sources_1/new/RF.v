`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 20:16:25
// Design Name: 
// Module Name: RF
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


`define DEBUG 1
module RF( clk, Ra, Rb, Rw, busW, RegWr, busA,busB);
   input wire clk;
   input  wire [4:0]  Ra, Rb, Rw;
   input  wire [31:0]  busW;
   input  wire RegWr;
   output wire [31:0] busA,busB;
    reg [31:0] rf[31:0];
/*初始化寄存器的值，当综合时将该部分代码删除*/
integer i;
   initial begin
       for (i=0; i<32; i=i+1)
          rf[i] = 0;
   end

   always @(negedge clk) 
   begin//写逻辑
      if (RegWr)
         rf[Rw] <= busW;
            `ifdef DEBUG
         $display("R[00-07]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", 0, rf[1], rf[2], rf[3], rf[4], rf[5], rf[6], rf[7]);
         $display("R[08-15]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", rf[8], rf[9], rf[10], rf[11], rf[12], rf[13], rf[14], rf[15]);
         $display("R[16-23]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", rf[16], rf[17], rf[18], rf[19], rf[20], rf[21], rf[22], rf[23]);
         $display("R[24-31]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", rf[24], rf[25], rf[26], rf[27], rf[28], rf[29], rf[30], rf[31]);
      `endif//此部分代码用于仿真时显示各个寄存器的值

   end // end always
/*以下部分为读逻辑*/
   assign busA = (Ra == 0) ? 32'd0 : rf[Ra];
   assign busB = (Rb == 0) ? 32'd0 : rf[Rb];

endmodule 

