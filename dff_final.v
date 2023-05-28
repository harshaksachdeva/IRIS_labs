`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 21:13:58
// Design Name: 
// Module Name: dff_final
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


module dff_final(clk,d,rst,q);
input d,clk,rst;
output reg q;
always @(negedge clk or negedge rst)
begin 
if (rst == 1'b0)
q <= 1'b0;
else
q <= d;
end
endmodule

module testbench();
reg d,clk,rst;
wire q;

d_ff dut(clk,d,rst,q);

initial begin 
clk = 0;
forever #5 clk = ~clk;
end 

initial begin
 rst=0;
 d <= 1;
 #10;
 rst=1;
 #10;
 d <= 0;
 #10;
 d <= 1;
end 
endmodule
