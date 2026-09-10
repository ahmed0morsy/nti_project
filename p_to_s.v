//parametrized width for the input
module p_to_s #(parameter width=20)
(
input wire clk,
input wire rst_n,
input wire [width-1:0] parallel_in,
input wire en,
output wire serial_out,
output reg ser_done_p

);
 reg [width-1:0]store;
 reg [4:0] count;
 reg valid1;
always@(posedge clk,negedge rst_n)
begin
    if (rst_n==1'b0)
    begin
    valid1<=1'b0;
    count<='b0;
    store<='b0;
    end
    else 
begin
if(en==1'b1)
    begin
    valid1<=1'b1;
    store<=parallel_in;
    count<='b0;
    end
      else if(valid1==1'b1)
      begin
      store<={1'b0,store[width-1:1]};
      count<=count+1;
         if (count==width-1)
         
         valid1<=1'b0;
         
         end

end
end
always@(*)
begin
if (count==width-1)
         ser_done_p=1'b1;
else
         ser_done_p=1'b0;
end
assign serial_out=store[0];
endmodule


