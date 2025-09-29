module decoder24_tb;
reg [1:0]A;
wire [3:0]out;
decoder24 DUT (.A(A),.out(out));
initial
begin
A=2'b00;#10;
$display("A is %b ,out is %b",A,out);
A=2'b01;#10;
$display("A is %b ,out is %b",A,out);
A=2'b10;#10;
$display("A is %b ,out is %b",A,out);
A=2'b11;#10;
$display("A is %b, out is %b",A,out);
end
initial
begin
$dumpfile("decoder24.vcd");
$dumpvars(0,decoder24_tb);
end
endmodule