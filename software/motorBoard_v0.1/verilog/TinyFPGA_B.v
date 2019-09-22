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

  //assign PIN_9 = clk32MHz;

  wire tx_o, tx_enable, rx_i;
  // PULLUP for UART transmitters
  SB_IO #(
    .PIN_TYPE(6'b101001),
    .PULLUP(1'b1)
  ) tx_output(
    .PACKAGE_PIN(PIN_12),
    .D_OUT_0(tx_o),
    .OUTPUT_ENABLE(tx_enable)
  );
  // PULLUP for UART receiver
  SB_IO #(
     .PIN_TYPE(6'b 0000_01),
     .PULLUP(1'b 1)
  ) rx_input(
     .PACKAGE_PIN(PIN_13),
     .D_IN_0(rx_i)
  );

  // // keep track of time and location in blink_pattern
  // reg [25:0] blink_counter;
  //
  // // pattern that will be flashed over the LED over time
  // wire [31:0] blink_pattern = 32'b101010001110111011100010101;
  //
  // // increment the blink_counter every clock
  // always @(posedge clk32MHz) begin
  //     blink_counter <= blink_counter + 1;
  // end

  // light up the LED according to the pattern
  assign LED = ~rx_i;//blink_pattern[blink_counter[25:21]];

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
  wire signed [23:0] gearBoxRatio;

  coms c0(
  	.CLK(clk32MHz),
	  .reset(1'b0),
  	.tx_o(tx_o),
	  .tx_enable(tx_enable),
  	.rx_i(~rx_i),
    .pwm(pwm),
  	.encoder0_position(encoder0_position),
  	.encoder1_position(encoder1_position),
    .displacement(displacement),
    .gearBoxRatio(gearBoxRatio),
  	.setpoint(setpoint),
  	.control_mode(control_mode),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .deadband(deadband)
  );

  wire hall1, hall2, hall3;
  // PULLUP for hall sensors
  SB_IO #(
    .PIN_TYPE(6'b 0000_01),
    .PULLUP(1'b 1)
  ) hall1_input(
    .PACKAGE_PIN(PIN_16),
    .D_IN_0(hall1)
  );

  SB_IO #(
    .PIN_TYPE(6'b 0000_01),
    .PULLUP(1'b 1)
  ) hall2_input(
    .PACKAGE_PIN(PIN_15),
    .D_IN_0(hall2)
  );

  SB_IO #(
    .PIN_TYPE(6'b 0000_01),
    .PULLUP(1'b 1)
  ) hall3_input(
    .PACKAGE_PIN(PIN_14),
    .D_IN_0(hall3)
  );

  assign PIN_6 = PHASES[0];
  assign PIN_5 = PHASES[1];
  assign PIN_4 = PHASES[2];
  assign PIN_3 = PHASES[3];
  assign PIN_2 = PHASES[4];
  assign PIN_1 = PHASES[5];
  wire [5:0] PHASES;
  wire signed [23:0] pwm;
  wire signed [31:0] motor_state;

  assign motor_state =
    (control_mode==0)?encoder0_position:
    (control_mode==1)?encoder1_position:
    (control_mode==2)?displacement:
    (control_mode==3)?0:
    32'd0;

  motorControl control(
    .CLK(clk32MHz),
    .reset(1'b0),
    .hall1(hall1),
    .hall2(hall2),
    .hall3(hall3),
    .PHASES(PHASES),
    .pwm(pwm),
    .setpoint(setpoint),
    .state(motor_state),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .deadband(deadband)
  );

  always @ ( posedge clk32MHz ) begin
    displacement <= (encoder0_position/gearBoxRatio) - (encoder1_position>>>3);
  end

  // optical encoder
  quad #(100) quad_counter0 (
    .clk(clk32MHz),
    .quadA(PIN_8),
    .quadB(PIN_9),
    .count(encoder0_position)
  );

  // magnetic encoder
  quad #(100) quad_counter1 (
    .clk(clk32MHz),
    .quadA(PIN_24),
    .quadB(PIN_23),
    .count(encoder1_position)
  );

endmodule
