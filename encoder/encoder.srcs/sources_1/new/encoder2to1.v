`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2026 00:46:58
// Design Name: 
// Module Name: encoder2to1
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


module encoder_2to1(
    input [1:0] d,
    output reg y
);

always @(*) begin
    case (d)
        2'b01: y = 1'b0;
        2'b10: y = 1'b1;
        default: y = 1'b0;
    endcase
end

endmodule
