# Vectors
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); 
    assign outv = vec;
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
endmodule


# Vectors in  more detail(Vector1)
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_lo[7:0] = in[7:0];
    assign out_hi[7:0] = in[15:8];
endmodule


#Vector Part select(Vector2)
module top_module( 
    input [31:0] in,
    output [31:0] out );
  assign out = {in[7:0],in[15:8],in[23:16],in[31:24]};
endmodule


# Bitwise operators(Vectorgates)
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise = a | b;
    assign out_or_logical = a||b;
    assign out_not = {~b, ~a};
endmodule


# Four input gates(Gates4)
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and = {in[0]&in[1]&in[2]&in[3]};
    assign out_or = {in[0]|in[1]|in[2]|in[3]};
    assign out_xor = {in[0]^in[1]^in[2]^in[3]};

endmodule


# vector Concatenation Operator(Vector3)
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
  assign {w,x,y,z} = {a,b,c,d,e,f,1'b1,1'b1};
endmodule


# vector reversal(Vectorr)
module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out[7:0] = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule


# Replication Operator(Vector4)
module top_module (
    input [7:0] in,
    output [31:0] out );
  assign out = { {24{in[7]}} , in};
endmodule


# More Repliction(Vector5)
module top_module (
    input a, b, c, d, e,
    output [24:0] out );
  assign out =  ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ { 5{a,b,c,d,e} };
endmodule
