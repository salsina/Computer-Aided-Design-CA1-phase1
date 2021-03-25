module flipflop(in,clk,rst,out);
input clk,rst;
input [7:0] in;
output reg[7:0] out;
always@(posedge clk,rst) begin
  if(rst) out <= 8'b0;
  else out <= in;
end

endmodule