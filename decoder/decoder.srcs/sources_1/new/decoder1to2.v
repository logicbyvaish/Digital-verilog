`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 23:17:31
// Design Name: 
// Module Name: decoder1to2
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


module decoder_1to2(
    input  wire a,
    output reg [1:0] y
);

always @(*) begin
    case (a)
        1'b0: y = 2'b01;
        1'b1: y = 2'b10;
        default: y = 2'b00;
    endcase
end

endmodule
