`timescale 1ns / 1ps
module alu_stimuli(
    );
    reg [7:0]a,b;
    reg [3:0]alu_select;
    wire [7:0]alu_out;
    wire carry_out;
    integer i;
    alu uut(.a(a),.b(b),.alu_select(alu_select),.carry_out(carry_out),.alu_out(alu_out));
    
    initial
    begin
    alu_select=4'b0000;
    a=8'd150;
    b=8'd142;
    for(i=0;i<=15;i=i+1)
    begin
    alu_select=alu_select+4'd1;
    #10;
    end
    $finish() ; 
    end 
endmodule
