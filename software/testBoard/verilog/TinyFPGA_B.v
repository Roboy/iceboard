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
  // drive USB pull-up resistor to '0' to disable USB
assign USBPU = 0;

////////
// make a simple blink circuit
////////

// keep track of time and location in blink_pattern
reg [25:0] blink_counter;

// pattern that will be flashed over the LED over time
wire [31:0] blink_pattern = 32'b101010001110111011100010101;

// increment the blink_counter every clock
always @(posedge CLK) begin
    blink_counter <= blink_counter + 1;
end

// light up the LED according to the pattern
assign LED = blink_pattern[blink_counter[25:21]];

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
reg GHA, GLA, GHB, GLB, GHC, GLC;
assign INHA = (GHA?pwm_out:0);
assign INLA = (GLA?1:0);
assign INHB = (GHB?pwm_out:0);
assign INLB = (GLB?1:0);
assign INHC = (GHC?pwm_out:0);
assign INLC = (GLC?1:0);

reg signed [23:0] pwm_setpoint;
reg signed [23:0] duty;
pwm PWM(
  .clk(CLK),
  .reset(reset),
  .duty(pwm_setpoint),
  .pwm_out(pwm_out)
);

wire h1, h2, h3;

grp_debouncer #(3,1000) debounce(
  .clk_i(CLK),
  .data_i({hall1,hall2,hall3}),
  .data_o({h1,h2,h3})
);

always @(posedge CLK) begin: DIRECTION
  enable <= 1;
  reset <= 0;
  if(duty>=0)begin
    pwm_setpoint <= duty;
    dir <= 1;
  end else begin
    pwm_setpoint <= -duty;
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

integer sweep_counter;

wire dir_encoder0;
integer encoder0_position;
reg direction;
reg signed [23:0] encoder0_position_scaled;
reg signed [23:0] encoder0_position_target;

always @(posedge CLK) begin: BLDC_COMMUTATION
  commutation_state_prev <= commutation_state;
  encoder0_position_scaled <= encoder0_position/53;

  if(commutation_state!=commutation_state_prev)begin
    dti <= 1;
    dti_counter <= 1024;
  end

  sweep_counter <= sweep_counter + 1;
  if(sweep_counter==16_000_0)begin
    sweep_counter <= 0;
    if(encoder0_position_target>-4000)begin
        encoder0_position_target <= encoder0_position_target - 1;
    end else begin
        encoder0_position_target <= 0;
    end
  end

  duty <= (encoder0_position_target-encoder0_position_scaled);

  if(h1 && ~h2 && h3)begin
    commutation_state <= A;
  end
  if(h1 && ~h2 && ~h3)begin
    commutation_state <= B;
  end
  if(h1 && h2 && ~h3)begin
    commutation_state <= C;
  end
  if(~h1 && h2 && ~h3)begin
    commutation_state <= D;
  end
  if(~h1 && h2 && h3)begin
    commutation_state <= E;
  end
  if(~h1 && ~h2 && h3)begin
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
        A: begin
          GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 0; GLC <= 0;
        end
        B: begin
          GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 0; GHC <= 0; GLC <= 1;
        end
        C: begin
          GHA <= 0; GLA <= 0; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 1;
        end
        D: begin
          GHA <= 0; GLA <= 1; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 0;
        end
        E: begin
          GHA <= 0; GLA <= 1; GHB <= 0; GLB <= 0; GHC <= 1; GLC <= 0;
        end
        F: begin
          GHA <= 0; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 1; GLC <= 0;
        end
      endcase
    end else begin
     case(commutation_state)
       A: begin
         GHA <= 0; GLA <= 1; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 0;
       end
       B: begin
         GHA <= 0; GLA <= 1; GHB <= 0; GLB <= 0; GHC <= 1; GLC <= 0;
       end
       C: begin
         GHA <= 0; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 1; GLC <= 0;
       end
       D: begin
         GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 1; GHC <= 0; GLC <= 0;
       end
       E: begin
         GHA <= 1; GLA <= 0; GHB <= 0; GLB <= 0; GHC <= 0; GLC <= 1;
       end
       F: begin
         GHA <= 0; GLA <= 0; GHB <= 1; GLB <= 0; GHC <= 0; GLC <= 1;
       end
     endcase
    end
  end
end



quadrature_decoder #((16_000_000/10_000_000),500_000) quad_counter0(
    .clk(CLK),
    .a(ENCODER0_A),
    .b(ENCODER0_B),
    .set_origin_n(1'b1),
    .direction(dir_encoder0),
    .position(encoder0_position)
  )/* synthesis syn_noprune = 1 */;

endmodule
