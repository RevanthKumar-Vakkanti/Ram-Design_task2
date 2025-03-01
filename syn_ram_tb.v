`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 10:39:04
// Design Name: 
// Module Name: syn_ram_tb
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

module syn_ram_tb();

    // Declare testbench signals
    reg [7:0] din;       // 8-bit data input
    reg [4:0] addr;      // 5-bit address input (32 locations)
    reg clk, w_en;       // Clock and write enable signals
    wire [7:0] dout;     // 8-bit data output

    // Instantiate the synchronous RAM module
    syn_ram dut(din, addr, clk, w_en, dout);

    // Clock generation: toggles every 5 time units
    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
    end

    // Stimulus block: Writing and reading from memory
    initial begin
        // Writing data into memory
        w_en = 1; addr = 5'd1; din = 8'd10;  // Write 10 to address 1
        #10 w_en = 1; addr = 5'd2; din = 8'd25; // Write 25 to address 2
        
        // Reading data from memory
        #10 w_en = 0; addr = 5'd1; // Read from address 1
        #10 w_en = 0; addr = 5'd2; // Read from address 2
        
        // Writing and reading more data
        #10 w_en = 1; addr = 5'd3; din = 8'd12; // Write 12 to address 3
        #10 w_en = 0; addr = 5'd3; // Read from address 3
        
        #10 w_en = 1; addr = 5'd4; din = 8'd26; // Write 26 to address 4
        #10 w_en = 0; addr = 5'd4; // Read from address 4
        
        // End simulation after 100 time units
        #100 $finish;
    end

    // Monitor block: Displays values in the console
    initial begin
        $monitor("Time = %t | w_en = %d | addr = %d | din = %d | dout = %d", 
                 $time, w_en, addr, din, dout);
    end

endmodule

