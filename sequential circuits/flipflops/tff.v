module tff (input clk,rst,t,output reg q,output qb);
assign qb=~q;
always @(posedge clk or negedge rst)
begin
if(~rst)
q<=0;
else
case(t)
1'b0 : q<=q;
1'b1 :q<=qb;
default : q<=q;
endcase
end
endmodule
