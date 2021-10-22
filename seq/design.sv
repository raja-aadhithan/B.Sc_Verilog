// Code your design here
module seq(a,i,y,o);
  input [2:0]a;
  output [2:0]y;
  input i;
  output o;
  assign y[2] = i & ((a[2]&(~a[1])&(~a[0]) ) | (~a[2]&(a[1])&(a[0])) );
  assign y[1] = (i&(~a[2])) & ( a[1] ^ a[0]);
  assign y[0] = i & (~a[2]) & (~a[0]) ;
  assign o = i & (a[2]) & (~a[1]) & (~a[0]) ;
endmodule