`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 01:00:18 PM
// Design Name: 
// Module Name: show2c_test
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


module show2c_test();
    reg [7:0] Din;
    wire [15:0] data;
    wire sign;
    
    show2c dut(
    .Din(Din),
    .data(data),
    .sign(sign));
    
    initial begin
    Din=8'b10101010; #10;
    Din=8'b00001111; #10;
    Din=8'b11110000; #10;
    Din=8'b01010101; #10;
    $finish;
    end

endmodule
