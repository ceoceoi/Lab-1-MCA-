`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:16:36 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

    // Parameters
    localparam ALU_WIDTH = 16;

    // Testbench Signals
    logic [ALU_WIDTH-1:0] a;       // Input operand a
    logic [ALU_WIDTH-1:0] b;       // Input operand b
    logic [1:0] op;                // Operation selector
    logic [ALU_WIDTH-1:0] result;  // ALU result

    // Instantiate the ALU
    alu #(.ALU_WIDTH(ALU_WIDTH)) dut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    // Testbench logic
    initial begin
        // Display format
        $monitor("Time=%0t | a=%h, b=%h, op=%b | result=%h", 
                 $time, a, b, op, result);

        a = 16'h0011; b = 16'h000F; op = 2'b00;
        #10; 
     
        a = 16'h0020; b = 16'h0005; op = 2'b01;
        #10;

        a = 16'hFF00; b = 16'h00FF; op = 2'b10;
        #10;

        a = 16'hAA55; b = 16'h55AA; op = 2'b11;
        #10;

        a = 16'hFFFF; b = 16'h0000; op = 2'bXX; //  invaild op
        #10;

        $finish; 
    end

endmodule
