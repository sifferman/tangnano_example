
module adder #(
    parameter INPUT_WIDTH = 2
) (
    input     [INPUT_WIDTH-1:0] a, b,
    output wire [INPUT_WIDTH:0] out
);

    assign out = a + b;

endmodule
