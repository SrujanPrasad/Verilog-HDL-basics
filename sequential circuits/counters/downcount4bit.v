module downcount4bit (input clk,rst,output reg [3:0]count);
always @(posedge clk or negedge rst)
begin
if(~rst)		//active low reset
count<=4'hf;
else
count<=count-1;
end
endmodule