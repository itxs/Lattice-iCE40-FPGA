module blinker (
	input clk,	// Clock
	input rst,	// Reset
	output [4:0] led
);

logic pll_clk;
logic nrst;
logic [10:0] cnt;
assign nrst = !rst;
assign led[1] = cnt[10];

//pll pll_inst(.REFERENCECLK(clk),
//             .PLLOUTGLOBAL(pll_clk),
//             .RESET(nrst));

always_ff @(posedge clk) begin
	cnt <= cnt + 1;
end
endmodule
