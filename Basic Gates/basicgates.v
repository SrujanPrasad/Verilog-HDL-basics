//module for basic gates using continuous assignment(dataflow modelling)
module basicgates(input a,b,output [6:0] y);
assign y[0]=~a; 	// not operation
assign y[1]=a&b; 	// and operation
assign y[2]=a|b; 	// or operation
assign y[3]=~(a&b);	//nand operation
assign y[4]=~(a|b);	//nor operation
assign y[5]=a^b;	//xor operation
assign y[6]=~(a^b);	//xnor operation
endmodule