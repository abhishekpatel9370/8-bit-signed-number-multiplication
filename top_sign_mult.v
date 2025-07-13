`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2025 02:26:59 PM
// Design Name: 
// Module Name: top_sign_mult
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


module top_sign_mult(a,b,z1,z2);
input [7:0] a,b ;
output [15:0] z1,z2 ;

mul_sign_2 utt1( .a(a),.b(b),.z(z1));
sign_multiplier utt2(.a(a),.b(b),.z(z2));
endmodule
