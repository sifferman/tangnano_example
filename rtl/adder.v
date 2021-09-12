
module adder #(
    parameter INPUT_WIDTH = 2
) (
    input     [INPUT_WIDTH-1:0] a, b,
    output wire [INPUT_WIDTH:0] out
);
    wire [INPUT_WIDTH-1:0] cout;

    assign  out[0] = a[0] ^ b[0];
    assign cout[0] = a[0] & b[0];

    genvar i;
    generate for ( i = 1; i < INPUT_WIDTH; i = i+1 ) begin : full_adder
        wire abX = a[i] ^ b[i];
        wire abA = a[i] & b[i];
        wire abXcA = abX & cout[i-1];

        assign out[i] = abX ^ cout[i-1];
        assign cout[i] = abXcA | abA;
    end endgenerate

    assign out[INPUT_WIDTH] = cout[INPUT_WIDTH-1];

endmodule
