`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:55:08 AM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input [15:0] sw,
    input clk,
    input btnC,
    output [15:0] led
    );
    
    wire[7:0] out_reg1;
    wire[7:0] out_alu;
    wire[7:0] out_reg2;
    
    register #(.N(8)) reg1(
        .D(sw[7:0]),
        .clk(clk),
        .rst(btnC),
        .en(btnD),
        .Q(out_reg1) );
        
    alu myalu(
        .in0(sw[7:0]),
        .in1(out_reg1),
        .op(sw[11:8]),
        .out(out_alu) );
        
    register #(.N(8)) reg2(
        .D(out_alu),
        .clk(clk),
        .rst(btnC),
        .en(btnU),
        .Q(out_reg2) );
        
    assign led = {out_reg2, out_reg1};
endmodule
