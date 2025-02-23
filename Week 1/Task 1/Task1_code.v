#Getting Started
module top_module( output one );
  assign one = 1'b1;
endmodule

#Output Zero
module top_module(
    output zero
);
endmodule

#Simple Wire
module top_module( input in, output out );
  assign out=in;
endmodule

#Four Wires
module top_module( 
    input a,b,c,
    output w,x,y,z );
    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;

endmodule

#Inverter(Notgate)
module top_module( input in, output out );
    assign out=!in;
endmodule

#Andgate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=a&b;
endmodule

#Norgate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=!(a|b);
endmodule

#Xnorgate
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=!(a^b);
endmodule

#Declaring wires
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire sec;
    wire one;
    assign out=sec;
    assign sec=(a&b)|(c&d);
    assign one=!((a&b)|(c&d));
    assign out_n=one;
endmodule

#7458 Chip
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    assign p2y=(p2a&p2b)|(p2c&p2d);
    assign p1y=(p1a&p1b&p1c)|(p1d&p1e&p1f);
endmodule
