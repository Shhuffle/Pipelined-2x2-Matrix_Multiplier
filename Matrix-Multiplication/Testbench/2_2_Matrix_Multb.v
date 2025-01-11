`include "2_2_Matrix_Mul.v"
 `timescale 1ns/1ps

module Matrixtb();
reg clk,rst;
initial begin
    clk = 0;
    rst = 0;
    forever #5 clk = ~clk;

end

Matrix_Mul Ml(.clk(clk),.rst(rst));

   initial begin
    $dumpfile("Matrixtb.vcd");
    $dumpvars(0,Matrixtb);

end
 
 initial begin
   #5 rst = 0;
   #10 rst = 1;
    #10000 $finish;
 end
endmodule