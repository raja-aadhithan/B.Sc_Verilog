// Code your design here
module mux(a,b,s,y);
  input a,b,s;
  output y;
  assign y=(s)?a:b;
endmodule