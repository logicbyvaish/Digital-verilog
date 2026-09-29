`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 22:11:16
// Design Name: 
// Module Name: demux1to8
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

module demux1to8 (
    input D,
    input S2,
    input S1,
    input S0,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire S2_bar, S1_bar, S0_bar;

not (S2_bar, S2);
not (S1_bar, S1);
not (S0_bar, S0);

and (Y0, D, S2_bar, S1_bar, S0_bar);
and (Y1, D, S2_bar, S1_bar, S0);
and (Y2, D, S2_bar, S1, S0_bar);
and (Y3, D, S2_bar, S1, S0);
and (Y4, D, S2, S1_bar, S0_bar);
and (Y5, D, S2, S1_bar, S0);
and (Y6, D, S2, S1, S0_bar);
and (Y7, D, S2, S1, S0);

endmodule
