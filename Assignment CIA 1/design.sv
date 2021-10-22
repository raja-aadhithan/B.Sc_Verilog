// Code your design here
module fs(a,b,c,d,y);
  input a,b,c,d;
  output y;
  
  /*
  wire w1,w2,w3,w4,n1,n2,n3;
  not(n1,b);
  not(n2,c);
  not(n3,d);
  or(w1,a,n2);
  or(w2,n2,d);
  or(w3,b,c,n3);
  or(w4,a,n1,d);
  and(y,w1,w2,w3,w4);
  */
  
  /*
  assign y = (a|(~c))&((~c)|d)&(b|c|(~d))&(a|(~b)|d);
  */
  
  reg y;
  always @ (a or b or c or d)
    begin
      y = (a|~c)&(~c|d)&(b|c|~d)&(a|~b|d);
    end
  
endmodule
