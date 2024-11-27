`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 19:16:12
// Design Name: 
// Module Name: ALU
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


module ALU(A,B,ALUctrl,shamt,Result,Result_high,OF,ZF,SF,done);
    input [31:0] A;//�����������A
    input [31:0] B;//�����������B
    input [5:0] ALUctrl;//��ͬ�����ѡ���ź�
    input [4:0]shamt;//��λ�������λλ��
    output reg [31:0] Result;//����Ľ��
    output reg [31:0] Result_high;//����Ľ���ĸ�λ����������ڳ˷�����
    output reg OF;//�����־λ
    output reg ZF;//���־λ
    output reg SF;//���ű�־λ
    output reg done;//�˷������������ź�
    wire C;//��λ��־λ
    reg flag;
    reg [31:0]a_t;
    reg [31:0]b_t;
    wire [31:0]result_t;
    wire of_t;
    FixedComplementAdder32 u0(a_t,b_t,flag,result_t,of_t,C);
    always @(*)begin
       a_t <= A;
       b_t <= B;
       case (ALUctrl)
            6'b100000:begin//�����żӷ�
                Result <= result_t;
                flag <= 0;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= of_t;
                Result_high <= 32'd0;
            end
            6'b100010:begin//�����ż���
                Result <= result_t;
                flag <= 1;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= of_t;
                Result_high <= 32'd0;
            end
            6'b011000:begin//�����ų˷� 
                {Result_high,Result} <= $signed(A)*$signed(B);
                ZF <= Result==0 && Result_high==0?1:0;
                SF <= Result_high[31];
                OF <= 0;
                done <= 1;
            end
            6'b011010:begin//�����ų���
                Result <= $signed(A)/$signed(B);
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                done <= 1;
                Result_high <= 32'd0;
            end
            6'b100100:begin//��λ��
                Result <= A&B;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b100101:begin//��λ��
                Result <= A|B;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b100111:begin//��λ���
                Result <= ~(A|B);
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b100110:begin//��λ���
                Result <= A^B;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b000000:begin//�߼�����
                Result <= B << shamt;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b000011:begin//��������
                Result <= $signed(B) >>> shamt;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b100001:begin//�޷��żӷ�
                Result <= result_t;
                flag <= 0;
                ZF <= 0;
                SF <= Result[31];
                OF <= of_t;
                Result_high <= 32'd0;
            end
            6'b100011:begin//�޷��ż���
                Result <= result_t;
                flag <= 1;
                ZF <= 0;
                SF <= Result[31];
                OF <= of_t;
                Result_high <= 32'd0;
            end
            6'b000100:begin//�߼�����sllv
                Result <= B << A[4:0];
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b000110:begin//�߼�����srlv
                Result <= B >> A[4:0];
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b000111:begin//��������srav
                Result <= $signed(B) >>>  A[4:0];
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
            6'b000010:begin//�߼�����srl
                Result <= B >> shamt;
                ZF <= Result==0?1:0;
                SF <= Result[31];
                OF <= 0;
                Result_high <= 32'd0;
            end
         endcase
    end
endmodule
