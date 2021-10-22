module FS (A, B, C, D, Bo);
  input A, B, C;
  output D, Bo;
  assign Bo = (B & C) | ( ( ~A ) & ( B ^ C ) ) ;
  assign D  = ( A ^ ( B ^ C ) ) ;
endmodule