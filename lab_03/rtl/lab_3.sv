module lab_3(
 input logic a,
 input logic b,
 input logic c,
 output logic sum,
 output logic carry
 );
 assign sum = ~c ^ (a|b); 
 assign carry = (a|b) & (~(a&b)^(a|b));
 endmodule 