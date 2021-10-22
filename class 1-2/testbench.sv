module primitive_tb;
  reg ta, tb, tc;
  wire tout;
  integer i;
  comp dut( ta, tb, tc, tout);
  initial
    begin
      $monitor ( "TIME @ %2d:f(%b,%b,%b)=%b",$time, ta, tb, tc, tout);
      $dumpfile("dump.vcd");$dumpvars;
      for(i=0; i<8; i=i+1)
        begin
          {ta, tb, tc} = i;
          #5;
        end
       $finish;
    end
endmodule