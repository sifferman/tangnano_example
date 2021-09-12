
`ifdef LINTER
    `include "rtl/adder.v"
`endif


module tb ();

reg [3:0] a, b;
wire [4:0] out;

adder #(4) add (
    a, b, out
);

initial begin : sim
$dumpfile( "dump.fst" );
$dumpvars;
$display( "Begin simulation.");
//\\ =========================== \\//

for ( integer i = 0; i < 256; i=i+1 ) begin
    {a,b} = i;
    #1;
end

//\\ =========================== \\//
$display( "End simulation.");
$finish;
end

endmodule
