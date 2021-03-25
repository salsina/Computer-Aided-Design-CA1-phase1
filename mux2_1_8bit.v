module mux2_1_8bit(in1,in2,s,out);
input [7:0] in1,in2;
input s;
output [7:0] out;

wire not_s;
wire[7:0] and1out,and2out;

not no1(not_s,s);
and and1_7(and1out[7],s,in1[7]);
and and1_6(and1out[6],s,in1[6]);
and and1_5(and1out[5],s,in1[5]);
and and1_4(and1out[4],s,in1[4]);
and and1_3(and1out[3],s,in1[3]);
and and1_2(and1out[2],s,in1[2]);
and and1_1(and1out[1],s,in1[1]);
and and1_0(and1out[0],s,in1[0]);

and and2_7(and2out[7],not_s,in2[7]);
and and2_6(and2out[6],not_s,in2[6]);
and and2_5(and2out[5],not_s,in2[5]);
and and2_4(and2out[4],not_s,in2[4]);
and and2_3(and2out[3],not_s,in2[3]);
and and2_2(and2out[2],not_s,in2[2]);
and and2_1(and2out[1],not_s,in2[1]);
and and2_0(and2out[0],not_s,in2[0]);

or or7(out[7],and1out[7],and2out[7]);
or or6(out[6],and1out[6],and2out[6]);
or or5(out[5],and1out[5],and2out[5]);
or or4(out[4],and1out[4],and2out[4]);
or or3(out[3],and1out[3],and2out[3]);
or or2(out[2],and1out[2],and2out[2]);
or or1(out[1],and1out[1],and2out[1]);
or or0(out[0],and1out[0],and2out[0]);


endmodule