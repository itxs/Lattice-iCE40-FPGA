module top (
	input clk,    // Clock
	output led[4:0]
);

logic cnt[22:0];
assign led[0] = cnt[22];

always_ff @(posedge clk) begin
	cnt <= cnt + 1;
end
endmodule
 