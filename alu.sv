`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:15:34 PM
// Design Name: 
// Module Name: alu
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



module alu #(
    parameter ALU_WIDTH = 16
) (
    input logic [ALU_WIDTH-1:0] a,      
    input logic [ALU_WIDTH-1:0] b,      
    input logic [1:0] op,             
    output logic [ALU_WIDTH-1:0] result // Result of the operation
);

    always_comb begin
        case (op)
            2'b00: result = a + b;      // Addition
            2'b01: result = a - b;      // Subtraction
            2'b10: result = a & b;      // Bitwise AND
            2'b11: result = a | b;      // Bitwise OR
            default: result = {ALU_WIDTH{1'b0}}; // Default: Set result to zero
        endcase
    end

endmodule
