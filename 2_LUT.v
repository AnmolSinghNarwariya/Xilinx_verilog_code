module A_lutx0y0_1(a,b,d);
input a,b;
output d;
 LUT2 #(.INIT(4'h1)) 
 Z(.I0(a),.I1(b),.O(d));
endmodule
