//can show even or odd paraty
module paraty_calc #(parameter m1 = 8)
(
   
    input wire [m1-1:0]inpot,
    
    input wire even_or_odd,

    output wire paraty_out
    
);


 assign paraty_out = paraty1(inpot,even_or_odd);



function paraty1(input [m1-1:0] in_a,input paraty_type);
   
    begin
if (paraty_type==0)

        paraty1 = ^in_a;
else
        paraty1 = ~^(in_a);

    end
endfunction

endmodule

