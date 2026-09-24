`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 01:56:20
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    input s2,
    input s1,
    input s0,
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    output y
);

wire y0;
wire y1;

// First 4:1 MUX
mux4to1 m0(
    .s1(s1),
    .s0(s0),
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .y(y0)
);

// Second 4:1 MUX
mux4to1 m1(
    .s1(s1),
    .s0(s0),
    .i0(i4),
    .i1(i5),
    .i2(i6),
    .i3(i7),
    .y(y1)
);

// Final 2:1 MUX
mux2to1 m2(
    .s0(s2),
    .i0(y0),
    .i1(y1),
    .y(y)
);

endmodule
