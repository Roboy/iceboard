// look in pins.pcf for all the pin names on the TinyFPGA BX board
module TinyFPGA_B (
  input CLK,    // 16MHz clock
  output LED,   // User/boot LED next to power LED
  output USBPU,  // USB pull-up resistor
  input ENCODER0_A,
  input ENCODER0_B,
  input ENCODER1_A,
  input ENCODER1_B,
  input HALL1,
  input HALL2,
  input HALL3,
  input FAULT_N,
  output NEOPXL,
  output DE,
  output TX,
  input RX,
  output CS_CLK,
  output CS,
  input CS_MISO,
  output SCL,
  inout SDA,
  output INLC,
  output INHC,
  output INLB,
  output INHB,
  output INLA,
  output INHA
);
  // drive USB pull-up resistor to '0' to disable USB
assign USBPU = 0;

wire clk32MHz;
pll32MHz pll32MHz_inst(.REFERENCECLK(CLK),
.PLLOUTGLOBAL(clk32MHz),
.RESET(1'b1) // active low
);

wire [7:0] ID;
assign ID = 135;

wire [23:0] neopxl_color;

neopixel nx(
 .clock(clk32MHz),
 .reset(1'b0),
 .color(neopxl_color),
 .send_to_neopixels(LED),
 .one_wire(NEOPXL)
);

 wire hall1, hall2, hall3;
 // PULLUP for hall sensors
 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall1_input(
   .PACKAGE_PIN(HALL1),
   .D_IN_0(hall1)
 );

 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall2_input(
   .PACKAGE_PIN(HALL2),
   .D_IN_0(hall2)
 );

 SB_IO #(
   .PIN_TYPE(6'b 0000_01),
   .PULLUP(1'b 1)
 ) hall3_input(
   .PACKAGE_PIN(HALL3),
   .D_IN_0(hall3)
 );

 wire pwm_out;
 reg dir, enable, reset;
 reg h1, h2, h3;
 assign INLA = h1;
 assign INHB = h2;
 assign INLB = h3;
 assign INHA = pwm_out;
 assign INHC = dir;
 assign INLC = 1'b1;

 reg [22:0] pwm_setpoint;
 wire signed [23:0] duty;
 pwm PWM(
   .clk(clk32MHz),
   .reset(reset),
   .duty(pwm_setpoint),
   .pwm_out(pwm_out)
 );

  always @(posedge clk32MHz) begin: HALL_SENSORS
    h1 <= hall1;
    h2 <= hall2;
    h3 <= hall3;
    enable <= 1;
    reset <= 0;
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
    .PACKAGE_PIN(TX),
    .D_OUT_0(tx_o),
    .OUTPUT_ENABLE(tx_enable)
  );

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

  coms c0(
  	.CLK(clk32MHz),
	  .reset(1'b0),
  	.tx_o(tx_o),
	  .tx_enable(tx_enable),
    .driver_enable(DE),
  	.rx_i(~RX),
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
    .neopxl_color(neopxl_color),
    .LED(LED)
  );

  wire signed [23:0] motor_state;

  assign motor_state =
    (control_mode==0)?encoder0_position:
    (control_mode==1)?encoder1_position:
    (control_mode==2)?displacement:
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
    .deadband(deadband)
  );

  // encoder0
  quad #(100) quad_counter0 (
    .clk(clk32MHz),
    .quadA(ENCODER0_A),
    .quadB(ENCODER0_B),
    .count(encoder0_position)
  );

  // encoder1
  quad #(100) quad_counter1 (
    .clk(clk32MHz),
    .quadA(ENCODER1_A),
    .quadB(ENCODER1_B),
    .count(encoder1_position)
  );

  always @(posedge clk32MHz) begin: DISPLACEMENT_CALCULATION
    displacement <= (encoder1_position-encoder0_position);
  end

  // wire di_req, wr_ack, do_valid;
  // reg wren;
  // // wire [15:0] Word, cs_mosi;
  // wire [15:0] data_out;
  // integer delay_counter;
  //
  // always @(posedge clk32MHz) begin: TLI4970_READOUT_LOGIC
	// 	wren <= 0;
	// 	if(delay_counter>64_000)begin
	// 		// if(CS)begin
	// 		// 	if(data_out[15]==0)begin
	// 		// 		current <= data_out[12:0];
	// 		// 	end
	// 			delay_counter <= 0;
	// 			wren <= 1;
	// 		// end
	// 	end else begin
	// 		delay_counter <= delay_counter+1;
	// 	end
  // end
  //
  // // SPI specs: 16bit, pol 0 phase 0, 1MHz
  // spi_master #(16, 1'b0, 1'b1, 2, 16) spi(
  // 	.sclk_i(clk32MHz),
  // 	.pclk_i(clk32MHz),
  // 	.rst_i(reset),
  // 	.spi_miso_i(CS_MISO),
  // 	// .di_i(Word),
  // 	.wren_i(wren),
  // 	.spi_ssel_o(CS),
  // 	.spi_sck_o(CS_CLK),
  // 	// .spi_mosi_o(cs_mosi),
  // 	.di_req_o(di_req),
  // 	.wr_ack_o(wr_ack),
  // 	.do_valid_o(do_valid),
  // 	.do_o(data_out)
  // );

endmodule
