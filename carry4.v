module carry4(
output [3:0] CO,
output [3:0] O, 
input CI,
 
input [3:0] DI,
input [3:0] S
);

parameter CYINIT=0;
// CARRY4: Fast Carry Logic Component
// 7 Series
// Xilinx HDL Libraries Guide, version 2012.2
CARRY4 CARRY4_inst (
.CO(CO), // 4-bit carry out
.O(O), // 4-bit carry chain XOR data out
.CI(CI), // 1-bit carry cascade input
.CYINIT(CYINIT), // 1-bit carry initialization
.DI(DI), // 4-bit carry-MUX data in
.S(S) // 4-bit carry-MUX select input
);
// End of CARRY4_inst instantiation
 endmodule
