module D_FF_behavior(
    input D,
    input Clk,
    input Clear_n,
    output reg Q
    );
    always @(posedge Clk or negedge Clear_n)
    begin
        if(~Clear_n)
            Q<=0;
        else if (Clk)
            Q<=D;
    end
endmodule

module T_FF_useD_dataflow(
    input T,
    input Clk,
    input Clear_n,
    output Q
    );
    D_FF_behavior DFF (T^Q,Clk,Clear_n,Q);
endmodule

module lab6_2_2(
    input Clk,
    input Clear_n,
    input Enable,
    output [7:0] Q
    );
    wire[6:0] l;
    
        T_FF_useD_dataflow T0 (Enable,Clk,Clear_n,Q[0]);
        assign l[0]=Q[0]&Enable;
        T_FF_useD_dataflow T1 (l[0],Clk,Clear_n,Q[1]);
        assign l[1]=Q[1]&l[0];
        T_FF_useD_dataflow T2 (l[1],Clk,Clear_n,Q[2]);
        assign l[2]=Q[2]&l[1];
        T_FF_useD_dataflow T3 (l[2],Clk,Clear_n,Q[3]);
        assign l[3]=Q[3]&l[2];
        T_FF_useD_dataflow T4 (l[3],Clk,Clear_n,Q[4]);
        assign l[4]=Q[4]&l[3];
        T_FF_useD_dataflow T5 (l[4],Clk,Clear_n,Q[5]);
        assign l[5]=Q[5]&l[4];
        T_FF_useD_dataflow T6 (l[5],Clk,Clear_n,Q[6]);
        assign l[6]=Q[6]&l[5];
        T_FF_useD_dataflow T7 (l[6],Clk,Clear_n,Q[7]);

endmodule
