`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 10:37:17
// Design Name: 
// Module Name: syn_ram
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


module syn_ram (
    input [7:0] din,       // 8-bit data input
    input [4:0] addr,      // 5-bit address input (can access 32 locations)
    input clk,             // Clock signal
    input w_en,            // Write enable signal
    output reg [7:0] dout  // 8-bit data output
    );

    // Declare a memory array of 32 locations, each 8 bits wide
    reg [7:0] mem[31:0];

    // Synchronous process triggered on the positive edge of the clock
    always @(posedge clk) 
    begin
        if (w_en) 
        begin
            dout <= 0;          // Clear output when writing (optional behavior)
            mem[addr] <= din;   // Write data to the memory at the given address
        end 
        else 
        begin
            dout <= mem[addr];  // Read data from memory when write is not enabled
        end
    end
endmodule

