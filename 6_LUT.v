module ALUT_6(a,b,c,d,e,f,g);
input a,b,c,d,e,f;
output g;
LUT6 #(.INIT(64'h1)) 
 Z(.I0(a),.I1(b),.I2(c),.I3(d),.I4(e),.I5(f),.O(g));
endmodule
