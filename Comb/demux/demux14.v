module demux14 (input [3:0]a,
		input s1,s0,
		output reg [3:0]i0,i1,i2,i3);
always @(*)
begin
case ({s1,s0})
2'b00 : begin
	   i0=a;
	   i1=0;
	   i2=0;
	   i3=0;
	end
2'b01 : begin
	   i0=0;
	   i1=a;
	   i2=0;
	   i3=0;
	end
2'b10 : begin
	   i0=0;
	   i1=0;
	   i2=a;
	   i3=0;
	end
2'b11 : begin
	   i0=0;
	   i1=0;
	   i2=0;
	   i3=a;
	end
default: begin
	   i0=1'bx;
	   i1=1'bx;
	   i2=1'bx;
	   i3=1'bx;
	 end
endcase
end
endmodule