module uart_tx #(parameter width_u=8)
(
input wire clk,
input wire rst_n,
input wire par_typ,
input wire par_en,
input wire [width_u-1:0]data,
input wire data_valid,

output wire tx_out,
output wire busy
);
wire ser_done1;
wire serial_out;
wire en;

wire [1:0]mux_sel;
wire in_0;//start
wire in_1;//data
wire in_2;//paraty
wire in_3;//stop
wire paraty_out;

assign in_0=1'b0;
assign in_1=serial_out;
assign in_2=paraty_out;
assign in_3=1'b1;


p_to_s #(.width(8))ins1(.clk(clk),.rst_n(rst_n),.parallel_in(data),.en(en),.serial_out(serial_out),.ser_done_p(ser_done1));
paraty_calc #(.m1 (8)) ins2(.inpot(data),.even_or_odd(par_typ),.paraty_out(paraty_out));
fsm_tx#(.width_sel(2),.width_fli(3)) ins3(.clk(clk),.rst_n(rst_n),.par_en(par_en),.ser_done(ser_done1),.data_valid(data_valid),.mux_sel(mux_sel),.busy(busy),.ser_en(en));
mux4_1#(.width(2)) ins4(.sel(mux_sel),.in0(in_0),.in1(in_1),.in2(in_2),.in3(in_3),.out(tx_out));
endmodule
