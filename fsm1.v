`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 15:33:12
// Design Name: 
// Module Name: fsm1
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


module fsm1(
input inp,clk,rst,
output out
);
reg y;
reg[2:0] state,nxtstate;
assign out=y;
parameter S0=3'b111;
parameter S1=3'b110;
parameter S2=3'b100;
parameter S3=3'b000;
always@(posedge(clk),inp,rst)begin
if(rst)state<=S0;
else state<=nxtstate;
end
always@(state)begin
case(state)
S0:begin
if(inp)begin
nxtstate=S0;y=0;end
else begin
nxtstate=S1;y=0;end
end
S1:begin
if(inp)begin
nxtstate=S1;y=0;end
else begin
nxtstate=S2;y=1;end
end
S2:begin
if(inp)begin
nxtstate=S2;y=1;end
else begin
nxtstate=S3;y=1;end
end
S3:begin
if(inp)begin
nxtstate=S0;y=0;end
else begin
nxtstate=S1;y=0;end
end
default:nxtstate=S0;
endcase
end
endmodule

module fsm1_tb();
reg inp,clk,rst;
wire y;
fsm1 dut(inp,clk,rst,y);
initial begin
clk=0;
forever begin
clk=~clk;#5;
end
end
initial begin
rst=1;inp=0;#10;
rst=0;inp=0;#10;
inp=1;#10;
inp=1;#10;
inp=0;#10;
inp=1;#10;
inp=0;#10;
inp=0;#10;
inp=1;#10;
$finish;
end
endmodule

