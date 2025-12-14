module shiftreg_2bit(input clk,rst,d,output reg q,q0);
  always @(posedge clk or negedge rst)
    begin
      if(~rst)
        begin
        q<=0;
        q0<=0;
        end
      else
        begin
          q0<=d;
          q<=q0;
        end
    end
endmodule
      
