`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2025 02:32:16 PM
// Design Name: 
// Module Name: tb_for_sign_mult
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


module tb_for_sign_mult;
wire [15:0] z1,z2 ;
reg [7:0] a,b;

top_sign_mult utt1(.a(a),.b(b),.z1(z1),.z2(z2));
initial begin 
#5 a=10 ;b=2 ;
#5 a=-10 ;b=2 ;
#5 a=12 ;b=21 ;
#5 a=-5 ;b=12 ;
#5 a=10 ;b=4 ;
#5 a=-3 ;b=-2 ;
#5 a=-12 ;b=-21 ;
#5 a=-5 ;b=-5 ;
#5 $finish ;

end  
initial begin 
$monitor("A=%d ,B=%d ,z2=%d",a,b,z2);
end


endmodule
