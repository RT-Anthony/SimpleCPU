module Data_Memory (
input clk, MemRead, MemWrite,
input [31:0] ALUOut, reg2data,
output reg [31:0] memout);
reg [31:0] memory[199:0];

always @ (ALUOut, MemRead)
begin
if (MemRead == 1) memout = memory[ALUOut];
end
always @(posedge clk)
begin
if (MemWrite ==1) memory[ALUOut] <= reg2data;
end
endmodule