module add_two_values_function(
    input [3:0] ain, bin,
	output reg [4:0] sum
    );
    
    function [1:0] full_add;
       input a,b;
       input cin;
       begin
           full_add[0]=a^b^cin;
           full_add[1]=(a&b)|((a^b)&cin);
       end
     endfunction
        
    function [4:0] add_two_values;
        input [3:0] a,b;
        reg c[3:0];
        begin
            {c[0],add_two_values[0]}=full_add(a[0],b[0],1'b0);
            {c[1],add_two_values[1]}=full_add(a[1],b[1],c[0]);
            {c[2],add_two_values[2]}=full_add(a[2],b[2],c[1]);
            {add_two_values[4],add_two_values[3]}=full_add(a[3],b[3],c[2]);
        end
    endfunction
    
    always@(ain,bin)
        sum=add_two_values(ain,bin);
endmodule
