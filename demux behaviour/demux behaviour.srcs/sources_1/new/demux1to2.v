`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 00:37:12
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


module demux_1to2(
    input  din,
    input  sel,
    output reg y0,
    output reg y1
);

always @(*) begin
    case(sel)
        1'b0: begin
            y0 = din;
            y1 = 1'b0;
        end

        1'b1: begin
            y0 = 1'b0;
            y1 = din;
        end
    endcase
end

endmodule