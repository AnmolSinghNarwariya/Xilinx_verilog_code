module capture(input CAp, input CLK);
CAPTUREE2 #(
   .ONESHOT("TRUE")  // Specifies the procedure for performing single readback per CAP trigger.
)
CAPTUREE2_inst (
   .CAP(CAP), // 1-bit input: Capture Input
   .CLK(CLK)  // 1-bit input: Clock Input
);

endmodule
