// tst_6502.v - test 6502 core
// 02-11-19 E. Brombaugh

module tst_6502(
    input clk,              // 4..0MHz CPU clock
    input reset,            // Low-true reset
    
	output reg [7:0] gpio_o,
	input [7:0] gpio_i,
	
	input RX,				// serial RX
	output TX,				// serial TX

             	output sram_oe,
                 input [7:0] sram_din,
                 output [7:0] sram_dout,
                 output [15:0] addr,

    output nand_oe,
    input [7:0] nand_din,
    output reg [7:0] nand_dout,
    output nce, ncle, nwe, nre, nale,
);
    // The 6502
    wire [15:0] CPU_AB;
    reg [7:0] CPU_DI;
    wire [7:0] CPU_DO;
    wire CPU_WE, CPU_IRQ;
    cpu ucpu(
        .clk(clk),
        .reset(reset),
        .AB(CPU_AB),
        .DI(CPU_DI),
        .DO(CPU_DO),
        .WE(CPU_WE),
        .IRQ(CPU_IRQ),
        .NMI(1'b0),
        .RDY(1'b1)
    );

    reg [7:0] nand_ctl;
    assign {nand_oe, nale, ncle, nre, nwe, nce} = nand_ctl[5:0];
    
	// address decode - not fully decoded for 512-byte memories
	wire cs_gpio = (CPU_AB[15:0] == 16'h1000) ? 1 : 0;
	wire cs_acia = (CPU_AB[15:0] == 16'h1002) || (CPU_AB[15:0] == 16'h1003) ? 1 : 0;
	wire cs_flash = (CPU_AB[15:12] == 4'hf) ? 1 : 0;
	wire cs_sram = (cs_gpio == 0) && (cs_acia == 0) && (cs_flash == 0) && (cs_nand == 0) ? 1 : 0;
	wire cs_nand = (CPU_AB[15:0] == 16'h1004) || (CPU_AB[15:0] == 16'h1005) ? 1 : 0;

    reg [15:0] sram_addr_reg;
    reg [15:0] sram_dout_reg;
    reg sram_oe_reg;
	assign addr = sram_addr_reg;
	assign sram_oe = sram_oe_reg;
	assign sram_dout = sram_dout_reg;
	always @(posedge clk) begin
        addr <= CPU_AB;
        sram_oe <= (CPU_WE == 1'b1) && (cs_sram == 1'b1);
        sram_dout <= CPU_DO;
	end
	
	// GPIO @ page 10-1f
	reg [7:0] gpio_do;
	always @(posedge clk) begin
		if((CPU_WE == 1'b1) && (cs_gpio == 1'b1))
			gpio_o <= CPU_DO;
		if((CPU_WE == 1'b1) && (cs_nand == 1'b1) && (CPU_AB[0] == 0))
			nand_ctl <= CPU_DO;
		if((CPU_WE == 1'b1) && (cs_nand == 1'b1) && (CPU_AB[0] == 1))
			nand_dout <= CPU_DO;
	end
	always @(posedge clk)
		gpio_do <= gpio_i;
	
	// ACIA at page 20-2f
	wire [7:0] acia_do;
	acia uacia(
		.clk(clk),				// system clock
		.rst(reset),			// system reset
		.cs(cs_acia),				// chip select
		.we(CPU_WE),			// write enable
		.rs(CPU_AB[0]),			// register select
		.rx(RX),				// serial receive
		.din(CPU_DO),			// data bus input
		.dout(acia_do),			// data bus output
		.tx(TX),				// serial transmit
		.irq(CPU_IRQ)			// interrupt request
	);
	
	// ROM @ pages f0,f1...
    reg [7:0] rom_mem[4095:0];
	reg [7:0] rom_do;
	initial
        $readmemh("rom.hex",rom_mem);
	always @(posedge clk)
		rom_do <= rom_mem

		[CPU_AB[11:0]];

	// data mux
	reg [4:0] mux_sel;
	always @(posedge clk)
		mux_sel <= {cs_nand, cs_flash, cs_acia, cs_gpio, cs_sram};
	always @(*)
		casez(mux_sel)
			5'h01: CPU_DI = sram_din;
			5'h02: CPU_DI = gpio_do;
			5'h04: CPU_DI = acia_do;
			5'h08: CPU_DI = rom_do;
			5'h10: CPU_DI = nand_din;
			default: CPU_DI = rom_do;
		endcase
endmodule
