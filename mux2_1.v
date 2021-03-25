module mux2_1(in1,in2,s,out);
input [1:0] in1,in2;
input s;
output [1:0] out;

wire not_s,and1_1out,and1_0out,and2_1out,and2_0out;
not not1(not_s,s);

and and1_1(and1_1out,s,in1[1]);
and and1_0(and1_0out,s,in1[0]);
and and2_1(and2_1out,not_s,in2[1]);
and and2_0(and2_0out,not_s,in2[0]);

or or1(out[1],and1_1out,and2_1out);
or or2(out[0],and1_0out,and2_0out);
endmodule