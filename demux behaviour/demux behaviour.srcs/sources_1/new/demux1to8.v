`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 00:43:49
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

module demux_1to8(
    input din,
    input [2:0] sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3,
    output reg y4,
    output reg y5,
    output reg y6,
    output reg y7
);

always @(*) begin
    case(sel)
        3'b000: begin
            y0 = din; y1 = 0; y2 = 0; y3 = 0;
            y4 = 0;   y5 = 0; y6 = 0; y7 = 0;
        end

        3'b001: begin
            y0 = 0; y1 = din; y2 = 0; y3 = 0;
            y4 = 0; y5 = 0;    y6 = 0; y7 = 0;
        end

        3'b010: begin
            y0 = 0; y1 = 0; y2 = din; y3 = 0;
            y4 = 0; y5 = 0; y6 = 0;    y7 = 0;
        end

        3'b011: begin
            y0 = 0; y1 = 0; y2 = 0; y3 = din;
            y4 = 0; y5 = 0; y6 = 0; y7 = 0;
        end

        3'b100: begin
            y0 = 0; y1 = 0; y2 = 0; y3 = 0;
            y4 = din; y5 = 0; y6 = 0; y7 = 0;
        end

        3'b101: begin
            y0 = 0; y1 = 0; y2 = 0; y3 = 0;
            y4 = 0; y5 = din; y6 = 0; y7 = 0;
        end

        3'b110: begin
            y0 = 0; y1 = 0; y2 = 0; y3 = 0;
            y4 = 0; y5 = 0; y6 = din; y7 = 0;
        end

        3'b111: begin
            y0 = 0; y1 = 0; y2 = 0; y3 = 0;
            y4 = 0; y5 = 0; y6 = 0; y7 = din;
        end
    endcase
end

endmodule
