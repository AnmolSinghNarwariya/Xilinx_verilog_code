module efuse(output [31:0] EFUSEUSR);
EFUSE_USR #(
   .SIM_EFUSE_VALUE(32'h00000000)  // Value of the 32-bit non-volatile value used in simulation
)
EFUSE_USR_inst (
   .EFUSEUSR(EFUSEUSR)  // 32-bit output: User eFUSE register value output
);

endmodule
