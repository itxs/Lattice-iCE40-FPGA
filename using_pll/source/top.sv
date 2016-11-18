module top (
	input clk,	// Clock
	input rst,	// Reset
	output led[4:0]
);

logic pll_clk;
logic nrst;
logic cnt[24:0];
assign nrst = !rst;
assign led[0] = cnt[24];

pll pll_inst(.REFERENCECLK(clk),
             .PLLOUTGLOBAL(pll_clk),
             .RESET(nrst));

always_ff @(posedge pll_clk) begin
	cnt <= cnt + 1;
end
endmodule
