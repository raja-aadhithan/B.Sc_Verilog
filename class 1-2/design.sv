module comp(a, b, c, d, e, f, g, h, i, j, k, l, y);
  input a, b, c, d, e, f, g, h, i, j, k, l;
  output y;
  wire w1, w2, w3, x1, x2;
  loop1 dut ( w1, a, b, c, d);
  loop1 dut ( w2, e, f, g, h);
  loop1 dut ( w3, i, j, k, l);
  assign x1 = (w1 & w2);
  assign x2 = (w2 & w3);
  assign y = x1|x2;
endmodule 
primitive loop1 (n1, i1, i2, i3, i4);
  input i1, i2, i3, i4;
  output n1;
assign n1 = ((i1&i2)|(i3&i4));
endprimitive