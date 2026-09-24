module fulladder1(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);

    wire sum1;
    wire carry1;
    wire carry2;

    halfadder1 ha1(
        .a(a),
        .b(b),
        .sum(sum1),
        .carry(carry1)
    );

    halfadder1 ha2(
        .a(sum1),
        .b(cin),
        .sum(sum),
        .carry(carry2)
    );

    or(carry, carry1, carry2);

endmodule