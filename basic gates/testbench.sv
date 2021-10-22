// Code your testbench here
// or browse Examples

module andgate_tb;
  wire tb_y;
  reg tb_a,tb_b;
  
  andgate any_label(.a(tb_a), .b(tb_b), .y(tb_y) );
  
  initial
    begin
      $monitor(tb_a, tb_b, tb_y);
      $dumpfile("dump.vcd"); $dumpvars;
      
      tb_a = 1'b0;
      tb_b = 1'b0;
      #5
      
      tb_a = 1'b0;
      tb_b = 1'b1;
      #5
      
      tb_a = 1'b1;
      tb_b = 1'b0;
      #5
      
      tb_a = 1'b1;
      tb_b = 1'b1;
      #5
      
      $finish;
    end
endmodule
    