module demux12 (input [3:0]a, 
		input s, 
		output reg [3:0]I1, I0);
always @(*)
begin
case (s)
1'b0 : begin 
	I1=0;
	I0=a;
	end
1'b1 : begin 
	I1=a;
	I0=0;
	end
endcase
end
endmodule