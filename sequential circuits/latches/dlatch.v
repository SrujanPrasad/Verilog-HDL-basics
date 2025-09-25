module dlatch(input d,en,output reg q,output qb);
assign qb=~q;
always @(*)
begin
if(!en)
q<=0;
else
q<=d;
end
endmodule

