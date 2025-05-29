module ALUT_2(a,b,c,d,e,f,g,h);
input a,b,c,d,e,f;
output wire g,h;
(* SOFT_HLUTNM = "soft_lutpair4" *) 
LUT3 #(.INIT(4'h15)) 
 Z(.I0(a),.I1(b),.I2(f),.O(g));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
LUT5 #(.INIT(32'h2549)) 
 Z1(.I0(a),.I1(b),.I2(d),.I3(c),.I4(e),.O(h));
endmodule
