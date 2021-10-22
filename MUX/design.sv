// Code your design here
module MUX(s1,s2,i1,i2,i3,i4,y);
  input s1,s2,i1,i2,i3,i4;
  output y;
  
  //STRUCTURAL
  
  /*
  wire w1,w2,w3,w4,n1,n2;
  not(n1,s1);
  not(n2,s2);
  and(w1,i1,n1,n2);
  and(w2,i2,n1,s2);
  and(w3,i3,s1,n2);
  and(w4,i4,s1,s2);
  or(y,w1,w2,w3,w4);
  */
  
  //DATA FLOW
  
  /*
  assign y = (((~s2) & (~s1) & i1)| ( (~s1) & s2 & i2)|(s1 & (~s2) & i3)|(s2 & s1 & i4));
  */
  
  //BEHAVIOURAL
  
  
  reg y;
  always @ (s1 or s2 or i1 or i2 or i3 or i4)
    begin
      y = (((~s2) & (~s1) & i1)| ( (~s1) & s2 & i2)|(s1 &       		(~s2) & i3)|(s2 & s1 & i4));
    end
  
  
endmodule