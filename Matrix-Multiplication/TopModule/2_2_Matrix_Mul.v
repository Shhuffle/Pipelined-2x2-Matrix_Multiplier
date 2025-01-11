`include "ADDAccumulator.v"
`include "ALUArray.v"
`include "MemFetch.v"




//module AddAccumulator(clk,A_E,B_G,C_E,D_G,A_F,B_H,C_F,C_H,C11,C12,C21,C22)





module Matrix_Mul(clk,rst);
input clk,rst;
wire [7:0] M1Out1_top,M1Out2_top,M2Out2_top,M2Out1_top,M1Out3_top,M1Out4_top,M2Out3_top,M2Out4_top;

wire [15:0] A_E_top, B_G_top, C_E_top, D_G_top, A_F_top, B_H_top, C_F_top, D_H_top;
wire [23:0] C11_top,C12_top,C21_top,C22_top;
//module MemFetch(clk,MC1,MC2,MC3,MC4,rst,M1Out1,M1Out2,M2Out1,M2Out2);


MemFetch MF(.clk(clk),
            .rst(rst),
            .M1Out1(M1Out1_top),
            .M1Out2(M1Out2_top),
            .M2Out2(M2Out2_top),
            .M2Out1(M2Out1_top),
            .M1Out3(M1Out3_top),
            .M1Out4(M1Out4_top),
            .M2Out3(M2Out3_top),
            .M2Out4(M2Out4_top));




//module ALUArray(A_E,B_G,C_E,D_G,A_F,B_H,C_F,C_H,clk,rst,A,B,C,D,E,F,G,H);

ALUArray AA(
    .A_E(A_E_top),
    .B_G(B_G_top),
    .C_E(C_E_top),
    .D_G(D_G_top),
    .A_F(A_F_top),
    .B_H(B_H_top),
    .C_F(C_F_top),
    .D_H(D_H_top),
    .clk(clk),
    .rst(rst),
    .A(M1Out1_top),
    .B(M1Out2_top),
    .C(M1Out3_top),
    .D(M1Out4_top),
    .E(M2Out1_top),
    .F(M2Out2_top),
    .G(M2Out3_top),
    .H(M2Out4_top)
);

//module AddAccumulator(clk,A_E,B_G,C_E,D_G,A_F,B_H,C_F,C_H,C11,C12,C21,C22);

AddAccumulator Ad(
    .rst(rst),
        .clk(clk),
        .A_E(A_E_top),
        .B_G(B_G_top),
        .C_E(C_E_top),
        .D_G(D_G_top),
        .A_F(A_F_top),
        .B_H(B_H_top),
        .C_F(C_F_top),
        .D_H(D_H_top),
        .C11(C11_top),
        .C12(C12_top),
        .C21(C21_top),
        .C22(C22_top));


endmodule