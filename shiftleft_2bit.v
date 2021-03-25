module shiftleft_2bit(in,out);
input [7:0] in;
output [7:0] out;

assign out = {in[5:0],2'b00};

endmodule