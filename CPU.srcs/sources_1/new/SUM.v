`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module SUM (Pi, Ci, Si);//��Ͳ���
	input wire Pi;
	input wire Ci;
	output wire Si;
	assign Si = Pi ^ Ci;//�벹������
endmodule
