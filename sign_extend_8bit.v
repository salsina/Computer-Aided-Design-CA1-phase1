module sign_extend_8bit(in,out);
input [3:0] in;
output [7:0] out;
assign out = {4'b0,in};

endmodule