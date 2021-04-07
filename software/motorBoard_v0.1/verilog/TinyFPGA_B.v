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
  inout SCL,
  inout SDA,
  output INLC,
  output INHC,
  output INLB,
  output INHB,
  output INLA,
  output INHA
);

////// Common parameters //////

localparam GEAR_RATIO = 53;

//////


// drive USB pull-up resistor to '0' to disable USB
assign USBPU = 0;

wire clk16MHz, clk32MHz;
pll32MHz pll32MHz_inst(.REFERENCECLK(CLK),
  // .PLLOUTGLOBAL(clk32MHz),
  .PLLOUTCORE(clk32MHz),
  .RESET(1'b1) // active low
);

SB_GB My_Global_Buffer_i (// required for a user’s internally generated FPGA signal that is
                          //heavily loaded and requires global buffering. For example, a user’s logic-generated clock.
  .USER_SIGNAL_TO_GLOBAL_BUFFER (CLK),
  .GLOBAL_BUFFER_OUTPUT ( clk16MHz)
);

wire [7:0] ID;
reg reset;

wire [23:0] neopxl_color;

neopixel #(16_000_000) nx(
 .clock(clk16MHz),
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
 reg dir, enable;
 reg GHA, GLA, GHB, GLB, GHC, GLC;
 assign INHA = (GHA?pwm_out:0);
 assign INLA = (GLA?1:0);
 assign INHB = (GHB?pwm_out:0);
 assign INLB = (GLB?1:0);
 assign INHC = (GHC?pwm_out:0);
 assign INLC = (GLC?1:0);

 reg signed [23:0] pwm_setpoint;
 wire signed [23:0] duty;
 pwm PWM(
   .clk(clk32MHz),
   .reset(reset),
   .duty(pwm_setpoint),
   .pwm_out(pwm_out)
 );

 always @(posedge clk16MHz) begin: DIRECTION
   enable <= 1;
   if(duty>=0)begin
     if(current<current_limit)begin // if the current is below the current limit
      pwm_setpoint <= duty;
     end else begin
      if(duty>current)begin
        pwm_setpoint <= (duty>>>3);
      end else begin
        pwm_setpoint <= current;
      end
     end
     dir <= 1;
   end else begin
     if(current<current_limit)begin // if the current is below the current limit
       pwm_setpoint <= -duty;
     end else begin
       if(duty<-current)begin
        pwm_setpoint <= -(duty>>>3);
       end else begin
        pwm_setpoint <= current;
       end
     end
     dir <= 0;
   end
 end

 reg [7:0] commutation_state;
 reg [7:0] commutation_state_prev;
 localparam  A = 0;
 localparam  B = 1;
 localparam  C = 2;
 localparam  D = 3;
 localparam  E = 4;
 localparam  F = 5;

 reg dti;
 reg [7:0] dti_counter;

 always @(posedge clk16MHz) begin: BLDC_COMMUTATION
   commutation_state_prev <= commutation_state;

   if(commutation_state!=commutation_state_prev)begin
     dti <= 1;
     dti_counter <= 1024;
   end

   if(hall1 && ~hall2 && hall3)begin
     commutation_state <= A;
   end
   if(hall1 && ~hall2 && ~hall3)begin
     commutation_state <= B;
   end
   if(hall1 && hall2 && ~hall3)begin
     commutation_state <= C;
   end
   if(~hall1 && hall2 && ~hall3)begin
     commutation_state <= D;
   end
   if(~hall1 && hall2 && hall3)begin
     commutation_state <= E;
   end
   if(~hall1 && ~hall2 && hall3)begin
     commutation_state <= F;
   end

   if(dti) begin
     if(dti_counter==0)begin
       dti <= 0;
     end else begin
       dti_counter <= dti_counter -1;
       GHA <= 0; GLA <= 0; GHB <= 0; GLB <= 0; GHC <= 0; GLC <= 0;
     end
   end else begin
    if(dir)begin
      case(commutation_state)
         B: begin
           GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 0; GLC <= 0;
         end
         C: begin
           GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 0; GHC <= 0; GLC <= 1;
         end
         D: begin
           GHA <= 0; GLA <= 0; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 1;
         end
         E: begin
           GHA <= 0; GLA <= 1; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 0;
         end
         F: begin
           GHA <= 0; GLA <= 1; GHB <= 0; GLB <= 0; GHC <= 1; GLC <= 0;
         end
         A: begin
           GHA <= 0; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 1; GLC <= 0;
         end
       endcase
     end else begin
      case(commutation_state)
        B: begin
          GHA <= 0; GLA <= 1; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 0;
        end
        C: begin
          GHA <= 0; GLA <= 1; GHB <= 0; GLB <= 0; GHC <= 1; GLC <= 0;
        end
        D: begin
          GHA <= 0; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 1; GLC <= 0;
        end
        E: begin
          GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 0; GLC <= 0;
        end
        F: begin
          GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 0; GHC <= 0; GLC <= 1;
        end
        A: begin
          GHA <= 0; GLA <= 0; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 1;
        end
      endcase
     end
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

  wire dir_encoder0;
  wire dir_encoder1;
  integer encoder0_position;
  reg signed [23:0] encoder0_position_scaled;
  integer encoder1_position;
  reg signed [23:0] encoder1_position_scaled;
  reg signed [23:0] displacement;
  wire signed [23:0] setpoint;
  wire signed [23:0] Kp;
  wire signed [23:0] Ki;
  wire signed [23:0] Kd;
  wire [7:0] control_mode;
  wire signed [23:0] PWMLimit;
  wire signed [23:0] IntegralLimit;
  wire signed [23:0] deadband;
  wire signed [15:0] current;
  wire signed [15:0] current_limit;
  wire driver_enable;
  wire [31:0] baudrate;

  coms #(16_000_000) c0(
    .CLK(clk16MHz),
    .baudrate(baudrate),
    .reset(reset),
    .tx_o(tx_o),
    .tx_enable(tx_enable),
    .driver_enable(DE),
    .rx_i(~RX),
    .ID(ID),
    .duty(pwm_setpoint),
    .encoder0_position(encoder0_position_scaled),
    .encoder1_position(encoder1_position_scaled),
    .displacement(displacement),
    .setpoint(setpoint),
    .control_mode(control_mode),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .current(current),
    .current_limit(current_limit),
    .deadband(deadband),
    .neopxl_color(neopxl_color),
    .LED(LED)
  );

  wire signed [23:0] motor_state;

  assign motor_state =
    (control_mode==0)?encoder0_position_scaled:
    (control_mode==1)?encoder1_position_scaled:
    (control_mode==2)?displacement:
    32'd0;

  motorControl control(
    .CLK(clk16MHz),
    .reset(reset),
    .duty(duty),
    .setpoint(setpoint),
    .state(motor_state),
    .Kp(Kp),
    .Ki(Ki),
    .Kd(Kd),
    .PWMLimit(PWMLimit),
    .IntegralLimit(IntegralLimit),
    .deadband(deadband),
    .control_mode(control_mode)
  );

  quadrature_decoder #(0) quad_counter0(
      .clk(clk16MHz),
      .a(ENCODER0_A),
      .b(ENCODER0_B),
      .direction(dir_encoder0),
      .position(encoder0_position)
    )/* synthesis syn_noprune = 1 */;

  quadrature_decoder #(0) quad_counter1(
      .clk(clk16MHz),
      .a(ENCODER1_A),
      .b(ENCODER1_B),
      .direction(dir_encoder1),
      .position(encoder1_position)
    )/* synthesis syn_noprune = 1 */;

  always @(posedge clk16MHz) begin: DISPLACEMENT_CALCULATION
    encoder0_position_scaled <= encoder0_position<<<2;
    encoder1_position_scaled <= encoder1_position*GEAR_RATIO;
    displacement <= (encoder0_position_scaled-encoder1_position_scaled);
  end

  reg [10:0] addr;
  wire [7:0] data;
  wire data_ready;

  wire sda_out, sda_in, sda_enable, scl, scl_enable;
  // tristated PULLUP for i2c
  SB_IO #(
    .PIN_TYPE(6'b101001),
    .PULLUP(1'b1)
  ) sda_output(
    .PACKAGE_PIN(SDA),
    .D_OUT_0(sda_out),
    .D_IN_0(sda_in),
    .OUTPUT_ENABLE(sda_enable)
  );

  SB_IO #(
    .PIN_TYPE(6'b101001),
    .PULLUP(1'b1)
  ) scl_output(
    .PACKAGE_PIN(SCL),
    .D_OUT_0(scl),
    .OUTPUT_ENABLE(scl_enable)
  );

  integer delay_counter = 0;
  reg read = 1'b0;

  localparam  IDLE = 0;
  localparam  WAIT = 1;
  localparam  DONE = 2;

  always @ ( posedge clk16MHz ) begin: ID_READOUT_FSM
    reg [2:0] state;
    read <= 1'b0;
    case(state)
      IDLE: begin
        reset <= 1'b1;
        delay_counter <= delay_counter + 1;
        if(delay_counter>16_000_00)begin // after 100ms we read the eeprom
          delay_counter <= 0;
          read <= 1'b1;
          state <= WAIT;
        end
      end
      WAIT: begin
        if(data_ready)begin
          state <= DONE;
        end
      end
      DONE: begin
        if(ID==0 || baudrate==0)begin
          delay_counter <= delay_counter + 1;
          if(delay_counter>16_000_000) begin // check every second
            delay_counter <= 0;
            state <= IDLE;
          end
        end else begin
          reset <= 1'b0;
        end
      end
    endcase
  end

  EEPROM eeprom(
    .clk(clk16MHz),
    .addr(addr),
    .id(ID),
    .baudrate(baudrate),
    .read(read),
    .data_ready(data_ready),
    .scl(scl),
    .scl_enable(scl_enable),
    .sda_in(sda_in),
    .sda_out(sda_out),
    .sda_enable(sda_enable)
    );

  TLI4970 tli(
    .clk(clk16MHz),
    .current(current),
    .spi_miso(CS_MISO),
    .spi_cs(CS),
    .spi_clk(CS_CLK)
  );

endmodule
