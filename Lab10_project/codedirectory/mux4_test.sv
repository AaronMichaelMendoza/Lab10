`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 11:49:18 AM
// Design Name: 
// Module Name: mux4_test
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


module mux4_test();
localparam BITS = 4;

    reg [BITS-1:0] in0;
    reg [BITS-1:0] in1;
    reg [BITS-1:0] in2;
    reg [BITS-1:0] in3;
    reg [1:0] sel;
    wire [BITS-1:0] out;
    
    mux4 dut(
    .in0(in0),
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .sel(sel),
    .out(out));
    
    initial begin
    in0=4'b0000;in1=4'b0001;in2=4'b0010;in3=4'b0011;sel=2'b00;#10;
    in0=4'b0000;in1=4'b0001;in2=4'b0010;in3=4'b0011;sel=2'b01;#10; 
    in0=4'b0000;in1=4'b0001;in2=4'b0010;in3=4'b0011;sel=2'b10;#10; 
    in0=4'b0000;in1=4'b0001;in2=4'b0010;in3=4'b0011;sel=2'b11;#10;  
    in0=4'b0110;in1=4'b1111;in2=4'b1010;in3=4'b0101;sel=2'b00;#10;
    in0=4'b0110;in1=4'b1111;in2=4'b1010;in3=4'b0101;sel=2'b01;#10;
    in0=4'b0110;in1=4'b1111;in2=4'b1010;in3=4'b0101;sel=2'b10;#10;
    in0=4'b0110;in1=4'b1111;in2=4'b1010;in3=4'b0101;sel=2'b11;#10; 
    $finish;
    end
    
endmodule
