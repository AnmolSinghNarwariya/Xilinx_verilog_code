module counter_tc(output Q, output TC, input CLK, input CE, input RST);

//// COUNTER_TC_MACRO: Counter with terminal count implemented in a DSP48E
////                   7 Series
//// Xilinx HDL Language Template, version 2021.2

COUNTER_TC_MACRO #(
   .COUNT_BY(48'h000000000001), // Count by value
   .DEVICE("7SERIES"),          // Target Device: "7SERIES"
   .DIRECTION("UP"),            // Counter direction, "UP" or "DOWN"
   .RESET_UPON_TC("FALSE"), // Reset counter upon terminal count, "TRUE" or "FALSE"
   .TC_VALUE(48'h000000000000), // Terminal count value
   .WIDTH_DATA(48)              // Counter output bus width, 1-48
) COUNTER_TC_MACRO_inst (
   .Q(Q),     // Counter output bus, width determined by WIDTH_DATA parameter
   .TC(TC),   // 1-bit terminal count output, high = terminal count is reached
   .CLK(CLK), // 1-bit positive edge clock input
   .CE(CE),   // 1-bit active high clock enable input
  .RST(RST)  // 1-bit active high synchronous reset
);

//// End of COUNTER_TC_MACRO_inst instantiation

endmodule



