module in_fifo(input RDCLK,input RDEN,input RESET,input WRCLK,input WREN,
input [3:0] D0,input [3:0] D1,input [3:0] D2,input [3:0] D3,input [3:0] D4,input [7:0] D5,input [7:0] D6,input [3:0] D7,input [3:0] D8,input [3:0] D9,
output [7:0] Q0,output [7:0] Q1,output [7:0] Q2,output [7:0] Q3,output [7:0] Q4,output [7:0] Q5,output [7:0] Q6,output [7:0] Q7,output [7:0] Q8,output [7:0] Q9,
output ALMOSTEMPTY, output ALMOSTFULL, output EMPTY, output FULL);
IN_FIFO #(
   .ALMOST_EMPTY_VALUE(1),          // Almost empty offset (1-2)
   .ALMOST_FULL_VALUE(1),           // Almost full offset (1-2)
   .ARRAY_MODE("ARRAY_MODE_4_X_8"), // ARRAY_MODE_4_X_8, ARRAY_MODE_4_X_4
   .SYNCHRONOUS_MODE("FALSE")       // Clock synchronous (FALSE)
)
IN_FIFO_inst (
   // FIFO Status Flags: 1-bit (each) output: Flags and other FIFO status outputs
   .ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit output: Almost empty
   .ALMOSTFULL(ALMOSTFULL),   // 1-bit output: Almost full
   .EMPTY(EMPTY),             // 1-bit output: Empty
   .FULL(FULL),               // 1-bit output: Full
   // Q0-Q9: 8-bit (each) output: FIFO Outputs
   .Q0(Q0),                   // 8-bit output: Channel 0
   .Q1(Q1),                   // 8-bit output: Channel 1
   .Q2(Q2),                   // 8-bit output: Channel 2
   .Q3(Q3),                   // 8-bit output: Channel 3
   .Q4(Q4),                   // 8-bit output: Channel 4
   .Q5(Q5),                   // 8-bit output: Channel 5
   .Q6(Q6),                   // 8-bit output: Channel 6
   .Q7(Q7),                   // 8-bit output: Channel 7
   .Q8(Q8),                   // 8-bit output: Channel 8
   .Q9(Q9),                   // 8-bit output: Channel 9
   // D0-D9: 4-bit (each) input: FIFO inputs
   .D0(D0),                   // 4-bit input: Channel 0
   .D1(D1),                   // 4-bit input: Channel 1
   .D2(D2),                   // 4-bit input: Channel 2
   .D3(D3),                   // 4-bit input: Channel 3
   .D4(D4),                   // 4-bit input: Channel 4
   .D5(D5),                   // 8-bit input: Channel 5
   .D6(D6),                   // 8-bit input: Channel 6
   .D7(D7),                   // 4-bit input: Channel 7
   .D8(D8),                   // 4-bit input: Channel 8
   .D9(D9),                   // 4-bit input: Channel 9
   // FIFO Control Signals: 1-bit (each) input: Clocks, Resets and Enables
   .RDCLK(RDCLK),             // 1-bit input: Read clock
   .RDEN(RDEN),               // 1-bit input: Read enable
   .RESET(RESET),             // 1-bit input: Reset
   .WRCLK(WRCLK),             // 1-bit input: Write clock
   .WREN(WREN)                // 1-bit input: Write enable
);

endmodule
