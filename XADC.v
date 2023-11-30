module adc(input DADDR, input DCLK, input DEN, input DI , input DWE, input VP, input VN, input RESET,input CONVSTCLK, input CONVST, input VAUXP, input VAUXN,
output ALM, output OT, output DRDY, output DO, output BUSY , output CHANNEL , output EOC, output EOS , output JTAGBUSY , output JTAGLOCKED , output JTAGMODIFIED , output MUXADDR
);
// XADC: Dual 12-Bit 1MSPS Analog-to-Digital Converter
//       7 Series
// Xilinx HDL Language Template, version 2021.2

XADC #(
   // INIT_40 - INIT_42: XADC configuration registers
   .INIT_40(16'h0000),
   .INIT_41(16'h0000),
   .INIT_42(16'h0800),
   // INIT_48 - INIT_4F: Sequence Registers
   .INIT_48(16'h0000),
   .INIT_49(16'h0000),
   .INIT_4A(16'h0000),
   .INIT_4B(16'h0000),
   .INIT_4C(16'h0000),
   .INIT_4D(16'h0000),
   .INIT_4F(16'h0000),
   .INIT_4E(16'h0000),                // Sequence register 6
   // INIT_50 - INIT_58, INIT5C: Alarm Limit Registers
   .INIT_50(16'h0000),
   .INIT_51(16'h0000),
   .INIT_52(16'h0000),
   .INIT_53(16'h0000),
   .INIT_54(16'h0000),
   .INIT_55(16'h0000),
   .INIT_56(16'h0000),
   .INIT_57(16'h0000),
   .INIT_58(16'h0000),
   .INIT_5C(16'h0000),
   // Simulation attributes: Set for proper simulation behavior
   .SIM_DEVICE("7SERIES"),            // Select target device (values)
   .SIM_MONITOR_FILE("design.txt")  // Analog simulation data file name
)
XADC_inst (
   // ALARMS: 8-bit (each) output: ALM, OT
   .ALM(ALM),                   // 8-bit output: Output alarm for temp, Vccint, Vccaux and Vccbram
   .OT(OT),                     // 1-bit output: Over-Temperature alarm
   // Dynamic Reconfiguration Port (DRP): 16-bit (each) output: Dynamic Reconfiguration Ports
   .DO(DO),                     // 16-bit output: DRP output data bus
   .DRDY(DRDY),                 // 1-bit output: DRP data ready
   // STATUS: 1-bit (each) output: XADC status ports
   .BUSY(BUSY),                 // 1-bit output: ADC busy output
   .CHANNEL(CHANNEL),           // 5-bit output: Channel selection outputs
   .EOC(EOC),                   // 1-bit output: End of Conversion
   .EOS(EOS),                   // 1-bit output: End of Sequence
   .JTAGBUSY(JTAGBUSY),         // 1-bit output: JTAG DRP transaction in progress output
   .JTAGLOCKED(JTAGLOCKED),     // 1-bit output: JTAG requested DRP port lock
   .JTAGMODIFIED(JTAGMODIFIED), // 1-bit output: JTAG Write to the DRP has occurred
   .MUXADDR(MUXADDR),           // 5-bit output: External MUX channel decode
   // Auxiliary Analog-Input Pairs: 16-bit (each) input: VAUXP[15:0], VAUXN[15:0]
   .VAUXN(VAUXN),               // 16-bit input: N-side auxiliary analog input
   .VAUXP(VAUXP),               // 16-bit input: P-side auxiliary analog input
   // CONTROL and CLOCK: 1-bit (each) input: Reset, conversion start and clock inputs
   .CONVST(CONVST),             // 1-bit input: Convert start input
   .CONVSTCLK(CONVSTCLK),       // 1-bit input: Convert start input
   .RESET(RESET),               // 1-bit input: Active-high reset
   // Dedicated Analog Input Pair: 1-bit (each) input: VP/VN
   .VN(VN),                     // 1-bit input: N-side analog input
   .VP(VP),                     // 1-bit input: P-side analog input
   // Dynamic Reconfiguration Port (DRP): 7-bit (each) input: Dynamic Reconfiguration Ports
   .DADDR(DADDR),               // 7-bit input: DRP address bus
   .DCLK(DCLK),                 // 1-bit input: DRP clock
   .DEN(DEN),                   // 1-bit input: DRP enable signal
   .DI(DI),                     // 16-bit input: DRP input data bus
   .DWE(DWE)                    // 1-bit input: DRP write enable
);

// End of XADC_inst instantiation
endmodule 
