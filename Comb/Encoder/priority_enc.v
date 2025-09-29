module priority_enc(input [7:0]I , output reg [2:0] out);
always @(*)
begin
if(I[7]==1) begin
out=3'b111;
end
else if(I[6]==1) begin
out=3'b110;
end
else if(I[5]==1) begin
out=3'b101;
end
else if(I[4]==1) begin
out=3'b100;
end
else if(I[3]==1) begin
out=3'b011;
end
else if(I[2]==1) begin
out=3'b010;
end
else if(I[1]==1) begin
out=3'b001;
end
else if(I[0]==1) begin
out=3'b000;
end
else begin
out=3'bxxx;
end
end
endmodule

