// Code your testbench here
// or browse Examples
module FS_TB;
  reg ta,tb,tc;
  wire td,tbr;
  integer i;
  
  FS uut(.a(ta), .b(tb), .c(tc), .d(td), .br(tbr));
  
  initial
    begin
      $monitor("Time = %2d,%b,%b,%b,%b,%b",$time,ta,tb,tc,td,tbr);
      $dumpfile("dump.vcd"); $dumpvars;
      
      for (i=0; i<8; i=i+1)
        begin
          {ta, tb, tc} = i;
          #5;
        end
      $finish;
    end
endmodule