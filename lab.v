```Verilog
module add_two_values_task(
    input[3:0] ain, bin,
    output reg cout,
	output reg [3:0] sum
);

    task full_add;
       input a,b;
       input cin;
       output s;
       output cout;
       begin
            s=a^b^cin;
            cout=(a&b)|((a^b)&cin);
        end
    endtask
     
    task add_two_values;
        input[3:0] a,b;
        output[3:0] s;
        output cout;
        reg c[3:0];
        begin
        full_add(a[0],b[0],1'b0,s[0],c[0]);
        full_add(a[1],b[1],c[0],s[1],c[1]);
        full_add(a[2],b[2],c[1],s[2],c[2]);
        full_add(a[3],b[3],c[2],s[3],cout);
        end
    endtask
    
    always @(ain,bin)
        add_two_values(ain,bin,sum,cout);
endmodule
```
