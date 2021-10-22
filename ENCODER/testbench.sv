// Code your testbench here
// or browse Examples
module TENC;
  reg [3:0]ty;
  wire [1:0]ta;
  integer j;
  
  ENC dut( .y(ty), .a(ta));
  
  initial
    begin
      $monitor("@ time : %2dns input is: %b and output is:%b",
               $time,ty,ta);
      $dumpfile("dump.vcd"); $dumpvars;
      for (j=0; j<4; j=j+1)
        begin
          {ty[3],ty[2],ty[1],ty[0]}=2**j;
          #5;
        end
      $finish;
    end 
endmodule