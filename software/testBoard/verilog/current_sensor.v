module current_sensor #(parameter CLK_FREQ_HZ = 32_000_000, parameter UPDATE_FREQ_HZ = 100)(
    input clk,
    input miso,
    output ss_n,
    output sck,
    output reg [15:0] current
  );

  wire di_req, wr_ack, do_valid, wren, spi_done, ss_n;
  wire [0:15] Word;
  wire [15:0] data_out;
  // SPI specs: 3.5MHz, 16bit MSB, clock phase of 1
  spi_master #(16, 1'b0, 1'b1, 2, 5) spi(
  	.sclk_i(clk),
  	.pclk_i(clk),
  	.rst_i(1'b0),
  	.spi_miso_i(miso),
  	.di_i(Word[15:0]),
  	.wren_i(wren),
  	.spi_ssel_o(ss_n),
  	.spi_sck_o(sck),
  	.spi_mosi_o(1'b0),
  	.di_req_o(di_req),
  	.wr_ack_o(wr_ack),
  	.do_valid_o(do_valid),
  	.do_o(data_out[15:0])
  );

  reg [31:0] update_delay_counter;
  reg do_valid_prev;
  always @(posedge clk) begin : CURRENT_SENSOR_READOUT
    wren <= 0;
    if(update_delay_counter==0) begin
      update_delay_counter <= CLK_FREQ_HZ/UPDATE_FREQ_HZ;
      wren <= 1;
    end else begin
      update_delay_counter <= update_delay_counter - 1;
    end
    do_valid_prev <= do_valid;
    if(do_valid==1 && do_valid_prev==0)begin
      current <= data_out[14:0];
    end

  end

endmodule
