`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 17:54:06
// Design Name: 
// Module Name: bcd_dec
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
/*  Segment placements [6:0]
     __0__
    |     |
    5     1
    |     |
     --6--
    |     |
    4     2
    |__3__|
*/

module bcd_dec(input [3:0]bcd, output reg [6:0]segment);
always@(*)
begin
/*
if(bcd== 4'b0000)
    segment= 7'b1111110;    //0
else if(bcd== 4'b0001)
    segment= 7'b0110000;    //1
else if(bcd== 4'b0010)
    segment= 7'b1101101;    //2
else if(bcd== 4'b0011)
    segment= 7'b1111001;    //3
else if(bcd== 4'b0100)
    segment= 7'b0110011;    //4
else if(bcd== 4'b0101)
    segment= 7'b1011011;    //5
else if(bcd== 4'b0110)
    segment= 7'b1011111;    //6
else if(bcd== 4'b0111)
    segment= 7'b1110000;    //7
else if(bcd== 4'b1000)
    segment= 7'b1111111;    //8
else if(bcd== 4'b1001)
    segment= 7'b1111011;    //9
else
    segment= 7'b0000000;    //default
end
*/
case(bcd)
    4'b0000: segment= 7'b1111110;    //0
    4'b0001: segment= 7'b0110000;    //1
    4'b0010: segment= 7'b1101101;    //2
    4'b0011: segment= 7'b1111001;    //3
    4'b0100: segment= 7'b0110011;    //4
    4'b0101: segment= 7'b1011011;    //5
    4'b0110: segment= 7'b1011111;    //6
    4'b0111: segment= 7'b1110000;    //7
    4'b1000: segment= 7'b1111111;    //8
    4'b1001: segment= 7'b1111011;    //9
    default: segment= 7'b0000000;    //default
endcase
end
endmodule
