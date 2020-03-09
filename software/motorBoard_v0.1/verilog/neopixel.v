module neopixel #(parameter CLOCK_SPEED_HZ = 32_000_000)(
    input clock,
    input reset,
    input wire [23:0] color,
    input send_to_neopixels,
    output reg one_wire
  );

reg [10:0] timer;

always @ ( posedge clock ) begin
  timer <= timer + 1;
end


reg [1:0] state;
reg [4:0] bit_ctr;
wire color_bit;
reg start;

assign color_bit = color[(24-bit_ctr)];

always @(posedge clock, posedge reset) begin: neo_pixel_transmitter
		parameter SIZE = 4;
		parameter SEND_0  = 0, SEND_1 = 1,LATCH = 2, IDLE = 3;
		reg done;
		reg [10:0] t0;
		reg [10:0] t1;
		if(reset==1) begin
			start <= 1;
			done <= 0;
			state <= 3;
			bit_ctr <= 24;
		end else begin
			case(state)
				IDLE : 	begin
								if(bit_ctr<24) begin
									state <= (color_bit?SEND_1:SEND_0);
								end else begin
									state <= LATCH;
									if(send_to_neopixels) begin
										bit_ctr <= 0;
									end
								end
							end
				SEND_1 : begin
								if (start == 1) begin
									t0 <= timer;
									start <= 0;
									done <= 0;
								end else begin
									t1 = timer - t0;
									if( done == 0 ) begin
										if( t1 < CLOCK_SPEED_HZ/1111111 ) begin // 0.9 us approx 1111111 Hz
											one_wire <= 1;
										end else begin
											done <= 1;
											t0 <= timer;
										end
									end else begin
										if( t1 < CLOCK_SPEED_HZ/3333333 ) begin // 0.3 us approx 3333333 Hz
											one_wire <= 0;
										end else begin
											done <= 0;
											start <= 1;
											t0 <= timer;
											state <= IDLE;
											bit_ctr <= bit_ctr+1;
										end
									end
								end
							end
				SEND_0 : begin
								if (start == 1) begin
									t0 <= timer;
									start <= 0;
									done <= 0;
								end else begin
									t1 = timer - t0;
									if( done == 0 ) begin
										if( t1 < CLOCK_SPEED_HZ/3333333 ) begin // 0.3 us approx 3333333 Hz
											one_wire <= 1;
										end else begin
											done <= 1;
											t0 <= timer;
										end
									end else begin
										if( t1 < CLOCK_SPEED_HZ/1111111 ) begin // 0.9 us approx 1111111 Hz
											one_wire <= 0;
										end else begin
											done <= 0;
											start <= 1;
											t0 <= timer;
											state <= IDLE;
											bit_ctr <= bit_ctr+1;
										end
									end
								end
							end
				LATCH : begin
								t1 = timer - t0;
								if( done == 0 ) begin
									if( t1 < CLOCK_SPEED_HZ/12500 ) begin // 80 us approx 12500 Hz
										one_wire <= 0;
									end else begin
										done <= 0;
										start <= 1;
										state <= IDLE;
									end
								end
							end
			  default : begin
								state <= IDLE;
							end
			endcase
		end
		end
endmodule
