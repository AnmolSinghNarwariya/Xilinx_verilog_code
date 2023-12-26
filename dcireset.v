module dcireset(output LOCKED, input RST);
DCIRESET DCIRESET_inst (
   .LOCKED(LOCKED), // 1-bit output: LOCK status output
   .RST(RST)        // 1-bit input: Active-high asynchronous reset input
);

endmodule 
