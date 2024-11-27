`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/16 11:59:30
// Design Name: 
// Module Name: NPC
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


module NPC(PC,Imm26,Branch,Zero,Jump,NPC);
	input wire [31:2] PC;
	input wire [25:0] Imm26;
	input wire Branch;
	input wire Zero;
	input wire Jump;
	output wire [31:2] NPC;

	wire [15:0] Imm16;
	wire [31:2] Imm30;
	assign Imm16 = Imm26[15:0];
	SignExt U_SignExt(Imm16,Imm30);

	wire Andout;
	and U_and(Andout,Branch,Zero);

	wire [31:2] Mux2_1out;
	mux_2 Mux2_1(30'd0, Imm30, Andout, Mux2_1out);

	wire [31:2] U_Adder32out;
	Adder30 U_Adder32 (PC, Mux2_1out, 1'b1, U_Adder32out);
	
	mux_2 Mux2_2(U_Adder32out,{PC[31:28],Imm26},Jump,NPC);	
endmodule

