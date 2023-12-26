module frame_ecc(output CRCERROR, output ECCERROR, output ECCERRORSINGLE, output [26:0] FAR, output [4:0] SYNBIT, output [12:0] SYNDROME, output SYNDROMEVALID, output [6:0] SYNWORD );
FRAME_ECCE2 #(
   .FARSRC("EFAR"),                // Determines if the output of FAR[25:0] configuration register points to
                                   // the FAR or EFAR. Sets configuration option register bit CTL0[7].
   .FRAME_RBT_IN_FILENAME("NONE")  // This file is output by the ICAP_E2 model and it contains Frame Data
                                   // information for the Raw Bitstream (RBT) file. The FRAME_ECCE2 model
                                   // will parse this file, calculate ECC and output any error conditions.
)
FRAME_ECCE2_inst (
   .CRCERROR(CRCERROR),             // 1-bit output: Output indicating a CRC error.
   .ECCERROR(ECCERROR),             // 1-bit output: Output indicating an ECC error.
   .ECCERRORSINGLE(ECCERRORSINGLE), // 1-bit output: Output Indicating single-bit Frame ECC error detected.
   .FAR(FAR),                       // 26-bit output: Frame Address Register Value output.
   .SYNBIT(SYNBIT),                 // 5-bit output: Output bit address of error.
   .SYNDROME(SYNDROME),             // 13-bit output: Output location of erroneous bit.
   .SYNDROMEVALID(SYNDROMEVALID),   // 1-bit output: Frame ECC output indicating the SYNDROME output is
                                    // valid.

   .SYNWORD(SYNWORD)                // 7-bit output: Word output in the frame where an ECC error has been
                                    // detected.

);
endmodule 
