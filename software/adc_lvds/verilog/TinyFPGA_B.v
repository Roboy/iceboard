// look in pins.pcf for all the pin names on the TinyFPGA BX board
module TinyFPGA_B (
  input CLK,    // 16MHz clock
  output LED,   // User/boot LED next to power LED
  inout USBPU,  // USB pull-up resistor
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
  inout PIN_24,
  inout SPI_IO2
);
//   // drive USB pull-up resistor to '0' to disable USB
// assign USBPU = 0;

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

wire diff_input;
reg oversampler;

// Differential input, DDR data
defparam differential_input.PIN_TYPE = 6'b000001 ; // {NO_OUTPUT, PIN_INPUT}
defparam differential_input.IO_STANDARD = "SB_LVDS_INPUT" ;
SB_IO differential_input (
.PACKAGE_PIN(PIN_13),
.INPUT_CLK (CLK),
.D_IN_0 (diff_input)
);

reg clk_slow;
integer clk_divider;
assign PIN_18 = oversampler;

// always @ ( posedge CLK ) begin
//   clk_divider <= clk_divider + 1;
//   if(clk_divider>=16)begin
//     clk_divider <= 0;
//     clk_slow <= !clk_slow;
//   end
// end

always @ ( posedge CLK ) begin
  oversampler<=diff_input;
end

endmodule
