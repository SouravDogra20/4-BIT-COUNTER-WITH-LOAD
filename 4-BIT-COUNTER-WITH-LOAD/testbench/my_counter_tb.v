`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 11:37:08
// Design Name: 
// Module Name: my_counter_tb
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


module my_counter_tb;
reg [3:0] d;
reg clk;
reg rst;
reg l;
wire [3:0] q;
my_counter dut(
    .d(d),
    .clk(clk),
    .rst(rst),
    .l(l),
    .q(q)
);
always #5 clk = ~clk;
initial begin
clk=0;
rst = 1;
l = 0;
d = 4'b0000;
    #10 rst = 0;
    #40;
    l = 1;
    d = 4'b1010;
    #10;
    l = 0;
    #40;
rst = 1;
    #10;
    rst = 0;

#30 $finish;
end
endmodule