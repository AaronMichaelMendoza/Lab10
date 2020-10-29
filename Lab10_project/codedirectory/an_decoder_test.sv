`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:10:32 PM
// Design Name: 
// Module Name: an_decoder_test
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


module an_decoder_test();
reg [1:0] in;
wire [3:0] out;
an_decoder dut(
.in(in),
.out(out));
initial begin
in=2'b00;#10;
in=2'b01;#10;
in=2'b10;#10;
in=2'b11;#10;
$finish;
end
endmodule
