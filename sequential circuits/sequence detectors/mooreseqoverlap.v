// to detect 1010 - Moore overlapping
module mooreseqoverlap(input clk,rst,x,output reg out);
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
reg [2:0] state,next_state;
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
next_state=x?s1:s0;
end
s1: begin
next_state=x?s1:s2;
end
s2: begin
next_state=x?s3:s0;
end
s3: begin
next_state=x?s1:s4;
end
s4: begin
next_state=x?s3:s0;
end
default : next_state=s0;
endcase
end

always @(*)
begin
if(state==s3 && x==0)
out=1'b1;
else
out=1'b0;
end
endmodule



