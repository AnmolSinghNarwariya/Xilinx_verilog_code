module dna(output DOUT, input CLK, input DIN, input READ, input SHIFT);
DNA_PORT #(
   .SIM_DNA_VALUE(57'h000000000000000)  // Specifies a sample 57-bit DNA value for simulation
)
DNA_PORT_inst (
   .DOUT(DOUT),   // 1-bit output: DNA output data.
   .CLK(CLK),     // 1-bit input: Clock input.
   .DIN(DIN),     // 1-bit input: User data input pin.
   .READ(READ),   // 1-bit input: Active high load DNA, active low read input.
   .SHIFT(SHIFT)  // 1-bit input: Active high shift enable input.
);

endmodule
