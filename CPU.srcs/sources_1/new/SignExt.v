`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 20:11:06
// Design Name: 
// Module Name: SignExt
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


module SignExt(Imm16, Imm30);
	input wire [15:0] Imm16;
	output wire [31:2] Imm30;
	assign Imm30 = {{14{Imm16[15]}},Imm16};
endmodule

