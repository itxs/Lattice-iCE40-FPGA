module tb();

bit clk;
bit rst;
logic [4:0] led;

//Clock generaiton
always #5 clk = !clk;

//Reset generation
initial begin
	clk = 0;
	led = '0;
	rst = 1;
	#5;
	rst = 0;
end

blinker DUT(.*);

endmodule // tb
