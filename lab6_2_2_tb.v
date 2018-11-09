module lab6_2_2_tb;
    reg Clk;
    reg Clear_n;
    reg Enable;
    wire[7:0]  Q;
  
    lab6_2_2 DUT (.Clk(Clk),.Clear_n(Clear_n),.Enable(Enable),.Q(Q));
        
        initial
            #500 $finish;
        
        initial
        begin
            Clk=1'b0;
            while(1)
                #5 Clk=~Clk;
        end;
        
        initial
        begin
            Enable=1'b0;
            #20 Enable=~Enable;
            #100 Enable=~Enable;
            #80 Enable=~Enable;
        end
        
        initial
        begin
            Clear_n=1'b0;
            #40 Clear_n=1'b1;
        end
endmodule
