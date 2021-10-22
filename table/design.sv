module comp (i1, i2, y);
  input i1,i2;
  output y;
  comparator call( y, i1, i2);
endmodule

primitive comparator (out, a, b);
input a, b;
output out;
table
  0 0 : 1 ;
  0 1 : 0 ;
  1 0 : 0 ;
  1 1 : 1 ;
endtable
endprimitive