module shiftleft_4bit(in,out);
input [7:0] in;
output [7:0] out;

assign out = {in[3:0],4'b0000};

endmodule