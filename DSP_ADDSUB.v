module DSPADDSUB(
output RESULT,
output CARRYOUT, 
input CLK,
input A, 
input ADD_SUB,
input B,
input CARRYIN, 
input CE,
input RST 
);
ADDSUB_MACRO #(
   .DEVICE("7SERIES"), // Target Device: "7SERIES"
   .LATENCY(2),        // Desired clock cycle latency, 0-2
   .WIDTH(48)          // Input / output bus width, 1-48
) ADDSUB_MACRO_inst (
   .CARRYOUT(CARRYOUT), // 1-bit carry-out output signal
   .RESULT(RESULT),     // Add/sub result output, width defined by WIDTH parameter
   .A(A),               // Input A bus, width defined by WIDTH parameter
   .ADD_SUB(ADD_SUB),   // 1-bit add/sub input, high selects add, low selects subtract
   .B(B),               // Input B bus, width defined by WIDTH parameter
   .CARRYIN(CARRYIN),   // 1-bit carry-in input
   .CE(CE),             // 1-bit clock enable input
   .CLK(CLK),           // 1-bit clock input
   .RST(RST)            // 1-bit active high synchronous reset
);

// End of ADDSUB_MACRO_inst instantiation
 endmodule
