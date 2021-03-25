module adder1bit(a,b,cin,s,cout);
input a,b,cin;
output s,cout;

wire w1, w2, w3;

and( w1, a, b );
and( w2, a, cin );
and( w3, b, cin );
or( cout, w1, w2, w3 );

xor( s, a, b, cin );

endmodule