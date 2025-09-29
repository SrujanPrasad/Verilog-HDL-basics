module priority_enc_tb;
reg [7:0]I;
wire [2:0]out;
priority_enc DUT(.I(I),.out(out));
initial
begin
I=8'b00000001;#10;
$display("The output is %d",out);
I=8'b00000011;#10;
$display("The output is %d",out);
I=8'b00000111;#10;
$display("The output is %d",out);
I=8'b00001111;#10;
$display("The output is %d",out);
I=8'b00011111;#10;
$display("The output is %d",out);
I=8'b00111111;#10;
$display("The output is %d",out);
I=8'b01111111;#10;
$display("The output is %d",out);
I=8'b11111111;#10;
$display("The output is %d",out);
I=8'b01011011;#10;
$display("The output is %d",out);
I=8'b11011011;#10;
$display("The output is %d",out);
I=8'b00011011;#10;
$display("The output is %d",out);
I=8'b0011111;#10;
$display("The output is %d",out);
end
initial
begin
$dumpfile("priority_enc.vcd");
$dumpvars(0,priority_enc_tb);
end
endmodule




