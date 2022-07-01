module D_ff_tb();
   reg D,clk,Rst;
   wire Q,Qb;
   D_ff DUT (D,clk,Rst,Q,Qb);
   always
     begin
       clk <= 0;
       #5;
       clk <=1;
       #5;
     end
   task Rst_tsk(input a);
     begin
         @(negedge clk)
         Rst <= a;
     end
   endtask
   initial 
      begin
          Rst_tsk(1);
          #20;
          Rst_tsk(0);
          #20;
      end
endmodule
