module A_lutx0y0_1(a,b,d);
input a,b;
output d;
LUT3 #(.INIT(8'h1)) 
 Z(.I0(a),.I1(b),.O(d));
endmodule
