// Code your testbench here
// or browse Examples
module As;
  reg ta,tb,tc,td;
  wire ty;
  integer i;
  
  fs dut(.a(ta), .b(tb), .c(tc), .d(td), .y(ty));
  
  initial
    begin
      $monitor("Time=%2d, A=%b, B=%b, C=%b, D=%b, Y=%b",
               $time,ta,tb,tc,td,ty);
      $dumpfile("dump.vcd"); 
      $dumpvars;
      
      for (i=0; i<16; i=i+1)
        begin
          {ta,tb,tc,td}=i;
          #5;
        end
      $finish;
    end
endmodule