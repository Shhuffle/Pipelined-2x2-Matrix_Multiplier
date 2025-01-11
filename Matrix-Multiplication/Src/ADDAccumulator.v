module AddAccumulator(clk,A_E,B_G,C_E,D_G,A_F,B_H,C_F,D_H,C11,C12,C21,C22,rst);
input [15:0] A_E,B_G,C_E,D_G,A_F,B_H,C_F,D_H;
output reg[23:0] C11,C12,C21,C22;

input clk,rst;
always @(posedge clk)
begin
    if(rst) begin
        C11 = A_E + B_G;
        C12 = A_F + B_H;
        C21 = C_E + D_G;
        C22 = C_F + D_H;
    end
end
endmodule