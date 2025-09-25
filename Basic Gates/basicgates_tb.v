module basicgates_tb;
reg a,b;
wire [6:0]y;
basicgates dut(.a(a),.b(b),.y(y)); //instatiating the design module
initial
  begin
     $dumpfile("dump.vcd");  //to display the waveforms
     $dumpvars(1);
end
initial
 begin
    a=0;b=0;#10;
    $display("a : %d, b: %d , NOT output :%d", a,b,y[0]);
    $display("a : %d, b: %d , AND output :%d", a,b,y[1]);
    $display("a : %d, b: %d , OR output :%d", a,b,y[2]);
    $display("a : %d, b: %d , NAND output :%d", a,b,y[3]);
    $display("a : %d, b: %d , NOR output :%d", a,b,y[4]);
    $display("a : %d, b: %d , XOR output :%d", a,b,y[5]);
    $display("a : %d, b: %d , XNOR output :%d", a,b,y[6]);
    a=0;b=1;#10;
    $display("a : %d, b: %d , NOT output :%d", a,b,y[0]);
    $display("a : %d, b: %d , AND output :%d", a,b,y[1]);
    $display("a : %d, b: %d , OR output :%d", a,b,y[2]);
    $display("a : %d, b: %d , NAND output :%d", a,b,y[3]);
    $display("a : %d, b: %d , NOR output :%d", a,b,y[4]);
    $display("a : %d, b: %d , XOR output :%d", a,b,y[5]);
    $display("a : %d, b: %d , XNOR output :%d", a,b,y[6]);
    a=1;b=0;#10;
    $display("a : %d, b: %d , NOT output :%d", a,b,y[0]);
    $display("a : %d, b: %d , AND output :%d", a,b,y[1]);
    $display("a : %d, b: %d , OR output :%d", a,b,y[2]);
    $display("a : %d, b: %d , NAND output :%d", a,b,y[3]);
    $display("a : %d, b: %d , NOR output :%d", a,b,y[4]);
    $display("a : %d, b: %d , XOR output :%d", a,b,y[5]);
    $display("a : %d, b: %d , XNOR output :%d", a,b,y[6]);
    a=1;b=1;#10;
    $display("a : %d, b: %d , NOT output :%d", a,b,y[0]);
    $display("a : %d, b: %d , AND output :%d", a,b,y[1]);
    $display("a : %d, b: %d , OR output :%d", a,b,y[2]);
    $display("a : %d, b: %d , NAND output :%d", a,b,y[3]);
    $display("a : %d, b: %d , NOR output :%d", a,b,y[4]);
    $display("a : %d, b: %d , XOR output :%d", a,b,y[5]);
    $display("a : %d, b: %d , XNOR output :%d", a,b,y[6]);
end
endmodule