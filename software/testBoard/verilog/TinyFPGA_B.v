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
    //assign INHA = blink_counter[8];
    //assign INLA = blink_counter[9];
    //assign INHB = blink_counter[10];
    //assign INLB = blink_counter[11];
    //assign INHC = blink_counter[12];
    //assign INLC = blink_counter[13];

    //wire pwm_out;
    //assign SDA = pwm_out;
    //assign INLA = 1;

    //integer sweep_counter;
   // reg [23:0] duty;

   // always @(posedge CLK) begin: SWEEP
     //   sweep_counter <= sweep_counter + 1;
       // if((sweep_counter%16_000)==0)begin
       //  duty <= duty + 1;
       // end
       // if(duty>1000)begin
       //     duty <= 0;
       // end
//    end

  //  pwm PWM(
    //   .clk(CLK),
      // .reset(1'b0),
      // .duty(duty),
      // .pwm_out(pwm_out)
    // );

    wire [14:0] current;

    TLI4970 tli(
        .clk(CLK),
        .spi_miso(CS_MISO),
        .spi_cs(CS),
        .spi_clk(CS_CLK),
        .current(current)
      )/* synthesis syn_noprune = 1 */;

endmodule
