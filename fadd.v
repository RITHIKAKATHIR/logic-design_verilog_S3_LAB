module fadd(s,cout,d,e,cin);  input d,e,cin;
  output s,cout;  assign s = (d ^ e ^ cin);  assign cout = ((d&e) | (e&cin) | (d&cin));endmodule