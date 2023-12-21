module out_fifo(input RDCLK,input RDEN, input  RESET, input  WRCLK, input  WREN,
input [7:0] D0,input [7:0] D1,input [7:0] D2,input [7:0] D3,input [7:0] D4,input [7:0] D5,input [7:0] D6,input [7:0] D7,input [7:0] D8,input [7:0] D9,
output [7:0] Q0, output ALMOSTEMPTY,output ALMOSTFULL, output EMPTY, output FULL, output [3:0] Q1,output [3:0] Q2,output [3:0] Q9,output [3:0] Q3,output [7:0] Q6,output [3:0] Q4,output [3:0] Q7,output [7:0] Q5,output [3:0] Q8);
OUT_FIFO #(
   .ALMOST_EMPTY_VALUE(1),          // Almost empty offset (1-2)
   .ALMOST_FULL_VALUE(1),           // Almost full offset (1-2)
   .ARRAY_MODE("ARRAY_MODE_8_X_4"), // ARRAY_MODE_8_X_4, ARRAY_MODE_4_X_4
   .OUTPUT_DISABLE("FALSE"),        // Disable output (FALSE, TRUE)
   .SYNCHRONOUS_MODE("FALSE")       // Must always be set to false.
)
OUT_FIFO_inst (
   // FIFO Status Flags: 1-bit (each) output: Flags and other FIFO status outputs
   .ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit output: Almost empty flag
   .ALMOSTFULL(ALMOSTFULL),   // 1-bit output: Almost full flag
   .EMPTY(EMPTY),             // 1-bit output: Empty flag
   .FULL(FULL),               // 1-bit output: Full flag
   // Q0-Q9: 4-bit (each) output: FIFO Outputs
   .Q0(Q0),                   // 4-bit output: Channel 0 output bus
   .Q1(Q1),                   // 4-bit output: Channel 1 output bus
   .Q2(Q2),                   // 4-bit output: Channel 2 output bus
   .Q3(Q3),                   // 4-bit output: Channel 3 output bus
   .Q4(Q4),                   // 4-bit output: Channel 4 output bus
   .Q5(Q5),                   // 8-bit output: Channel 5 output bus
   .Q6(Q6),                   // 8-bit output: Channel 6 output bus
   .Q7(Q7),                   // 4-bit output: Channel 7 output bus
   .Q8(Q8),                   // 4-bit output: Channel 8 output bus
   .Q9(Q9),                   // 4-bit output: Channel 9 output bus
   // D0-D9: 8-bit (each) input: FIFO inputs
   .D0(D0),                   // 8-bit input: Channel 0 input bus
   .D1(D1),                   // 8-bit input: Channel 1 input bus
   .D2(D2),                   // 8-bit input: Channel 2 input bus
   .D3(D3),                   // 8-bit input: Channel 3 input bus
   .D4(D4),                   // 8-bit input: Channel 4 input bus
   .D5(D5),                   // 8-bit input: Channel 5 input bus
   .D6(D6),                   // 8-bit input: Channel 6 input bus
   .D7(D7),                   // 8-bit input: Channel 7 input bus
   .D8(D8),                   // 8-bit input: Channel 8 input bus
   .D9(D9),                   // 8-bit input: Channel 9 input bus
   // FIFO Control Signals: 1-bit (each) input: Clocks, Resets and Enables
   .RDCLK(RDCLK),             // 1-bit input: Read clock
   .RDEN(RDEN),               // 1-bit input: Read enable
   .RESET(RESET),             // 1-bit input: Active high reset
   .WRCLK(WRCLK),             // 1-bit input: Write clock
   .WREN(WREN)                // 1-bit input: Write enable
);

endmodule 
