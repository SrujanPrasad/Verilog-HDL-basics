module dff (input d,clk,rst, output reg q, output qb);
assign qb=~q;
always @(posedge clk or negedge rst)
begin
if(~rst)
q<=0;		//active low reset
else
q<=d;
end
endmodule