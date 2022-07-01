module D_ff(D,clk,Rst,Q,Qb);
   input D,clk,Rst;
   output reg Q;
   output Qb;
   always @ (posedge clk)
      begin
          if(Rst==1)
            Q<=0;
          else
            Q<=D;
      end
endmodule