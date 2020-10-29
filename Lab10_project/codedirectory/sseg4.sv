`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:19:27 PM
// Design Name: 
// Module Name: sseg4
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


module sseg4(
    input [15:0] data,
    input hex_dec,
    input sign,
    input [1:0] digit_sel,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    wire[15:0] bcd11_mux2; 
    wire[15:0] mux2_mux4;
    wire[3:0] mux4_decoder;
    wire[6:0] decoder_mux2;
    wire sel_mux2;
    
    
    eleven_bit_BCD bcd11(
    .B(data[10:0]),
    .out(bcd11_mux2));
    
    mux2 #(.BITS(16)) mux2_1(
    .in0(bcd11_mux2),
    .in1(data),
    .sel(hex_dec),
    .out(mux2_mux4));
    
    mux4 #(.BITS(4)) mymux4(
    .in0(mux2_mux4[3:0]),
    .in1(mux2_mux4[7:4]),
    .in2(mux2_mux4[11:8]),
    .in3(mux2_mux4[15:12]),
    .sel(digit_sel),
    .out(mux4_decoder));
    
    sseg_decoder my_sseg_decoder(
    .num(mux4_decoder),
    .sseg(decoder_mux2));
    
    an_decoder my_an_decoder(
    .in(digit_sel),
    .out(an));
    
    assign sel_mux2 = sign&~an[3];
    
    mux2 #(.BITS(7)) mux2_2(
    .in0(decoder_mux2),
    .in1(7'b0111111),
    .sel(sel_mux2),
    .out(seg));
    
    assign dp = 1'b1;
    
endmodule
