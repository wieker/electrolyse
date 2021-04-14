// tst_6502.v - test 6502 core
// 02-11-19 E. Brombaugh

module logic(
    input clk,              // 4..0MHz CPU clock
    input reset,            // Low-true reset
    
	output reg [7:0] gpio_o,
	input [7:0] gpio_i,
	
	input RX,				// serial RX
	output TX,				// serial TX

    output sram_oe,
    input [7:0] sram_din,
    output [7:0] sram_dout,
    output [18:0] addr,
);

	// hard-coded bit-rate
	localparam sym_rate = 1200;
    localparam clk_freq = 32768;
    localparam sym_cnt = clk_freq / sym_rate;
	localparam SCW = $clog2(sym_cnt);

    reg [15:0] sram_addr_reg;
    assign addr = { 3'b000, sram_addr_reg };
    reg [15:0] sram_dout_reg;
    assign sram_dout = sram_dout_reg;
    reg sram_oe_reg;
    assign sram_oe = sram_oe_reg;

    wire rx_stb;
    wire [7:0] rx_dat;

    reg [7:0] command;
    reg [7:0] stage;
    reg [7:0] len;
    reg [7:0] prev_stage;

    always @(posedge clk)
        begin
            prev_stage <= stage;
            if (stage == 0) begin
                sram_oe_reg <= 0;
                if (rx_stb) begin
                    command <= rx_dat;
                    stage <= 1;
                end
            end
            if (stage == 1) begin
                if (rx_stb) begin
                    sram_addr_reg <= { rx_dat , sram_addr_reg[7:0] };
                    stage <= 2;
                end
            end
            if (stage == 2) begin
                if (rx_stb) begin
                    sram_addr_reg <= { sram_addr_reg[7:0] , rx_dat };
                    stage <= 3;
                end
            end
            if (stage == 3) begin
                if (rx_stb) begin
                    len <= rx_dat;
                    stage <= 4;
                end
            end
            if (stage == 4) begin
                if (command == 8'h57 && rx_stb) begin
                    len <= len - 1;
                    if (len == 1) begin
                        stage <= 0;
                    end
                    sram_dout_reg <= rx_dat;
                    sram_oe_reg <= 1;
                    sram_addr_reg <= sram_addr_reg + 1;
                end
                if (command == 8'h57 && !rx_stb) begin
                    sram_oe_reg <= 0;
                end
                if (command == 8'h52 && !tx_busy) begin
                    len <= len - 1;
                    if (len == 1) begin
                        stage <= 0;
                    end
                    sram_addr_reg <= sram_addr_reg + 1;
                end
            end
        end

	acia_rx #(
		.SCW(SCW),				// rate counter width
		.sym_cnt(sym_cnt)		// rate count value
	)
	my_rx(
		.clk(clk),				// system clock
		.rst(reset),			// system reset
		.rx_serial(RX),		    // raw serial input
		.rx_dat(rx_dat),        // received byte
		.rx_stb(rx_stb),        // received data available
		.rx_err(rx_err)         // received data error
	);

	wire [7:0] din;
	wire tx_start;

	assign din = 8'h57 + stage;
	assign tx_start = stage != 0;

	acia_tx #(
        .SCW(SCW),              // rate counter width
        .sym_cnt(sym_cnt)       // rate count value
    )
    my_tx(
        .clk(clk),				// system clock
        .rst(reset),			// system reset
        .tx_dat(din),           // transmit data byte
        .tx_start(tx_start),    // trigger transmission
        .tx_serial(TX),         // tx serial output
        .tx_busy(tx_busy)       // tx is active (not ready)
    );
	
endmodule
