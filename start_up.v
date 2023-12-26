module start_up(input CLK, input  GSR , input GTS , input KEYCLEARB, input  PACK , input USRCCLKO , input USRCCLKTS, input   USRDONEO, input  USRDONETS,
output CFGCLK, output CFGMCLK,output EOS, output PREQ);
STARTUPE2 #(
   .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
   .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation.
)
STARTUPE2_inst (
   .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
   .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(EOS),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .PREQ(PREQ),           // 1-bit output: PROGRAM request to fabric output
   .CLK(CLK),             // 1-bit input: User start-up clock input
   .GSR(GSR),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   .GTS(GTS),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   .KEYCLEARB(KEYCLEARB), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
   .PACK(PACK),           // 1-bit input: PROGRAM acknowledge input
   .USRCCLKO(USRCCLKO),   // 1-bit input: User CCLK input
                          // For Zynq-7000 devices, this input must be tied to GND
   .USRCCLKTS(USRCCLKTS), // 1-bit input: User CCLK 3-state enable input
                          // For Zynq-7000 devices, this input must be tied to VCC
   .USRDONEO(USRDONEO),   // 1-bit input: User DONE pin output control
   .USRDONETS(USRDONETS)  // 1-bit input: User DONE 3-state enable output
);

endmodule
