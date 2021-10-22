// Code your design here
module andgate(a, b, y);
  input a,b;
  output y;
  xor #(3,4,5)(y,a,b);
endmodule