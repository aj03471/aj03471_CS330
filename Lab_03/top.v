module top
(
	input clk, reset, rx,
	output tx,
	output [3:0]q
);

wire [7:0] counter_data;
assign counter_data = {4'b0000, q};

//Instantiating ripple_carry_counter module
	ripple_carry_counter RCC
	(
		.clk(clk),
		.reset(reset),
		.q(q[3:0])
	);


//Instantiating uart_top module
	uart_top UART
	(
		.clk(clk),
		.reset(reset),
		.rx(rx),
		.tx(tx),
		.data_to_tx(counter_data)
	);