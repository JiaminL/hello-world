module lab5_2_2(
    input D,
    input Clock,
    input S,
    output reg Qa,
    output reg Qb,
    output reg Qc,
    output reg Qd
    );
    
    always@(Clock,D)
        if(Clock)
            Qa<=D;
    
    always@(posedge Clock)
            Qb<=D;
            
    always@(negedge Clock)
            Qc<=D;
            
     always@(Clock,S,D)
         begin
            if(Clock&D&~S)
                Qd=1'b0;
            if(Clock&S&~D)
                Qd=1'b1;
            if(Clock&D&S)
                Qd=1'bx;
         end

endmodule
