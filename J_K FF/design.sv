module DFF(J, K, clk, Q);
  input J, K ; 
  input clk; 
  output reg Q; 
  
  always @(clk) 
    begin
      case ({J, K})
       
        2'b00:
        
          Q <= Q ;
        
        
        2'b01:
        
          Q <= 0 ;
        
        
        
        2'b10:
        begin
          Q <= 1 ;
        end
        
        
        2'b11:
        begin
          Q <= ~Q ;
        end
      endcase
    end 
  
endmodule 