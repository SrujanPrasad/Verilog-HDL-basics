module srlatch_nor(input s,r,en,output reg q,output qb);
assign qb=~q;
always @(*)
begin
if(!en)
q<=0;
else
case({s,r})
2'b00 : q<=0;
2'b01 :q<=0;
2'b10 :q<=1;
2'b10:q<=1'bx;
default: q<=1'bx;
endcase
end
endmodule