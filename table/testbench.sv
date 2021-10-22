module primitive_tb;
  reg ta, tb;
  wire tout;
  integer i;
  comp dut( ta, tb, tout);
  initial
    begin
      $monitor ( "TIME @ %2d:f(%b,%b)=%b",$time, ta, tb, tout);
      $dumpfile("dump.vcd");$dumpvars;
      for(i=0; i<4; i=i+1)
        begin
        {ta, tb} = i;
          #5;
        end
       $finish;
    end
endmodule