
module top (
    input       P39, P40,
    input       P29, P30,
    output wire P31, P32, P33
);

    wire [1:0] a = {~P30,~P29};
    wire [1:0] b = {~P40,~P39};

    wire [2:0] out;
    assign {P33,P32,P31} = out;

    adder #(2) add (
        a, b, out
    );

endmodule
