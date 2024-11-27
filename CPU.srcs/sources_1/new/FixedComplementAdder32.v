`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 19:17:10
// Design Name: 
// Module Name: FixedComplementAdder32
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


module FixedComplementAdder32(A,B,OP,Result,Overflow,CarryOut);
	input wire [31:0] A;//������
	input wire [31:0] B;//����
	input wire OP;//�������� 0��+��1��-
	output wire [31:0] Result;//��
	output wire Overflow;//�����־ 0������ 1�����
	output wire CarryOut;//��λ��־ 0���޽�λ��1���н�λ
	wire [31:0] B_temp;
	wire [31:0] B_minus;
    PartialCarryLookAheadAdder_32 u0(A,B_temp,OP,Result,CarryOut);
    mux2 u1(B,B_minus,OP,B_temp);
    Minus u2(B,B_minus);
    assign Overflow = CarryOut^A[31]^B_temp[31]^Result[31];
endmodule
