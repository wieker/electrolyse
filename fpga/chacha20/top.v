module top(
    output LED1, led2, led3,
    input CLK1, CLK2
);

    reg [21:0] counter1;

    always @(posedge CLK1)
        begin
            counter1 <= counter1 + 1;
        end

    reg [21:0] counter2;

    always @(posedge CLK2)
        begin
            counter2 <= counter2 + 1;
        end

    assign LED1 = counter2[21];
    assign led2 = counter1[21];
    assign led3 = counter1[19];

endmodule
