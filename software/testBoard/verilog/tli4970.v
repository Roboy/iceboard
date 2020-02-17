module TLI4970(
  input clk,
  output reg [12:0] current,
  input spi_miso,
  output spi_cs,
  output spi_clk
  )/* synthesis syn_noprune = 1*/;
  localparam  CLOCK_FREQ = 16_000_000;
  localparam  CLOCK_DIVIDER = 16;
  localparam  UPDATE_FREQ = 100;
  reg clk_slow;
  reg [7:0] counter;
  always @ ( posedge clk ) begin: CLK_GENERATOR
    counter <= counter + 1;
    if(counter>CLOCK_DIVIDER)begin
      clk_slow <= !clk_slow;
      counter <= 0;
    end
  end

  reg clk_out;
  reg slave_select;
  assign spi_clk = (slave_select?1:clk_slow)&clk_out;
  assign spi_cs = slave_select;

  reg [7:0] bit_counter;
  reg [15:0] data;
  reg [15:0] delay_counter;
  reg [7:0] state;

  localparam  IDLE = 0, SLAVE_SELECT = 1, CLOCK_DATA = 2, STOP = 3;

  always @(negedge clk_slow) begin: TLI4970_READOUT_LOGIC
    if(delay_counter>(CLOCK_FREQ/CLOCK_DIVIDER/UPDATE_FREQ))begin
      state <= SLAVE_SELECT;
      delay_counter <= 0;
    end else begin
      delay_counter <= delay_counter+1;
    end

    case(state)
      IDLE: begin
        slave_select <= 1;
      end
      SLAVE_SELECT: begin
        slave_select <= 0;
        clk_out <= 1;
        state <= CLOCK_DATA;
        bit_counter <= 15;
      end
      CLOCK_DATA: begin
        data[bit_counter] <= spi_miso;
        bit_counter <= bit_counter - 1;
        if(bit_counter==0)begin
          state <= STOP;
          clk_out <= 0;
        end
      end
      STOP: begin
        if(data[15]==0)begin
          current <= data[12:0];
        end
        state <= IDLE;
      end
    endcase
  end

  endmodule
