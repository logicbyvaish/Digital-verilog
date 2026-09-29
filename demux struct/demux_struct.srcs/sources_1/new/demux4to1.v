`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 22:05:24
// Design Name: 
// Module Name: demux4to1
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


module demux1to4 (
    input D,
    input S1,
    input S0,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

wire S1_bar, S0_bar;

not (S1_bar, S1);
not (S0_bar, S0);

and (Y0, D, S1_bar, S0_bar);
and (Y1, D, S1_bar, S0);
and (Y2, D, S1, S0_bar);
and (Y3, D, S1, S0);

endmodule