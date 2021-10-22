module tb;
  reg a,b,s;
  wire y;
  int i;
  mux uut(.a(a), .b(b), .s(s), .y(y));
 $monitor("%d,%b,%b,%b,%b",$time,a,b,s,y);
     initial begin
       for (i=0,i<8,i++)
       {s,a,b}=i;
     end
endmodule