module Mem1(MC1,MC2,MC3,MC4,M1Out1,M1Out2,M1Out3,M1Out4,clk,rst);
input clk,rst;
input[7:0] MC1,MC2,MC3,MC4;
output reg[7:0] M1Out1,M1Out2,M1Out3,M1Out4;


reg [7:0] Memory1 [1023:0];

always @(posedge clk) begin
if(rst)
begin
M1Out1 <= Memory1[MC1];
M1Out2 <= Memory1[MC2];
M1Out3 <= Memory1[MC3];
M1Out4 <= Memory1[MC4];
end
else 
begin
    M1Out1 <= Memory1[0];
    M1Out2 <= Memory1[1];
    M1Out3 <= Memory1[2];
    M1Out4 <= Memory1[3];
end
end

initial begin
 Memory1[0]  = 8'b00000001; // 1
Memory1[1]  = 8'b00000010; // 2
Memory1[2]  = 8'b00000011; // 3
Memory1[3]  = 8'b00000100; // 4
Memory1[4]  = 8'b00000101; // 5
Memory1[5]  = 8'b00000110; // 6
Memory1[6]  = 8'b00000111; // 7
Memory1[7]  = 8'b00001000; // 8
Memory1[8]  = 8'b00001001; // 9
Memory1[9]  = 8'b00001010; // 10
Memory1[10] = 8'b00001011; // 11
Memory1[11] = 8'b00001100; // 12
Memory1[12] = 8'b00001101; // 13
Memory1[13] = 8'b00001110; // 14
Memory1[14] = 8'b00001111; // 15
Memory1[15] = 8'b00010000; // 16

end
endmodule