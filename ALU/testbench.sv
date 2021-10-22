// Code your testbench here
// or browse Examples
module tb_ALU;
  reg [3:0]ta;
  reg [3:0]tb;
  reg [1:0]to;
  wire [7:0]tp;
  ALU dut(.a(ta), .b(tb), .o(to), .p(tp));
  
   initial begin
     $dumpfile("dump.vcd"); $dumpvars; 
     ta <=4'b0000;
     tb<= 4'b1111;
    to <= 2'b00; 
   
    #20;
    
    to <= 2'b01; 
   
    #20; 
     
     to <= 2'b10; 
   
    #20; 
     
     o <= 2'b11; 
   
    #20;
    
    $finish;
    
    end 
  
  
endmodule 