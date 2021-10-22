// Code your design here
module HS(a,b,d,bo);
  
  input a,b;
  output d,bo;
  
  /*structural*/
  
  /*
 
  wire w1;
  xor(d,a,b);
  not(w1,a);
  and(bo,w1,b);
  
  */
  
  //dataflow
  
  /*
  assign d=a^b;
  assign bo=(~a)&b;
  */
  
  //Behavioral
  
  reg d,bo;
  always @(a or b)
    begin
       d = a^b;
      bo = (~a)&b;
      
    end
endmodule