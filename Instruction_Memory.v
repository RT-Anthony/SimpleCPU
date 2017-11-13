module Instruction_Memory (
input [31:0] PC,
output reg [31:0] inst);
// reg [7:0] memory[199:0];
reg[31:0] memory[199:0];   

always @ (PC)
//inst = {memory[PC],memory[PC+1],memory[PC+2],memory[PC+3]);
inst = memory[PC];
endmodule