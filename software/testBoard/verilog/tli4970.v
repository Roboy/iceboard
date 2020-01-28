module TLI4970(
  input clk,
  output reg [14:0] current,
  input spi_miso,
  output spi_cs,
  output spi_clk

  );

  wire di_req, wr_ack, do_valid;
  reg wren, reset;
  // wire [15:0] Word, cs_mosi;
  wire [15:0] data_out;
  integer delay_counter;
  reg [15:0] Word;
  wire cs_mosi;

  always @(posedge clk) begin: TLI4970_READOUT_LOGIC
    wren <= 0;
    reset <= 0;
    if(delay_counter>64_000)begin
      if(spi_cs==1)begin
      	if(data_out[15]==0)begin
      		current <= data_out[12:0];
      	end
        delay_counter <= 0;
        wren <= 1;
      end
    end else begin
      delay_counter <= delay_counter+1;
      wren <= 0;
    end
  end

  // SPI specs: 16bit, pol 0 phase 0, 1MHz
  spi_master #(16, 1'b0, 1'b1, 2, 16) spi(
    .sclk_i(clk),
    .pclk_i(clk),
    .rst_i(1'b0),
    .spi_miso_i(spi_miso),
    .di_i(delay_counter),
    .wren_i(wren),
    .spi_ssel_o(spi_cs),
    .spi_sck_o(cs_clk),
    .spi_mosi_o(cs_mosi),
    .di_req_o(di_req),
    .wr_ack_o(wr_ack),
    .do_valid_o(do_valid),
    .do_o(data_out)
  )/* synthesis syn_noprune = 1 */;

  endmodule
