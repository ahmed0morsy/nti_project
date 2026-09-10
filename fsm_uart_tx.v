//fsm for uart(tx)
module fsm_tx#(parameter width_sel=2,parameter width_fli=3)
(
input wire clk,
input wire rst_n,
input wire par_en,
input wire ser_done,
input wire data_valid,
output reg [width_sel-1:0]mux_sel,
output reg busy,
output reg ser_en
);
parameter idle=3'b000;
parameter start=3'b001;
parameter data=3'b010;
parameter paraty_bit=3'b011;
parameter stop=3'b100;
reg [width_fli-1:0]cs,ns;
//state logic
always@(posedge clk,negedge rst_n)
begin
if(rst_n==1'b0)
cs<=idle;
else
cs<=ns;
end
//next state logic
always@(*)
begin
    ns= idle;
    busy= 1'b0;
    mux_sel = 2'b11;
ser_en=1'b0;
case(cs)
idle:begin
busy=1'b0;
if(data_valid==1)
ns=start;
else
ns=idle;
end
start:begin
ser_en=1'b1;
ns=data;
mux_sel = 2'b00;
busy=1'b1;
end
data:begin
ser_en=1'b0;
busy=1'b1;
 mux_sel = 2'b01;
if(ser_done)
    begin
   if(par_en==1)
ns=paraty_bit;
   else
ns=stop;
   end
else
ns=data;
end
paraty_bit:begin
 ns=stop;
mux_sel = 2'b10;
busy=1'b1;
end
stop:begin
 ns=idle;
 mux_sel = 2'b11;
busy=1'b1;
end
default:begin
 ns=idle;
 mux_sel = 2'b11;
end
endcase
end
//output
/*always@(posedge clk,negedge rst_n)
begin
if (!rst_n)   
        ser_en <= 1'b0;
else if(cs==start)
ser_en<=1'b1;
else 
ser_en<=1'b0;
end
*/
endmodule

