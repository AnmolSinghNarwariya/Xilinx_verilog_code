module A_lutx0y0_1(a,b,c,d,e);
input a,b,c,d;
output e;
LUT4 #(.INIT(16'hFF)) 
 Z(.I0(a),.I1(b),.I2(c),.I3(d),.O(e));
 endmodule
