module encoder42_tb;
reg [3:0]I;
wire [1:0]out;
encoder42 DUT (.I(I),.out(out));
initial
begin
I=4'b0000;#10;
$display("The output is %d", out);
I=4'b1000;#10;
$display("The output is %d", out);
I=4'b0100;#10;
$display("The output is %d", out);
I=4'b0001;#10;
$display("The output is %d", out);
I=4'b0001;#10;
$display("The output is %d", out);
I=4'b0010;#10;
$display("The output is %d", out);
I=4'b1010;#10;
$display("The output is %d", out);
I=4'b1110;#10;
$display("The output is %d", out);
end
initial
begin
$dumpfile("42_encoder.vcd");
$dumpvars(0,encoder42_tb);
end
endmodule