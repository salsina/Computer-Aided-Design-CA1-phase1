module controller(clk,rst,start,Asel,Bsel,ans_sel,resultRes);
input clk,rst,start;
output wire Asel,Bsel,resultRes;
output wire[1:0] ans_sel;

wire a,b,c,not_a,not_b,not_c;
wire Bsel_1,Bsel_2,ans_sel_0_1,ans_sel_0_2;
wire ns_a,ns_b,ns_c;
wire ns_a_1,ns_a_2,ns_b_1,ns_b_2,ns_c_1,ns_c_2,ns_c_3;

not not1(not_a,a);
not not2(not_b,b);
not not3(not_c,c);

and and1(resultRes,not_a,not_b,c);//result res

and and2(Asel,a,not_b);//Asel

and and3(Bsel_1,not_a,b,c);
and and4(Bsel_2,a,not_b,c);
or or1(Bsel,Bsel_1,Bsel_2);//Bsel

and and5(ans_sel[1],a,not_b,c);//ans_sel[1]
and and6(ans_sel_0_1,not_a,b,c);
and and7(ans_sel_0_2,a,not_b,not_c);
or or2(ans_sel[0],ans_sel_0_1,ans_sel_0_2);//ans_sel[0]

and and8(ns_a_1,not_a,b,c);
and and9(ns_a_2,a,not_b,not_c);
or or3(ns_a,ns_a_1,ns_a_2);//A'

and and10(ns_b_1,not_a,b,not_c);
and and11(ns_b_2,not_a,not_b,c);
or or4(ns_b,ns_b_1,ns_b_2);//B'

and and12(ns_c_1,not_a,b,not_c);
and and13(ns_c_2,not_c,start,not_a);
and and14(ns_c_3,a,not_b,not_c);
or or5(ns_c,ns_c_1,ns_c_2,ns_c_3);//C'

dff dff1 (clk, rst, ns_a, a);
dff dff2 (clk, rst, ns_b, b);
dff dff3 (clk, rst, ns_c, c);

endmodule