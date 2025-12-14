module synerror(input clk,rst,d,output q0,q);
  always @(posedge clk or negedge rst)
    begin
      if(~rst)
        begin
          q0=0;
          q=0;
        end
      else
        begin
          q0=d;
          q=q0;
        end
    end
endmodule
