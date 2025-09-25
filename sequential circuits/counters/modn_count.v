//design of MOD-N counters

module modn_count #(parameter N=5,parameter width=3)(input clk,rst,output reg [width-1 : 0] count);
always @(posedge clk or negedge rst)
begin
if(~rst)
count<=0;
else 
if(count==N-1)
count<=0;
else
count<=count+1;
end
endmodule