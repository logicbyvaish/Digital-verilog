`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 00:40:48
// Design Name: 
// Module Name: demux1to4
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
module demux_1to4(
    input  din,
    input [1:0] sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);

always @(*) begin
    case(sel)
        2'b00: begin
            y0 = din;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = 1'b0;
        end

        2'b01: begin
            y0 = 1'b0;
            y1 = din;
            y2 = 1'b0;
            y3 = 1'b0;
        end

        2'b10: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = din;
            y3 = 1'b0;
        end

        2'b11: begin
            y0 = 1'b0;
            y1 = 1'b0;
            y2 = 1'b0;
            y3 = din;
        end
    endcase
end

endmodule