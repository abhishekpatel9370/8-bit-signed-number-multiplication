`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2025 01:59:06 PM
// Design Name: 
// Module Name: sign_multiplier
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


module sign_multiplier(
input [7:0] a ,b ,
output [15:0] z

    );
    wire [7:0] ab0 = a&{8{b[0]}} ;
    wire [7:0] ab1 = a&{8{b[1]}} ;
    wire [7:0] ab2 = a&{8{b[2]}} ;
    wire [7:0] ab3 = a&{8{b[3]}} ;
    wire [7:0] ab4 = a&{8{b[4]}} ;
    wire [7:0] ab5 = a&{8{b[5]}} ;
    wire [7:0] ab6 = a&{8{b[6]}} ;
    wire [7:0] ab7 = a&{8{b[7]}} ;
    
    assign z = (({8'b1 ,~ab0[7],ab0[6:0] } + 
               {7'b0 ,~ab1[7] ,ab1[6:0] ,1'b0 })+
              ( {6'b0 ,~ab2[7],ab2[6:0] ,2'b0} + 
               {5'b0 ,~ab3[7] ,ab3[6:0] ,3'b0 }))+
             (( {4'b0 ,~ab4[7],ab4[6:0],4'b0 } + 
               {3'b0 ,~ab5[7] ,ab5[6:0] ,5'b0 })+
              ( {2'b0 ,~ab6[7],ab6[6:0],6'b0 } + 
               {1'b1 ,ab1[7] ,~ab7[6:0] ,7'b0 }));
             
          
endmodule

module mul_sign_2 ( 
input [7:0] a,b ,
output [15:0] z
);
reg [7:0] ab [7:0] ; 
integer i , j ;

always@*
begin 
for(i=0 ;i<7 ; i=i+1)
for(j=0 ;j<7;j=j+1)
ab[i][j] = a[i]&b[j] ;
for(i=0;i<7;i=i+1)
for(j=0;j<7;j=j+1)
ab[7][j] =~(a[7]&b[j]);
for (i=0;i<7;i=i+1)
for(j=0;j<7;j=j+1)
ab[i][7] =~(a[i]&b[j]);

ab[7][7] =a[7]&b[7] ;
end

assign z=(({8'b1,ab[0][7:0]} +{7'b0 ,ab[1][7:0],1'b0 }) +
          ( {6'b0,ab[2][7:0],3'b0} +{5'b0 ,ab[3][7:0],4'b0 }))+
         ((  {4'b1,ab[4][7:0],5'b0} +{3'b0 ,ab[5][7:0],6'b0 })+
        ( {2'b0,ab[1][7:0],6'b0} +{1'b1 ,ab[7][7:0],7'b0 }));
        
        endmodule

