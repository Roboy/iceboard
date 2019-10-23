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

 reg pwm_out;
 reg dir;
 reg h1, h2, h3;
 assign INLA = h1;
 assign INHB = h2;
 assign INLB = h3;

 assign INHA = pwm_out;
 assign INHC = dir;
 assign INLC = (pwm!=0);

 reg signed [8:0] pwm;
 reg signed [8:0] pwm_count;

 always @(posedge CLK) begin: BLDC_COMMUTATION
   pwm <= 50;
   h1 <= hall1;
   h2 <= hall2;
   h3 <= hall3;
   if( pwm>=0 && pwm_count<pwm)begin
    pwm_out <= 1;
    dir <= 1;
   end else if ( pwm<0 && pwm_count<(-pwm)) begin
    pwm_out <= 1;
    dir <= 0;
   end else begin
    pwm_out <= 0;
   end
   pwm_count <= pwm_count+1;
 end

 // reg [5:0] GATES;
 // assign PIN_19 = GATES[5];
 // assign PIN_20 = GATES[4];
 // assign PIN_21 = GATES[3];
 // assign PIN_22 = GATES[2];
 // assign PIN_23 = GATES[1];
 // assign PIN_24 = GATES[0];
 // localparam HA=5,LA=4,HB=3,LB=2,HC=1,LC=0;
 //
 // reg signed [8:0] pwm;
 // reg signed [8:0] pwm_count;
 //
 // always @(posedge CLK) begin: BLDC_COMMUTATION
 //   pwm <= 20;
 //   if( pwm>=0 && pwm_count<pwm)begin
 //     GATES <= 0;
 //     if(hall1 && ~hall2 && hall3) begin // A -> B
 //       GATES[HA] <= 1;
 //       GATES[LB] <= 1;
 //     end else if(hall1 && ~hall2 && ~hall3)begin // A -> C
 //       GATES[HA] <= 1;
 //       GATES[LC] <= 1;
 //     end else if(hall1 && hall2 && ~hall3) begin // B -> C
 //       GATES[HB] <= 1;
 //       GATES[LC] <= 1;
 //     end else if(~hall1 && hall2 && ~hall3)begin // B -> A
 //       GATES[HB] <= 1;
 //       GATES[LA] <= 1;
 //     end else if(~hall1 && hall2 && hall3) begin // C -> A
 //       GATES[HC] <= 1;
 //       GATES[LA] <= 1;
 //     end else if(~hall1 && ~hall2 && hall3)begin // C -> B
 //       GATES[HC] <= 1;
 //       GATES[LB] <= 1;
 //     end
 //   end else if ( pwm<0 && pwm_count<(-pwm)) begin
 //     GATES <= 0;
 //     if(hall1 && ~hall2 && hall3) begin // A <- B
 //       GATES[LA] <= 1;
 //       GATES[HB] <= 1;
 //     end else if(hall1 && ~hall2 && ~hall3)begin // A <- C
 //       GATES[LA] <= 1;
 //       GATES[HC] <= 1;
 //     end else if(hall1 && hall2 && ~hall3) begin // B <- C
 //       GATES[LB] <= 1;
 //       GATES[HC] <= 1;
 //     end else if(~hall1 && hall2 && ~hall3)begin // B <- A
 //       GATES[LB] <= 1;
 //       GATES[HA] <= 1;
 //     end else if(~hall1 && hall2 && hall3) begin // C <- A
 //       GATES[LC] <= 1;
 //       GATES[HA] <= 1;
 //     end else if(~hall1 && ~hall2 && hall3)begin // C <- B
 //       GATES[LC] <= 1;
 //       GATES[HB] <= 1;
 //     end
 //   end else begin
 //     GATES <= 0;
 //   end
 //   pwm_count <= pwm_count+1;
 // end

  // wire one_wire;
  // assign PIN_8 = one_wire;
  // reg [23:0] color;
  // always @ ( posedge clk32MHz ) begin
  //   if(pwm<0)begin
  //     color <= -pwm;
  //     color <= color>>3;
  //   end else begin
  //     color <= pwm>>3;
  //   end
  // end
  //
  // neopixel nx(
  //   .clock(clk32MHz),
  //   .reset(1'b0),
  //   .color(color),
  //   .send_to_neopixels(1'b1),
  //   .one_wire(one_wire)
  // );
  //
  // wire tx_o, tx_enable, rx_i;
  // // tristated PULLUP for UART transmitters
  // SB_IO #(
  //   .PIN_TYPE(6'b101001),
  //   .PULLUP(1'b1)
  // ) tx_output(
  //   .PACKAGE_PIN(PIN_12),
  //   .D_OUT_0(tx_o),
  //   .OUTPUT_ENABLE(tx_enable)
  // );
  //
  // assign rx_i = PIN_13;
  //
  // wire signed [23:0] encoder0_position;
  // wire signed [23:0] encoder1_position;
  // reg signed [23:0] displacement;
  // wire signed [23:0] setpoint;
  // wire signed [23:0] Kp;
  // wire signed [23:0] Ki;
  // wire signed [23:0] Kd;
  // wire [7:0] control_mode;
  // wire signed [23:0] PWMLimit;
  // wire signed [23:0] IntegralLimit;
  // wire signed [23:0] deadband;
  // wire signed [23:0] gearBoxRatio;
  //
  // coms c0(
  // 	.CLK(clk32MHz),
	//   .reset(1'b0),
  // 	.tx_o(tx_o),
	//   .tx_enable(tx_enable),
  // 	.rx_i(~rx_i),
  //   .pwm(pwm),
  // 	.encoder0_position(encoder0_position),
  // 	.encoder1_position(encoder1_position),
  //   .displacement(displacement),
  //   .gearBoxRatio(gearBoxRatio),
  // 	.setpoint(setpoint),
  // 	.control_mode(control_mode),
  //   .Kp(Kp),
  //   .Ki(Ki),
  //   .Kd(Kd),
  //   .PWMLimit(PWMLimit),
  //   .IntegralLimit(IntegralLimit),
  //   .deadband(deadband),
  //   .LED(LED)
  // );
  //
  // wire hall1, hall2, hall3;
  // // PULLUP for hall sensors
  // SB_IO #(
  //   .PIN_TYPE(6'b 0000_01),
  //   .PULLUP(1'b 1)
  // ) hall1_input(
  //   .PACKAGE_PIN(PIN_3),
  //   .D_IN_0(hall1)
  // );
  //
  // SB_IO #(
  //   .PIN_TYPE(6'b 0000_01),
  //   .PULLUP(1'b 1)
  // ) hall2_input(
  //   .PACKAGE_PIN(PIN_4),
  //   .D_IN_0(hall2)
  // );
  //
  // SB_IO #(
  //   .PIN_TYPE(6'b 0000_01),
  //   .PULLUP(1'b 1)
  // ) hall3_input(
  //   .PACKAGE_PIN(PIN_5),
  //   .D_IN_0(hall3)
  // );
  //
  // wire HA, LA, HB, LB, HC, LC;
  //
  // assign PIN_19 = HA;
  // assign PIN_20 = LA;
  // assign PIN_21 = HB;
  // assign PIN_22 = LB;
  // assign PIN_23 = HC;
  // assign PIN_24 = LC;
  //
  // wire [5:0] GATES;
  // assign HA = GATES[5];
  // assign LA = GATES[4];
  // assign HB = GATES[3];
  // assign LB = GATES[2];
  // assign HC = GATES[1];
  // assign LC = GATES[0];
  //
  // wire signed [23:0] pwm;
  // wire signed [31:0] motor_state;
  //
  // assign motor_state =
  //   (control_mode==0)?encoder0_position:
  //   (control_mode==1)?encoder1_position:
  //   (control_mode==2)?displacement:
  //   (control_mode==3)?0:
  //   32'd0;
  //
  // motorControl control(
  //   .CLK(clk32MHz),
  //   .reset(1'b0),
  //   .hall1(hall1),
  //   .hall2(hall2),
  //   .hall3(hall3),
  //   .GATES(GATES),
  //   .pwm(pwm),
  //   .setpoint(setpoint),
  //   .state(motor_state),
  //   .Kp(Kp),
  //   .Ki(Ki),
  //   .Kd(Kd),
  //   .PWMLimit(PWMLimit),
  //   .IntegralLimit(IntegralLimit),
  //   .deadband(deadband)
  // );
  //
  // always @ ( posedge clk32MHz ) begin
  //   displacement <= (encoder0_position/gearBoxRatio) - (encoder1_position>>>3);
  // end
  //
  // // encoder0
  // quad #(100) quad_counter0 (
  //   .clk(clk32MHz),
  //   .quadA(PIN_2),
  //   .quadB(PIN_1),
  //   .count(encoder0_position)
  // );
  //
  // // encoder1
  // quad #(100) quad_counter1 (
  //   .clk(clk32MHz),
  //   .quadA(PIN_7),
  //   .quadB(PIN_6),
  //   .count(encoder1_position)
  // );

endmodule
