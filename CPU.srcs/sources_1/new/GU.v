`timescale 1ns / 1ps
module GU (Xi, Yi, Gi);//��λ���ɲ���
	input wire Xi;
	input wire Yi;
	output wire Gi;
	assign Gi = Xi&Yi;//�벹������
endmodule