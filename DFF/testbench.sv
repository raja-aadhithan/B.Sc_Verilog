// Code your testbench here
// or browse Examples
module tb_DFF();
  reg D;
  reg clk;
  // reg reset;
  wire Q;
  
  DFF dut(D,clk,Q);
  
  initial begin
    clk=1;
    
    forever #10 clk = ~clk;  
    
    end 
  
  initial begin 
    
    $dumpfile("dump.vcd"); $dumpvars; 
    
    /* reset=1;
    D <= 0;
    #100;
    
    reset=0; */
    D <= 1; 
    #30;
    
    D <= 0;
    #30;
    
    D <= 1;
    #30;
    
    #5;
    $finish;
    
    end 
  
  
endmodule 