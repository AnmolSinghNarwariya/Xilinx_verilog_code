module DFF(output Q, input C, input CE, input CLR, input D);

FDCE #(
   .INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
) FDCE_inst (
   .Q(Q),      // 1-bit Data output
   .C(C),      // 1-bit Clock input
   .CE(CE),    // 1-bit Clock enable input
   .CLR(CLR),  // 1-bit Asynchronous clear input
   .D(D)       // 1-bit Data input
);

endmodule
