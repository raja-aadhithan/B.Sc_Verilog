// Code your testbench here
// or browse Examples
module TENC;
  reg [7:0]ty;
  wire [2:0]ta;
  integer j;
  
  ENC dut( .y(ty), .a(ta));
  
  initial
    begin
      $monitor("Time = %2d,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b,%b",
               $time,ty[7],ty[6],ty[5],ty[4],ty[3],ty[2],ty[1],ty[0],ta[2],ta[1],ta[0]);
      $dumpfile("dump.vcd"); $dumpvars;
      for (j=0; j<8; j=j+1)
        begin
          {ty[7],ty[6],ty[5],ty[4],ty[3],ty[2],ty[1],ty[0]}=2**j;
          #5;
        end
      $finish;
    end 
endmodule