module upcount3bit (input clk, rst, output reg [2:0] count);
always @(posedge clk or negedge rst)
begin
if(~rst)		//active low reset
count<=0;
else
count<=count+1;
end
endmodule


