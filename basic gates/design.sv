// Code your design here
module andgate(a, b, y);
  input a,b;
  output y;
  reg  y;// use only for behavioral
  /*reg is used because always is used*/
  
  //Structural
  //and(y,a,b);
  
  /*Data flow*/
  //assign y = a&b;
  
  /*Behavioral*/
  always @(a,b)
    y = ~(a);
  
endmodule