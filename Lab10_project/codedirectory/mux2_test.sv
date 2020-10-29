`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 11:40:44 AM
// Design Name: 
// Module Name: mux2_test
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


module mux2_test();
localparam BITS = 16;

    reg [BITS-1:0] in0;
    reg [BITS-1:0] in1;
    reg sel;
    wire [BITS-1:0] out;
    
mux2 dut(
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .out(out)
    );
    
initial begin
in0=15'b000000000000001;in1=4'b111111111111110;sel=0;#10;
in0=15'b000000000000001;in1=4'b111111111111110;sel=1;#10;
in0=15'b101010101010101;in1=4'b000000000111111;sel=0;#10;
in0=15'b101010101010101;in1=4'b000000000111111;sel=1;#10;
$finish;
end

endmodule
