`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 20:15:18
// Design Name: 
// Module Name: IFU
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


module IFU(clk,rst,Imm26,Branch,Zero,Jump,JrDst,busA,Instruction,IPC);
	input wire clk;
	input wire rst;
	input wire [25:0] Imm26;
	input wire Branch;
	input wire Zero;
	input wire Jump;
	input wire JrDst;
	input wire [31:0] busA;
	output wire [31:0] Instruction;
	output wire [31:0]IPC;
	wire [31:2] NPC,NPC_T;
	wire [31:2] PC;
	assign IPC={PC,{2{1'b0}}};
	PC U_PC(clk,rst,NPC,PC);
	assign NPC = JrDst==1?busA[31:2]:NPC_T;
	NPC U_NPC(PC, Imm26,Branch,Zero,Jump,NPC_T);
	im_4k U_IM(rst, PC, Instruction);	
endmodule

