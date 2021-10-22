// Code your testbench here
// or browse Examples
module tmux;
  reg ts1,ts2,t1,t2,t3,t4;
  wire ty;
  integer i;
  integer j;
  MUX uut(.s1(ts1), .s2(ts2), .i1(t1), .i2(t2), .i3(t3), .i4(t4), .y(ty));
  initial
    begin
      $monitor("Time = %2d,%b,%b,%b,%b,%b,%b,%b",
               $time,ts1,ts2,t1,t2,t3,t4,ty);
      $dumpfile("dump.vcd"); $dumpvars;
      for(j=0; j<4; j=j+1)
       begin
         {t4,t3,t2,t1}=2**j;
           for (i=0; i<4; i=i+1)
            begin
              {ts1,ts2}=i;
            #5;
           end
       end
      $finish;
    end
endmodule