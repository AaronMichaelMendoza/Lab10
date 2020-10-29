`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 12:38:33 PM
// Design Name: 
// Module Name: sseg4_manual
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


module sseg4_manual(
    input [15:0] sw,
    input clk,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    sseg4 mysseg4(
    .data({4'b0000,sw[11:0]}),
    .hex_dec(sw[15]),
    .sign(sw[14]),
    .digit_sel(sw[13:12]),
    .seg(seg),
    .dp(dp),
    .an(an));
    
endmodule
