module Mem2(MC1,MC2,MC4,MC3,M2Out1,M2Out2,M2Out3,M2Out4,clk,rst);
input clk,rst;
input[7:0] MC1,MC2,MC3,MC4;
output reg[7:0] M2Out1,M2Out2,M2Out3,M2Out4;


reg [7:0] Memory2 [1023:0];




always @(posedge clk) begin
if(rst) begin
    M2Out1 <= Memory2[MC1];
    M2Out2 <= Memory2[MC2];
    M2Out3 <= Memory2[MC3];
    M2Out4 <= Memory2[MC4];
end
else begin
    M2Out1 <= Memory2[0];
    M2Out2 <= Memory2[1];
    M2Out3 <= Memory2[2];
    M2Out4 <= Memory2[3];
end
end








initial begin
Memory2[0]  = 8'b00010001; // 17
Memory2[1]  = 8'b00010010; // 18
Memory2[2]  = 8'b00010011; // 19
Memory2[3]  = 8'b00010100; // 20
Memory2[4]  = 8'b00010101; // 21
Memory2[5]  = 8'b00010110; // 22
Memory2[6]  = 8'b00010111; // 23
Memory2[7]  = 8'b00011000; // 24
Memory2[8]  = 8'b00011001; // 25
Memory2[9]  = 8'b00011010; // 26
Memory2[10] = 8'b00011011; // 27
Memory2[11] = 8'b00011100; // 28
Memory2[12] = 8'b00011101; // 29
Memory2[13] = 8'b00011110; // 30
Memory2[14] = 8'b00011111; // 31
Memory2[15] = 8'b00100000; // 32

end
endmodule