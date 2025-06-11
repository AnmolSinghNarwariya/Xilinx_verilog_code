module ALUT_2(a,b,c,d,e,f,g,h);
input a,b,c,d,e,f;
output wire g,h;
(* SOFT_HLUTNM = "soft_lutpair5" *) 
LUT3 #(.INIT(4'h15)) 
 Z(.I0(a),.I1(b),.I2(e),.O(g));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
LUT5 #(.INIT(32'h2549)) 
 Z1(.I0(a),.I1(b),.I2(d),.I3(c),.I4(e),.O(h));
endmodule

//constraint
//set_property BEL A6LUT [get_cells Z1]
//set_property LOC SLICE_X0Y53 [get_cells Z1]
//set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4 I4:A5} [get_cells Z1]
//set_property LOC SLICE_X0Y53 [get_cells Z]
//set_property BEL A6LUT [get_cells Z]
