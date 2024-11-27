`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 19:20:35
// Design Name: 
// Module Name: ParallelAdder4
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


module ParallelAdder4 (A, B, Cin, S, Cout);//��λȫ���н�λ�ӷ���
	input wire [3:0] A;
	input wire [3:0] B;
	input wire Cin;
	output wire Cout;
	output wire [3:0] S;
	wire [3:0] G;
	wire [3:0] P;
	wire [4:1] C;
    
	GU GU0(A[0], B[0], G[0]); //�벹������
	GU GU1(A[1], B[1], G[1]); //�벹������
	GU GU2(A[2], B[2], G[2]); //�벹������
	GU GU3(A[3], B[3], G[3]); //�벹������
    
	PU PU0(A[0], B[0], P[0]); //�벹������
	PU PU1(A[1], B[1], P[1]); //�벹������
	PU PU2(A[2], B[2], P[2]); //�벹������
	PU PU3(A[3], B[3], P[3]); //�벹������
    
	CarryLookAhead_4 CLA(P,G,Cin,C); //�벹������
    
	SUM SUM0(P[0], Cin, S[0]); //�벹������
	SUM SUM1(P[1], C[1], S[1]); //�벹������
	SUM SUM2(P[2], C[2], S[2]); //�벹������
	SUM SUM3(P[3], C[3], S[3]); //�벹������
	
	assign Cout = C[4];//�벹������
endmodule
