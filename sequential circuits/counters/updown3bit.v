module updown3bit(input clk,rst,updown,output reg [2:0] count);
always @(posedge clk or negedge rst)
begin
if(~rst)
count<=0;
else
if(~updown)				//when updown=0 up counting and when updown=1 downcounting
count<=count+1;
else
count<=count-1;
end
endmodule