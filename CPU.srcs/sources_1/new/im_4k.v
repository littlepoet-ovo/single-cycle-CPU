`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 20:10:07
// Design Name: 
// Module Name: im_4k
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


module im_4k(rst,  addr, dout );
input wire rst;
    input [31:2] addr;
    output [31:0] dout;

    reg [31:0] imem[4096:3072];

    always @(posedge rst)
    if(rst)
    begin
        imem[3073]=32'h20020004;
        imem[3074]=32'h00013902;
        imem[3075]=32'h00414004;
        imem[3076]=32'h00414806;
        imem[3077]=32'h00415007;
        imem[3072]=32'h00000026;//xor $0, $0, $0
        imem[3073]=32'h20020005;//addi $2, $0, 5
        imem[3074]=32'h2003fffa;//addi $3, $0, -6
        imem[3075]=32'h00432020;//add $4, $2, $3 
        imem[3076]=32'h00622822;//sub $5, $3, $2
        imem[3077]=32'hac020000;//sw $2, 0($0)
        imem[3078]=32'hac030004;//sw $3, 4($0)
        imem[3079]=32'hac040008;//sw $4, 8($0)
        imem[3080]=32'hac050010;//sw $5, 16($0)
        imem[3081]=32'h341d000c;//ori $29, $0, 12
        imem[3082]=32'h38410013;//xori $1, $2, 19
        imem[3083]=32'h00230824;//and $1, $1, $3
        imem[3084]=32'h00240825;//or $1, $1, $4
        imem[3085]=32'hac01000c;//sw $1, 12($0)
        imem[3086]=32'h8c050000;//lw $5, 0($0)
        imem[3087]=32'h10450001;//beq $2, $5, _lb2
        //_lb1:
        imem[3088]=32'h8c030004;//lw $3, 4($0)
        //_lb2:
        imem[3089]=32'h8c050004;//lw $5, 4($0)
        imem[3090]=32'h1465fffd;//bne $3, $5, _lb1
        imem[3091]=32'h08000c15;//j F_Test_J
        imem[3092]=32'hac02000c;//sw $2, 12($0)
        //F_Test_J:
        imem[3093]=32'h00a23022;//sub $6, $5, $2
        imem[3094]=32'hafa6fffc;//sw $6, -4($29)
        imem[3095]=32'h08000c19;//j _loop
        imem[3096]=32'hac02000c;//sw $2, 12($0)
        //_loop:
        imem[3097]=32'h00403827;//nor $7,$2,$0
        imem[3098]=32'h00064100;//sll $8,$6,4
        imem[3099]=32'h00084903;//sra $9,$8,4
        imem[3100]=32'h240a0004;//addiu $10,$0,4
        imem[3101]=32'h240b0008;//addiu $11,$0,8
        imem[3102]=32'h014b6021;//addu $12,$10,$11
        imem[3103]=32'h016a6823;//subu $13,$11,$10
        imem[3104]=32'h0022702a;//slt $14,$1,$2
        imem[3105]=32'h014b782b;//sltu $15,$10,$11
        imem[3106]=32'h00098102;//srl	$16,$9,4
        imem[3107]=32'h01498804;//sllv $17,$9,$10
        imem[3108]=32'h01499006;//srlv $18,$9,$10
        imem[3109]=32'h01499807;//srav $19,$9,$10
        imem[3110]=32'h0c000c2b;//jal F_Test_JAL
        imem[3111]=32'h2855fffb;//slti $21,$2,-5
        imem[3112]=32'h2c560fff;//sltiu $22,$2,4095
        imem[3113]=32'h30570005;//andi $23,$2,5
        //_tt
        imem[3114]=32'h1464ffff;//bne $3, $4, _tt
        //F_Test_JAL:
        imem[3115]=32'h3c140064;//lui $20,100
        imem[3116]=32'h03e00008;//jr $31

        

    end

    assign dout = imem[addr];

endmodule

