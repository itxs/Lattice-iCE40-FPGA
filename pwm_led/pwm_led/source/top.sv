module blinker (
	input clk,	// Clock
	input rst,	// Reset
	output [2:0] led
);

logic nrst;
logic [10:0] cnt;
assign nrst = !rst;
assign led[1] = cnt[10];

always_ff @(posedge clk) begin
	cnt <= cnt + 1;
end
endmodule
