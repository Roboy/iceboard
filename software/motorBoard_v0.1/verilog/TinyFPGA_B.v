// look in pins.pcf for all the pin names on the TinyFPGA BX board
module TinyFPGA_B (
  input CLK,    // 16MHz clock
  output LED,   // User/boot LED next to power LED
  output USBPU,  // USB pull-up resistor
  inout PIN_1,
  inout PIN_2,
  inout PIN_3,
  inout PIN_4,
  inout PIN_5,
  inout PIN_6,
  inout PIN_7,
  inout PIN_8,
  inout PIN_9,
  inout PIN_10,
  inout PIN_11,
  inout PIN_12,
  inout PIN_13,
  inout PIN_14,
  inout PIN_15,
  inout PIN_16,
  inout PIN_17,
  inout PIN_18,
  inout PIN_19,
  inout PIN_20,
  inout PIN_21,
  inout PIN_22,
  inout PIN_23,
  inout PIN_24
)/* synthesis syn_preserve=0 syn_noprune=0*/;
  // drive USB pull-up resistor to '0' to disable USB
assign USBPU = 0;

wire clk32MHz;
pll32MHz pll32MHz_inst(.REFERENCECLK(CLK),
.PLLOUTGLOBAL(clk32MHz),
.RESET(1'b1) // active low
);

wire [7:0] ID;
assign ID = 7;

wire one_wire;
assign PIN_8 = one_wire;
integer communication_counter;
reg [23:0] color;
reg [7:0] blue;
reg blink;
reg send_to_neopixels;

always @ ( posedge LED ) begin
  communication_counter <= communication_counter+1;
  send_to_neopixels <= 0;
  if((communication_counter%100)==0)begin
    send_to_neopixels <= 1;
    if(blink)begin
      case(ID)
        0: color[7:0] <= 8'd30;
        1: color[15:8] <= 8'd30;
        2: color[23:16] <= 8'd30;
        3: color[7:0] <= 8'd30;
        4: color[15:8] <= 8'd30;
        5: color[23:16] <= 8'd30;
        6: color[7:0] <= 8'd30;
        7: color[15:8] <= 8'd30;
      endcase
      blink <= 0;
    end else begin
      color <= 0;
      blink <= 1;
    end
    blue <= blue+1;
  end
end

neopixel nx(
 .clock(clk32MHz),
 .reset(1'b0),
 .color(color),
 .send_to_neopixels(1'b1),
 .one_wire(one_wire)
);

 wire hall1, hall2, hall3;
 // PULLUP for hall sensors
 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall1_input(
   .PACKAGE_PIN(PIN_3),
   .D_IN_0(hall1)
 );

 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall2_input(
   .PACKAGE_PIN(PIN_4),
   .D_IN_0(hall2)
 );

 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall3_input(
   .PACKAGE_PIN(PIN_5),
   .D_IN_0(hall3)
 );

 wire INHA, INLA, INHB, INLB, INHC, INLC;
 assign PIN_19 = INHA;
 assign PIN_20 = INLA;
 assign PIN_21 = INHB;
 assign PIN_22 = INLB;
 assign PIN_23 = INHC;
 assign PIN_24 = INLC;

 wire pwm_out;
 reg dir, enable, reset_n;
 reg h1, h2, h3;
 assign INLA = h1;
 assign INHB = h2;
 assign INLB = h3;

 assign INHA = pwm_out;
 assign INHC = dir;
 assign INLC = 1'b1;

 reg [22:0] pwm_setpoint;
 wire signed [23:0] duty;
 pwm #(32_000_000,20_000,32_000_000,23,1) PWM(
   .clk(CLK),
   .reset_n(reset_n),
   .ena(enable),
   .duty(pwm_setpoint),
   .pwm_out(pwm_out)
 );

  always @(posedge clk32MHz) begin: HALL_SENSORS
    h1 <= hall1;
    h2 <= hall2;
    h3 <= hall3;
    enable <= 1;
    reset_n <= 1;
    if(duty>=0)begin
      pwm_setpoint <= duty;
      dir <= 0;
    end else begin
      pwm_setpoint <= -duty;
      dir <= 1;
    end
  end

  wire tx_o, tx_enable, rx_i;
  // tristated PULLUP for UART transmitters
  SB_IO #(
    .PIN_TYPE(6'b101001),
    .PULLUP(1'b1)
  ) tx_output(
    .PACKAGE_PIN(PIN_12),
    .D_OUT_0(tx_o),
    .OUTPUT_ENABLE(tx_enable)
  );

  assign rx_i = PIN_13;

  wire signed [23:0] encoder0_position;
  wire signed [23:0] encoder1_position;
  reg signed [23:0] displacement;
  wire signed [23:0] setpoint;
  wire signed [23:0] Kp;
  wire signed [23:0] Ki;
  wire signed [23:0] Kd;
  wire [7:0] control_mode;
  wire signed [23:0] PWMLimit;
  wire signed [23:0] IntegralLimit;
  wire signed [23:0] deadband;
  reg signed [12:0] current;
  wire driver_enable;

  assign PIN_11 = driver_enable;

  coms c0(
  	.CLK(clk32MHz),
	  .reset(1'b0),
  	.tx_o(tx_o),
	  .tx_enable(tx_enable),
    .driver_enable(driver_enable),
  	.rx_i(~rx_i),
    .ID(ID),
    .duty(duty),
  	.encoder0_position(encoder0_position),
  	.encoder1_position(encoder1_position),
    .displacement(displacement),
  	.setpoint(setpoint),
  	.control_mode(control_mode),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .current(current),
    .deadband(deadband),
    .LED(LED)
  );

  wire signed [23:0] motor_state;

  assign motor_state =
    (control_mode==0)?encoder0_position:
    (control_mode==1)?encoder1_position:
    (control_mode==2)?displacement:
    (control_mode==3)?current:
    32'd0;

  motorControl control(
    .CLK(clk32MHz),
    .reset(1'b0),
    .duty(duty),
    .setpoint(setpoint),
    .state(motor_state),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .deadband(deadband),
    .pwm_out(pwm_out)
  );

  // encoder0
  quad #(100) quad_counter0 (
    .clk(clk32MHz),
    .quadA(PIN_1),
    .quadB(PIN_2),
    .count(encoder0_position)
  );

  // encoder1
  quad #(100) quad_counter1 (
    .clk(clk32MHz),
    .quadA(PIN_9),
    .quadB(PIN_10),
    .count(encoder1_position)
  );

  always @(posedge clk32MHz) begin: DISPLACEMENT_CALCULATION
    displacement <= (encoder1_position-encoder0_position);
  end

  wire di_req, wr_ack, do_valid, ss_n;
  reg wren;
  wire [15:0] Word;
  wire [15:0] data_out;
  integer delay_counter;

  always @(posedge clk32MHz) begin: TLI4970_READOUT_LOGIC
		wren <= 0;
		if(delay_counter==0)begin
			if(ss_n)begin
				if(data_out[15]==0)begin
					current <= data_out[12:0];
				end
				delay_counter <= 32_000_000/500;
				wren <= 1;
			end
		end else begin
			delay_counter <= delay_counter-1;
		end
  end

  // SPI specs: 1MHz, 16bit MSB, pol 0 phase 0
  spi_master #(32, 1'b0, 1'b1, 2, 25) spi(
  	.sclk_i(clk32MHz),
  	.pclk_i(clk32MHz),
  	.rst_i(1'b0),
  	.spi_miso_i(miso),
  	.di_i(Word),
  	.wren_i(wren),
  	.spi_ssel_o(ss_n),
  	.spi_sck_o(sck),
  	.spi_mosi_o(mosi),
  	.di_req_o(di_req),
  	.wr_ack_o(wr_ack),
  	.do_valid_o(do_valid),
  	.do_o(data_out)
  );

endmodule
