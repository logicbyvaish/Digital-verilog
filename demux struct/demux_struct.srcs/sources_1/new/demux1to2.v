`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 18:50:59
// Design Name: 
// Module Name: demux1to2
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

module demux1to2 (
    input D,
    input S,
    output Y0,
    output Y1
);

wire S_bar;

not (S_bar, S);
and (Y0, D, S_bar);
and (Y1, D, S);

endmodule

