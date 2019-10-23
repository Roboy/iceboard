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

wire one_wire;
assign PIN_8 = one_wire;
reg [23:0] color;
reg [7:0] blue;
reg send_to_neopixels;

always @ ( posedge LED ) begin
  send_to_neopixels <= 1;
  if(send_to_neopixels)begin
    send_to_neopixels <= 0;
    color[23:16] <= blue;
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
  wire signed [23:0] gearBoxRatio;

  coms c0(
  	.CLK(clk32MHz),
	  .reset(1'b0),
  	.tx_o(tx_o),
	  .tx_enable(tx_enable),
  	.rx_i(~rx_i),
    .duty(duty),
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
    .deadband(deadband),
    .LED(LED)
  );

  wire signed [23:0] motor_state;

  assign motor_state =
    (control_mode==0)?encoder0_position:
    (control_mode==1)?encoder1_position:
    (control_mode==2)?displacement:
    (control_mode==3)?0:
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

  always @ ( posedge clk32MHz ) begin
    displacement <= (encoder0_position/gearBoxRatio) - (encoder1_position>>>3);
  end

  // encoder0
  quad #(100) quad_counter0 (
    .clk(clk32MHz),
    .quadA(PIN_2),
    .quadB(PIN_1),
    .count(encoder0_position)
  );

  // encoder1
  quad #(100) quad_counter1 (
    .clk(clk32MHz),
    .quadA(PIN_7),
    .quadB(PIN_6),
    .count(encoder1_position)
  );

endmodule
