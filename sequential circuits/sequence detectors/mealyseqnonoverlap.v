//to detect 0101 - mealy non-overlapping
module mealyseqnonoverlap (input clk,rst,x, output reg out);
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] state, next_state;
always @(posedge clk or negedge rst)
begin
if(~rst)
state<=s0;
else
state<=next_state;
end

always @(*)
begin
case(state)
s0: begin
next_state=(x==0)?s1:s0;
end
s1:begin
next_state=(x==1)?s2:s1;
end
s2:begin
next_state=(x==0)?s3:s0;
end
s3:begin
next_state=s0;
end
default: next_state=s0;
endcase
end

always @(*)
begin
if(state==s3 && x==1)
out=1'b1;
else
out=1'b0;
end
endmodule

