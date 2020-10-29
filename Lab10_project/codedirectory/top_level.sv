`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 01:09:27 PM
// Design Name: 
// Module Name: top_level
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


module top_level(
    input btnU,
    input btnD,
    input [15:0] sw,
    input clk,
    input btnC,
    output [6:0] seg,
    output [3:0] an,
    output dp,
    output [15:0] led
    );
    wire[15:0] out_calc;
    wire[15:0] out_show2c;
    wire sign;
    wire[1:0] out_count;
    top_lab9 calc(
        .btnU(btnU),
        .btnD(btnD),
        .sw(sw),
        .clk(clk),
        .btnC(btnC),
        .led(out_calc));
        
    assign led=out_calc;
    show2c myshow2c(
        .Din(out_calc[15:8]),
        .data(out_show2c),
        .sign(sign));
        
    counter mycounter(
        .clk(clk),
        .rst(btnC),
        .msbs(out_count));
        
    sseg4 mysseg4(
        .data(out_show2c),
        .sign(sign),
        .hex_dec(sw[15]),
        .digit_sel(out_count),
        .seg(seg),
        .dp(dp),
        .an(an));
        
endmodule
