`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 02:01:05
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


module mux2to1 (
    input  I0,
    input  I1,
    input S,
    output reg Y
);

always @(*) begin
    case (S)
        1'b0: Y = I0;
        1'b1: Y = I1;
        default: Y = 1'b0;
    endcase
end

endmodule
