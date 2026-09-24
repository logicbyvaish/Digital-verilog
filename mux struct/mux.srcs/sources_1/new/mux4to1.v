`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 01:55:24
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input s1,
    input s0,
    input i0,
    input i1,
    input i2,
    input i3,
    output y
);

wire y0;
wire y1;

// First stage
mux2to1 m0(
    .s0(s0),
    .i0(i0),
    .i1(i1),
    .y(y0)
);

mux2to1 m1(
    .s0(s0),
    .i0(i2),
    .i1(i3),
    .y(y1)
);

// Second stage
mux2to1 m2(
    .s0(s1),
    .i0(y0),
    .i1(y1),
    .y(y)
);

endmodule
