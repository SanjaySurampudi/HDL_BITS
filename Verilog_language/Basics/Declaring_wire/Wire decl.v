module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    wire an1,an2;
    assign an1 = a&b;
    assign an2 = c&d;
    assign out = an1|an2;
    assign out_n = ~(an1|an2);
endmodule
