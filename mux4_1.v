module mux4_1(in1,in2,in3,in4,sel,out);
input [7:0] in1,in2,in3,in4;
input [1:0] sel;
output [7:0] out;

wire[7:0] muxin1_out,muxin2_out;
mux2_1_8bit muxin1(in1,in2,sel[0],muxin1_out);
mux2_1_8bit muxin2(in3,in4,sel[0],muxin2_out);
mux2_1_8bit muxout(muxin1_out,muxin2_out,sel[1],out);

endmodule