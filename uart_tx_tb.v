module uart_tx_tb #(parameter width_u=8);

reg clk_tb;
reg rst_n_tb;
reg par_typ_tb;
reg par_en_tb;
reg [width_u-1:0]data_tb;
reg data_valid_tb;
 wire tx_out_tb;
 wire busy_tb;

initial begin 

clk_tb=0;
forever 
begin #2.5
clk_tb=~clk_tb;
end
end

uart_tx #(.width_u(8))dut(.clk(clk_tb),.rst_n(rst_n_tb),.par_typ(par_typ_tb),.par_en(par_en_tb),.data(data_tb),.data_valid(data_valid_tb),.tx_out(tx_out_tb),.busy(busy_tb));
initial
begin
rst_n_tb=1'b0;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);
//start
rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b0;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b0;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);

rst_n_tb=1'b1;par_typ_tb=1'b1;par_en_tb=1'b0;data_tb=8'b10111011;data_valid_tb=1'b1;#5;

$display("rst_n_tb=%b par_typ_tb=%b par_en_tb=%b data_tb=%b data_valid_tb=%b tx_out_tb=%b busy_tb=%b",rst_n_tb,par_typ_tb,par_en_tb,data_tb,data_valid_tb,tx_out_tb,busy_tb);




end


endmodule