module TB_FS;
  reg ta, tb, tc;
  wire td, tbo;
  integer i;
  FS dut(.A(ta), .B(tb), .C(tc), .D(td), .Bo(tbo));
  initial
    begin
      $monitor("time @ %2d- ip %b %b %b - op %b %b", $time, ta, tb, tc, tbo, td );
      $dumpfile("dump.vcd");
      $dumpvars;
      for ( i = 0 ; i < 8 ; i = i+1 )
      begin
        {ta, tb, tc } = i ;
        #5;
      end
      $finish;
    end
endmodule