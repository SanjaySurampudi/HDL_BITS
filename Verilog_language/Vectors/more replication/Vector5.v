module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    
    wire [4:0] w1,w2,w3,w4,w5;
    wire [24:0]A;
    
    assign w1 = {5{a}};
    assign w2 = {5{b}};
    assign w3 = {5{c}};
    assign w4 = {5{d}};
    assign w5 = {5{e}};
    
    assign A = {w1,w2,w3,w4,w5};
    
    wire [4:0] W1,W2,W3,W4,W5;
    wire [24:0]B;
    
    assign W1 = {a,b,c,d,e};
    assign B = {5{W1}};
    
    assign out = ~((A)^(B));
    
endmodule
