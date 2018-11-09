module lab6_2_3_tb;
    reg Clk;
    reg Enable;
    reg Clear;
    reg Load;
    wire [3:0] Q;
    
    lab6_2_3 DUT (.Clk(Clk),.Clear(Clear),.Enable(Enable),.Load(Load),.Q(Q));
    
    initial
        #400 $finish;
    
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
        #150 Enable=~Enable;
        #40 Enable=~Enable;
    end
    
    initial
    begin
        Clear=1'b0;
        #40 Clear=1'b1;
        #20 Clear=1'b0;
    end   
    
    initial
        begin
            Load=1'b0;
            #80 Load=1'b1;
            #10 Load=1'b0;
        end     
endmodule
