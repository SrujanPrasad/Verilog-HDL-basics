//dataflow modelling
module half_add(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

/*structural modelling
module half_add(input a,b,output sum,carry);
xor(sum,a,b);
and(carry,a,b);
endmodule */