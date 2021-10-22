// Code your design here
module ENC(y,a);
  input [3:0]y;
  output [1:0]a;
  
  //STRUCTURAL
  
  /*
  or(a[0],y[3],y[1]);
  or(a[1],y[3],y[2]);
  */
  
  //DATE FLOW
  
  /*
  assign a[0] = y[3]|y[1];
  assign a[1] = y[3]|y[2];
  */
  
  //BEHAVIORAL
  
  reg[1:0]a;
  always @ (y)
    begin
      a[0] = y[3]|y[1];
      a[1] = y[3]|y[2];
    end
endmodule