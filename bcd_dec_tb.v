`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2026 17:52:19
// Design Name: 
// Module Name: bcd_dec_tb
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


module bcd_dec_tb();
reg [3:0]bcd;
wire [6:0]seg;
bcd_dec uut(bcd, seg);
initial
begin
$monitor("At Time: %0t\n BCD: %b, Seg: %b", $time, bcd, seg);
#5 bcd=2'b0000;
#5 bcd=2'b0001;
#5 bcd=2'b0010;
#5 bcd=2'b0011;
#5 bcd=2'b0100;
#5 bcd=2'b0101;
#5 bcd=2'b0110;
#5 bcd=2'b0111;
#5 bcd=2'b1000;
#5 bcd=2'b1001;
#5 $finish;
end
endmodule
