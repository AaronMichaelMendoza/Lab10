`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:49:24 AM
// Design Name: 
// Module Name: counter_test
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


module counter_test();
    reg clk, rst;
    wire [1:0] msbs;
    counter #(.N(4)) dut(
    .clk(clk),
    .rst(rst),
    .msbs(msbs));
    always begin
        clk = ~clk; #5;
    end
    initial begin
        clk=0; rst=0; #5;
        rst = 1; #5;
        rst = 0; #5;
    end
endmodule
