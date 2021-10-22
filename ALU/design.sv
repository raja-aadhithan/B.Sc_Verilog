// Code your design here
module ALU(a,b,o,p);
  input [3:0]a;
  input [3:0]b;
  input [1:0]o;
  output reg [7:0]p;
  
  always @ ( a, b, o)
    begin
      case(o)
        2'b00:
        begin
          p = a + b;
        end
        2'b01:
           p = a * b;
        2'b10:
           p = a % b;
        2'b11:
        	p = a & b;
      endcase
    end
endmodule