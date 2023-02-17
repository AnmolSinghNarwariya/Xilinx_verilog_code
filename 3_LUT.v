module A_lutx0y0_1(a,b,c,d);
input a,b,c;
output d;
LUT3 #(.INIT(8'h1)) 
 Z(.I0(a),.I1(b),.I2(c),.O(d));
 endmodule
