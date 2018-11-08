module lab5_2_2_tb;
    reg Clock;
    reg D; 
    reg S;
    wire Qa;
    wire Qb;
    wire Qc;
    wire Qd;
    integer i,j;
    lab5_2_2 SIMU(.D(D),.Clock(Clock),.S(S),.Qa(Qa),.Qb(Qb),.Qc(Qc),.Qd(Qd));
    
    initial
    begin
        #300 $finish;
    end
    
    initial
    begin
        for(i=0;i<3;i=i+1)
            begin
                Clock=0;#60;
                Clock=1;#60;
            end
    end
    
    initial
        begin
            S=0;
            #30;
            for(j=0;j<3;j=j+1)
                begin
                    S=0;#60;
                    S=1;#60;
                end
        end
    initial
        begin
            D=0;
            #50 D=1;
            #20 D=0;
            #10 D=1;
            #20 D=0;
            #30 D=1;
            #20 D=0;
            #10 D=1;                        
            #10 D=0;
            #20 D=1;
            #10 D=0;
            #10 D=1;
            #40 D=0;
        end                            
endmodule
