// Code your design here
module FS(a,b,c,d,br);
  input a,b,c;
  output d,br;
  
  //structural
   
  /*
  wire w1,w2,w3,w4,w5;
  xor(w1,a,b);
  xor(d,w1,c);
  not(w2,w1);
  and(w3,w2,c);
  not(w4,a);
  and(w5,w4,b);
  or(br,w5,w3);
  */
  
  //Data Flow
  
  /*
  assign d = (a^b)^c;
  assign br = (~(a^b)&c)|(~a&b);
  */
  
  //Behavioral
  
  reg d,br;
  always @ (a or b or c)
    begin
      d = (a^b)^c;
      br = (~(a^b)&c)|(~a&b);
    end
  
endmodule