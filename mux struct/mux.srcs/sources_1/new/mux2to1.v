`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 01:53:21
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(
    input s0, i0, i1,
    output y
);

wire s01;
wire a0;
wire a1;

not(s01, s0);
and(a0, i0, s01);
and(a1, i1, s0);
or(y, a0, a1);

endmodule
