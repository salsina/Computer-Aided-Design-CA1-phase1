module mult4_4(clk,rst,in1,in2,Asel,Bsel,ans_sel,out);
input[3:0] in1,in2;
input clk,Asel,Bsel,rst;
output [7:0] out;
input [1:0] ans_sel;

wire [1:0] mux_A_out,mux_B_out;
wire [3:0] mult2_2out;
wire [7:0] SE_out,shl2_out,shl4_out,adder_out,mux_ans_out;

reg[1:0] reg1_1 ;
reg[1:0] reg1_0 ;
reg[1:0] reg2_1 ;
reg[1:0] reg2_0 ;

always@(posedge clk)begin
reg1_1 = in1[3:2];
reg1_0 = in1[1:0];
reg2_1 = in2[3:2];
reg2_0 = in2[1:0];
end

mux2_1 mux_A(reg1_1,reg1_0,Asel,mux_A_out);
mux2_1 mux_B(reg2_1,reg2_0,Bsel,mux_B_out);

mult2_2 multiplier(mux_A_out,mux_B_out,mult2_2out);

sign_extend_8bit SE(mult2_2out,SE_out);

shiftleft_2bit shl2(SE_out,shl2_out);
shiftleft_4bit shl4(SE_out,shl4_out);

mux4_1 mux_ans(8'b0,shl4_out,shl2_out,SE_out,ans_sel,mux_ans_out);

flipflop result(adder_out,clk,rst,out);
adder adder_8bit(mux_ans_out,out,adder_out);


endmodule