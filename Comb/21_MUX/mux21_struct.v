module mux21_struct(input i0,i1,s,output out);
wire w1,w2,w3;
not(w3,s);
and g1(w1,i0,w3);
and g2(w2.i1,s);
or(out,w1,w2);
endmodule