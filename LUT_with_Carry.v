module top(a,b,c,d,e,f,CI,CO,O,CI1,CO1,O1);
input a,b,c,d,e,f;
//output wire g,h;
wire g,h,j,k,l,m,n,o;
wire [1:0] DI,S,DI1,S1;
output [1:0] CO;
output [1:0] O; 
input [1:0] CI;
output [1:0] CO1;
output [1:0]  O1; 
input [1:0] CI1; 

LUT_A2 A1(a,b,c,d,e,f,g,h);
LUT_A2 A2(a,b,c,d,e,f,j,k);
LUT_A2 A3(a,b,c,d,e,f,l,m);
LUT_A2 A4(a,b,c,d,e,f,n,o);



assign DI[0]=g;
assign S[0]=h;
assign DI1[0]=j;
assign S1[0]=k;

assign DI[1]=l;
assign S[1]=m;
assign DI1[1]=n;
assign S1[1]=o;
//assign DI[0]=j;
//assign S[0]=k;
//assign DI[2]=l;
//assign S[2]=m;
//assign DI[3]=n;
//assign S[3]=o;

carry4 C1(CO,O,CI,DI,S);
carry4 C2(CO1,O1,CI1,DI1,S1);


endmodule 

module LUT_A2(a,b,c,d,e,f,g,h);
input a,b,c,d,e,f;
output wire g,h;

(* SOFT_HLUTNM = "soft_lutpair5" *) 
LUT3 #(.INIT(4'h1)) 
 Z(.I0(a),.I1(b),.I2(e),.O(h));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
LUT5 #(.INIT(32'h2549)) 
 Z1(.I0(a),.I1(b),.I2(d),.I3(c),.I4(e),.O(g));
endmodule

module carry4(
output [1:0] CO,
output [1:0] O, 
input [1:0] CI,
 
input  [1:0] DI,
input [1:0] S
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
 
