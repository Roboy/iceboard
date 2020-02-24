// look in pins.pcf for all the pin names on the TinyFPGA BX board
module TinyFPGA_B (
  input CLK,    // 16MHz clock
  output LED,   // User/boot LED next to power LED
  inout USBPU,  // USB pull-up resistor
  inout ENCODER0_A,
  inout ENCODER0_B,
  inout ENCODER1_A,
  inout ENCODER1_B,
  inout HALL1,
  inout HALL2,
  inout HALL3,
  inout FAULT_N,
  inout NEOPXL,
  inout DE,
  inout TX,
  inout RX,
  inout CS_CLK,
  inout CS,
  inout CS_MISO,
  inout SCL,
  inout SDA,
  inout INLC,
  inout INHC,
  inout INLB,
  inout INHB,
  inout INLA,
  inout INHA
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

reg update_color;
reg [23:0] neopxl_color;
reg [23:0] neopxl_color_prev;

neopixel #(16_000_000) nx(
 .clock(CLK),
 .reset(1'b0),
 .color(neopxl_color),
 .send_to_neopixels(update_color),
 .one_wire(NEOPXL)
);

wire [22:0] pin_out;
wire [22:0] pin_in;
wire [22:0] pin_oe;

 // = {USBPU,ENCODER0_A,ENCODER0_B,ENCODER1_A,ENCODER1_B,HALL1,HALL2,
 //    HALL3,FAULT_N,DE,TX,RX,CS_CLK,CS,CS_MISO,SCL,SDA,INLC,INHC,INLB,INHB,INLA,INHA};

SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin0(.PACKAGE_PIN(USBPU),.D_OUT_0(pin_out[0]),.D_IN_0(pin_in[0]),.OUTPUT_ENABLE(pin_oe[0]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin1(.PACKAGE_PIN(ENCODER0_A),.D_OUT_0(pin_out[1]),.D_IN_0(pin_in[1]),.OUTPUT_ENABLE(pin_oe[1]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin2(.PACKAGE_PIN(ENCODER0_B),.D_OUT_0(pin_out[2]),.D_IN_0(pin_in[2]),.OUTPUT_ENABLE(pin_oe[2]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin3(.PACKAGE_PIN(ENCODER1_A),.D_OUT_0(pin_out[3]),.D_IN_0(pin_in[3]),.OUTPUT_ENABLE(pin_oe[3]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin4(.PACKAGE_PIN(ENCODER1_B),.D_OUT_0(pin_out[4]),.D_IN_0(pin_in[4]),.OUTPUT_ENABLE(pin_oe[4]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin5(.PACKAGE_PIN(HALL1),.D_OUT_0(pin_out[5]),.D_IN_0(pin_in[5]),.OUTPUT_ENABLE(pin_oe[5]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin6(.PACKAGE_PIN(HALL2),.D_OUT_0(pin_out[6]),.D_IN_0(pin_in[6]),.OUTPUT_ENABLE(pin_oe[6]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin7(.PACKAGE_PIN(HALL3),.D_OUT_0(pin_out[7]),.D_IN_0(pin_in[7]),.OUTPUT_ENABLE(pin_oe[7]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin8(.PACKAGE_PIN(FAULT_N),.D_OUT_0(pin_out[8]),.D_IN_0(pin_in[8]),.OUTPUT_ENABLE(pin_oe[8]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin9(.PACKAGE_PIN(DE),.D_OUT_0(pin_out[9]),.D_IN_0(pin_in[9]),.OUTPUT_ENABLE(pin_oe[9]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin10(.PACKAGE_PIN(TX),.D_OUT_0(pin_out[10]),.D_IN_0(pin_in[10]),.OUTPUT_ENABLE(pin_oe[10]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin11(.PACKAGE_PIN(RX),.D_OUT_0(pin_out[11]),.D_IN_0(pin_in[11]),.OUTPUT_ENABLE(pin_oe[11]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin12(.PACKAGE_PIN(CS_CLK),.D_OUT_0(pin_out[12]),.D_IN_0(pin_in[12]),.OUTPUT_ENABLE(pin_oe[12]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin13(.PACKAGE_PIN(CS),.D_OUT_0(pin_out[13]),.D_IN_0(pin_in[13]),.OUTPUT_ENABLE(pin_oe[13]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin14(.PACKAGE_PIN(CS_MISO),.D_OUT_0(pin_out[14]),.D_IN_0(pin_in[14]),.OUTPUT_ENABLE(pin_oe[14]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin15(.PACKAGE_PIN(SCL),.D_OUT_0(pin_out[15]),.D_IN_0(pin_in[15]),.OUTPUT_ENABLE(pin_oe[15]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin16(.PACKAGE_PIN(SDA),.D_OUT_0(pin_out[16]),.D_IN_0(pin_in[16]),.OUTPUT_ENABLE(pin_oe[16]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin17(.PACKAGE_PIN(INLC),.D_OUT_0(pin_out[17]),.D_IN_0(pin_in[17]),.OUTPUT_ENABLE(pin_oe[17]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin18(.PACKAGE_PIN(INHC),.D_OUT_0(pin_out[18]),.D_IN_0(pin_in[18]),.OUTPUT_ENABLE(pin_oe[18]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin19(.PACKAGE_PIN(INLB),.D_OUT_0(pin_out[19]),.D_IN_0(pin_in[19]),.OUTPUT_ENABLE(pin_oe[19]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin20(.PACKAGE_PIN(INHB),.D_OUT_0(pin_out[20]),.D_IN_0(pin_in[20]),.OUTPUT_ENABLE(pin_oe[20]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin21(.PACKAGE_PIN(INLA),.D_OUT_0(pin_out[21]),.D_IN_0(pin_in[21]),.OUTPUT_ENABLE(pin_oe[21]));
SB_IO #( .PIN_TYPE(6'b101001), .PULLUP(1'b1) ) pin22(.PACKAGE_PIN(INHA),.D_OUT_0(pin_out[22]),.D_IN_0(pin_in[22]),.OUTPUT_ENABLE(pin_oe[22]));

localparam  IDLE = 0, ENABLE_OUTPUT = 1, TOGGLE = 2, SUCCESS = 3, FAIL = 4;

reg [7:0] state;
reg [7:0] current_pin;
reg [22:0] pin_input;
reg [22:0] pin_output;
reg [22:0] pin_output_enable;
reg [7:0] counter;
integer delay_counter;

assign pin_out = pin_output;
assign pin_oe = pin_output_enable;

always @ ( posedge CLK ) begin: TEST_PINS_FSM
  neopxl_color_prev <= neopxl_color;
  if(neopxl_color!=neopxl_color_prev)begin
    update_color <= 1;
  end else begin
    update_color <= 0;
  end

  case(state)
    IDLE: begin
      current_pin <= 0;
      state <= ENABLE_OUTPUT;
      update_color <= 1;
    end
    ENABLE_OUTPUT: begin
      counter <= 255;
      pin_output[current_pin] = 0;
      pin_output_enable[current_pin] <= 1;
      state <= TOGGLE;
    end
    TOGGLE: begin
      pin_output[current_pin] <= !pin_output[current_pin];
      if(counter>0)begin
        if(pin_in[current_pin]!=pin_output[current_pin])begin
          state <= FAIL;
        end
        counter <= counter -1;
      end else begin
        current_pin <= current_pin+1;
        if(current_pin>23)begin
          state <= SUCCESS;
        end else begin
          pin_output_enable <= 0;
          state <= ENABLE_OUTPUT;
        end
      end
    end
    SUCCESS: begin
      neopxl_color <= 24'h0000f0; // green
      delay_counter <= delay_counter+1;
      if(delay_counter>16_000_00)begin
        delay_counter <= 0;
        state <= IDLE;
      end
    end
    FAIL: begin
      neopxl_color <= 24'h00f000; // red
      state <= IDLE;
    end
  endcase
end

endmodule
