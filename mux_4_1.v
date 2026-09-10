module mux4_1#(parameter width=2)
(
input wire in0,
input wire in1,
input wire in2,
input wire in3,
input wire [width-1:0]sel,
output reg out
);
always@(*)
begin
case(sel)
2'b00: out=in0;
2'b01: out=in1;
2'b10: out=in2;
2'b11: out=in3;
endcase
end
endmodule

