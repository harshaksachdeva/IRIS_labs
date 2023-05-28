`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2023 14:23:06
// Design Name: 
// Module Name: swap
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


module swap();
reg clk;
reg[7:0]A,B;
initial begin
$monitor($time,"values of A=%0d,B=%0d",A,B);
A=8'd5;
B=8'd6;
always@(posedge clk)
#1
begin
A<=B;
B<=A;
end
end
$finish;
endmodule