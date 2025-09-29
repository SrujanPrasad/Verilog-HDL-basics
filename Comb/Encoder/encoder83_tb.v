module encoder83_tb;
reg [7:0]I;
wire [2:0]out;
encoder83 DUT(.I(I),.out(out));
initial
begin
I=8'b00000001;#10;
$display("The output is %d",out);
I=8'b00000010;#10;
$display("The output is %d",out);
I=8'b00000100;#10;
$display("The output is %d",out);
I=8'b00001000;#10;
$display("The output is %d",out);
I=8'b00010000;#10;
$display("The output is %d",out);
I=8'b00100000;#10;
$display("The output is %d",out);
I=8'b01000000;#10;
$display("The output is %d",out);
I=8'b10000000;#10;
$display("The output is %d",out);
I=8'b10000001;#10;
$display("The output is %d",out);
I=8'b11000001;#10;
$display("The output is %d",out);
I=8'b10010001;#10;
$display("The output is %d",out);
I=8'b11001001;#10;
$display("The output is %d",out);
end
initial
begin
$dumpfile("encoder83.vcd");
$dumpvars(0,encoder83_tb);
end
endmodule