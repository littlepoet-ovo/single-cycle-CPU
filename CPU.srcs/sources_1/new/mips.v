`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 19:40:19
// Design Name: 
// Module Name: mips
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


module mips(clk, rst, PC, IR);
    input clk;
    input rst;
    output [31:0] PC;
    output [31:0] IR;
    wire Branch,Zero,Jump,T_Zero,RaDst;
    wire [25:0]Imm26;
    wire [31:26]op;
    wire [25:21]Rs;
    wire [20:16]Rt;
    wire [15:11]Rd; 
    wire [15:0]Imm16; 
    wire [4:0] Imm5; 
    wire [5:0]func;
    wire RegDst,ALUsrc,MemtoReg,RegWrite,MemWrite;
    wire [1:0] Extop;
    wire [2:0]ALUop;
    wire [5:0]ALUctr;
    wire [4:0]Rw;
    wire [4:0]Rw_t;
    wire[31:0]busW,busA,busB,busW_T,busW_TT;
    wire[31:0]extImm32;
    wire[31:0] alusrc_out;
    wire[31:0] alu_out;
    wire[31:0] alu_ans;
    wire[31:0] alu_out_high;
    wire OF,SF,done;
    wire[31:0]dm_out;
    wire rezero;
    wire JrDst;
    wire SfDst;
    wire ExDst;
    assign op=IR[31:26];
    assign Rs=IR[25:21];
    assign Rt=IR[20:16];
    assign Rd=IR[15:11];
    assign Imm16=IR[15:0];
    assign Imm5=IR[10:6];
    assign func=IR[5:0];
    assign T_Zero = rezero==1?~Zero:Zero;
    IFU ifu(clk,rst,Imm26,Branch,T_Zero,Jump,JrDst,busA,IR,PC);
    assign Imm26 = IR[25:0];
    MainControl maincontrol(op,func,ALUop,RegDst,ALUsrc,MemtoReg,MemWrite,RegWrite,Branch,Jump,Extop,rezero,RaDst,JrDst,SfDst,ExDst);
    ALUControl alucontrol(ALUop,func,ALUctr);
    mux_5_2 u_mux_5_2(Rd,Rt,RegDst,Rw_t);
    mux_5_2 u_mux_5_2_2(5'b11111,Rw_t,RaDst,Rw);
    RF regfile(clk, Rs, Rt, Rw, busW, RegWrite, busA, busB);
    EXT ext(Imm16,Extop,extImm32);
    assign alusrc_out = ALUsrc==1?extImm32:busB;
    ALU alu(busA,alusrc_out,ALUctr,Imm5,alu_ans,alu_out_high,OF,Zero,SF,done);
    dm_4k dm( alu_out[11:2], busB, MemWrite, clk, dm_out );
    assign alu_out = SfDst?alu_ans:SF;
    assign busW_T = MemtoReg==1?dm_out:alu_out;
    assign busW_TT = ExDst==1?extImm32:busW_T;
    assign busW = RaDst==1?(PC+4):busW_TT;
endmodule
