`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:14:47 PM
// Design Name: 
// Module Name: count_sseg_wrapper
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


module count_sseg_wrapper(
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    wire[1:0] count_out;
    
    counter mycount(
    .clk(clk),
    .rst(btnC),
    .msbs(count_out));
    
    sseg4 mysseg4(
    .data(4'hA),
    .sign(1'b0),
    .hex_dec(1'b0),
    .digit_sel(count_out),
    .seg(seg),
    .an(an),
    .dp(dp));
    
endmodule
