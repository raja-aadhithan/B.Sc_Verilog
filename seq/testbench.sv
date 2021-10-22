// Code your testbench here
// or browse Examples
module TENC;
  reg [2:0]ta;
  reg ti;
  wire to;
  wire [2:0]ty;
  integer j;
  
  seq dut(.i(ti), .o(to), .y(ty), .a(ta));
  
  initial
    begin
      $monitor("Time = %2d,%b,%b,%b,%b,%b,%b,%b,%b",
               $time,ti,ta[2],ta[1],ta[0],ty[2],ty[1],ty[0],to);
      $dumpfile("dump.vcd"); $dumpvars;
      for (j=0; j<5; j=j+1)
        begin
          {ti,ta[2],ta[1],ta[0]}=j;
          #5;
        end
      for (j=8; j<13; j=j+1)
        begin
          {ti,ta[2],ta[1],ta[0]}=j;
          #5;
        end
      $finish;
    end 
endmodule