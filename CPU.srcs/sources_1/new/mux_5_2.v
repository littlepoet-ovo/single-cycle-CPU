`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/21 23:44:05
// Design Name: 
// Module Name: mux_5_2
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


module mux_5_2(Rd,Rt,sel,Rw);
    input[4:0] Rd;
    input[4:0] Rt;
    input sel;
    output[4:0] Rw;
    assign Rw = sel==1?Rd:Rt;
endmodule
