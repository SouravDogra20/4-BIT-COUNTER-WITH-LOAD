`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 11:01:29
// Design Name: 
// Module Name: my_counter
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


module my_counter(d,clk,rst,l,q);
input [3:0]d;
input clk,rst,l;
output wire [3:0]q;
reg[31:0]dummy_count;
always @(posedge clk)begin
if(rst)
dummy_count<=32'b0;
else if (l)
dummy_count<=d;
else
dummy_count<= dummy_count+1'b1;
end
assign  q=dummy_count[31:28];

endmodule
