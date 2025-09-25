module sr_ff_asynrst(input s,r,clk,rst,output reg q ,output qb);
assign qb=~q;
always @(posedge clk or negedge rst)
begin
if(~rst)		//active low reset
q<=0;
else
case({s,r})
2'b00 : q<=q;
2'b01 : q<=0;
2'b10 : q<=1;
2'b11 : q<=1'bx;
default : q<=q;
endcase
end
endmodule