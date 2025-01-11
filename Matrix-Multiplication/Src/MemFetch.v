`include "Mem1.v"
`include "Mem2.v"




module MemFetch(clk,rst,M1Out1,M1Out2,M2Out2,M2Out1,M1Out3,M1Out4,M2Out3,M2Out4);
input clk,rst;

reg[7:0] MC1,MC2,MC3,MC4;
output[7:0] M1Out1,M1Out2,M2Out2,M2Out1,M1Out3,M1Out4,M2Out3,M2Out4;





always @(posedge clk) begin
    if(rst) begin
        MC1 <= MC1 + 8'b00000100;                   //add 2 to the present memory to fetch the next memory data
        MC2 <= MC2 + 8'b00000100;
        MC3 <= MC3 + 8'b00000100;                   //add 2 to the present memory to fetch the next memory data
        MC4 <= MC4 + 8'b00000100;
        
    end 
    else begin
        MC1 <= 8'b00000000;
        MC2 <= 8'b00000001;
        MC3 <= 8'b00000010;
        MC4 <= 8'b00000011;
 
    end


end





//module Mem2(MC1,MC2,M2Out1,M2Out2);
Mem1 mem1(.MC1(MC1),
        .MC2(MC2),
        .MC3(MC3),
        .MC4(MC4),
        .M1Out1(M1Out1),
        .M1Out2(M1Out2),
        .M1Out3(M1Out3),
        .M1Out4(M1Out4),
        .clk(clk),
        .rst(rst));

Mem2 mem2(.MC1(MC1),
        .MC2(MC2),
        .MC3(MC3),
        .MC4(MC4),
        .M2Out1(M2Out1),
        .M2Out2(M2Out2),
        .M2Out3(M2Out3),
        .M2Out4(M2Out4),
        .clk(clk),
        .rst(rst));

endmodule



// module MemFetchtb();
// reg clk,rst;
// wire [7:0] MC1,MC2;
// wire[7:0] M1Out1,M1Out2,M2Out2,M2Out1;
// MemFetch MemFetch(.clk(clk),.MC1(),.MC2(),.rst(rst),.M1Out1(),.M1Out2(),.M2Out1(),.M2Out2());

//     initial begin
//         clk = 0;
//         forever #30 clk = ~ clk;
//     end
//     initial begin
//         rst = 0;
//         #50 rst = 1;
//         #790 rst = 0;
//     end

//     initial begin
//     $dumpfile("MemFetch.vcd");
//     $dumpvars(0,MemFetch);

// end


// endmodule