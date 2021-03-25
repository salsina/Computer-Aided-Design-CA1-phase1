module tb();
reg clk,rst,start;
wire Asel,Bsel,resultRes;
reg[3:0] in1,in2;
wire[1:0] ans_sel;
wire[7:0] out;
reg correct_answer;
mult4_4 multiplier4_4(clk,resultRes,in1,in2,Asel,Bsel,ans_sel,out);
controller cntlr(clk,rst,start,Asel,Bsel,ans_sel,resultRes);
always@(*)begin
  if(out == (in1*in2))
    correct_answer = 1;
else  correct_answer = 0;
end
initial begin
    #10 rst = 1;
    #10 rst = 0;
    start = 0;
    in1 = 12;
    in2 = 9;
    #10 start = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    start = 0;
    repeat(20)#10 clk = ~clk;

    #10 rst = 1;
    #10 rst = 0;
    start = 0;
    in1 = 7;
    in2 = 4;
    #10 start = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    start = 0;
    repeat(20)#10 clk = ~clk;

    #10 rst = 1;
    #10 rst = 0;
    start = 0;
    in1 = 4;
    in2 = 5;
    #10 start = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    start = 0;
    repeat(20)#10 clk = ~clk;

    #10 rst = 1;
    #10 rst = 0;
    start = 0;
    in1 = 8;
    in2 = 3;
    #10 start = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    start = 0;
    repeat(20)#10 clk = ~clk;

    #10 rst = 1;
    #10 rst = 0;
    start = 0;
    in1 = 10;
    in2 = 12;
    #10 start = 1;
    #10 clk = 0;
    #10 clk = 1;
    #10 clk = 0;
    #10 clk = 1;
    start = 0;
    repeat(20)#10 clk = ~clk;
end

endmodule