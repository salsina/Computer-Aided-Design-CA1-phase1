module adder(in1,in2,out);
input [7:0] in1,in2;
output [7:0] out;
wire [7:0] cout;

adder1bit A1(in1[0],in2[0],1'b0,out[0],cout[0]);
adder1bit A2(in1[1],in2[1],cout[0],out[1],cout[1]);
adder1bit A3(in1[2],in2[2],cout[1],out[2],cout[2]);
adder1bit A4(in1[3],in2[3],cout[2],out[3],cout[3]);
adder1bit A5(in1[4],in2[4],cout[3],out[4],cout[4]);
adder1bit A6(in1[5],in2[5],cout[4],out[5],cout[5]);
adder1bit A7(in1[6],in2[6],cout[5],out[6],cout[6]);
adder1bit A8(in1[7],in2[7],cout[6],out[7],cout[7]);


endmodule