module lab6_2_3(
    input Clk,
    input Clear,
    input Enable,
    input Load,
    output [3:0] Q
    );
    reg[3:0] count;
    wire cnt_done;
    
    assign cnt_done= ~| count;
    assign Q=count;
    
    always @(posedge Clk)
        if(Clear)
            count<=0;
        else if (Enable)
            if (Load | cnt_done)
                count <= 4'b1010;
            else 
                count <= count - 1;
    
endmodule
