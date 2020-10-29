`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:45:15 PM
// Design Name: 
// Module Name: show2c
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


module show2c(
    input [7:0] Din,
    output reg [15:0] data,
    output sign
    );
    reg msb;
    reg [7:0] to_one;
    reg [7:0] to_zero;
    reg [7:0] flip;
    always @* begin
        msb = Din[7];
    end
    always @* begin
        if (msb == 1'b1) begin
        flip = ~{1'b1,Din[7:0]};
        to_one = flip + 8'b1;
        end
        else
        to_zero = Din;
    end
    always @* begin
        case(msb)
        1'b0: data = {8'b0,to_zero};
        1'b1: data = {8'b0,to_one};
        endcase
    end
    assign sign=Din[7];    
endmodule
