// Code your testbench here
// or browse Examples
module TB_HS;
  
  reg ta,tb;
  wire td,tbo;

  HS dut(.a(ta), .b(tb), .d(td), .bo(tbo));
  
  initial
    begin
      
      $monitor("%d,%b,%b,%b,%b",$time,ta,tb,td,tbo);
      $dumpfile("dump.vcd"); $dumpvars;
      
      ta=0;
      tb=0;
      #5
      
      ta=0;
      tb=1;
      #5
      
      ta=1;
      tb=0;
      #5
      
      ta=1;
      tb=1;
      #5
      
      $finish;
    end

endmodule