module half_add(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

module full_adder_ha(input a,b,cin,output sum,cout);
wire w1,w2,w3;
half_add ha1(a,b,w1,w2);
half_add ha2 (w1,cin,sum,w3);
or(cout,w2,w3);
endmodule