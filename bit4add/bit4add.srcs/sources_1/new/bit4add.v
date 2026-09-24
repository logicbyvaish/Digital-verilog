`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2026 00:41:21
// Design Name: 
// Module Name: bit4add
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

module bit4add(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] s,
    output       carry
);

    wire c1;
    wire c2;
    wire c3;

    // Bit 0
    fulladder1 fa0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(s[0]),
        .carry(c1)
    );

    // Bit 1
    fulladder1 fa1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(s[1]),
        .carry(c2)
    );

    // Bit 2
    fulladder1 fa2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(s[2]),
        .carry(c3)
    );

    // Bit 3
    fulladder1 fa3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(s[3]),
        .carry(carry)
    );

endmodule