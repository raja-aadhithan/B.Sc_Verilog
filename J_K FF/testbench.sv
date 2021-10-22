module tb_DFF();
  reg J , K;
  reg clk;
  wire Q;
  
  DFF dut(J,K,clk,Q);
  
  
  initial begin
    clk=1;
    $monitor("Time = %2d,%b,%b,%b",$time,J,K,Q);
    forever #10 clk = ~clk;  
    
    end 
  
  initial begin 
    
    $dumpfile("dump.vcd"); $dumpvars; 
    
    
    J <= 0; 
    K <= 0; 
    #20;
    
    J <= 0; 
    K <= 1; 
    #20;
        
    J <= 1; 
    K <= 0; 
    #20;
        
    J <= 1; 
    K <= 1; 
    #20;
    
    
    $finish;
    
    end 
  
  
endmodule 