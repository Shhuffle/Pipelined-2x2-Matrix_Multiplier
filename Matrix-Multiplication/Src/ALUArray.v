


module ALUArray(A_E,B_G,C_E,D_G,A_F,B_H,C_F,D_H,clk,rst,A,B,C,D,E,F,G,H);

input[7:0] A,B,C,D,E,F,G,H;
output reg[15:0] A_E,B_G,C_E,D_G,A_F,B_H,C_F,D_H;
input clk,rst;
always @(posedge clk) begin
    if(rst)  begin
        A_E <= A * E;
        B_G <= B * G;
        C_E <= C * E;
        D_G <= D * G;
        A_F <= A * F;
        B_H <= B * H;
        C_F <= C * F;
        D_H <= D * H;
    end
end
endmodule