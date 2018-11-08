module lab4_3_2_tb;
    reg a;
    reg g1;
    reg g2;
    
    initial
        begin
            #150 $finish;
        end
        
     initial
        begin
            a=0;g1=0;g2=1;
            #40 a=1;
            #20 g1=1;
            #20 g2=0;
            #20 a=0;
            #20 g1=0;
            #20 g2=1;
        end
endmodule
