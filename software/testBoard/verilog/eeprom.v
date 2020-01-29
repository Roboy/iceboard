module EEPROM(
    input clk,
    input [10:0] addr,
    output [7:0] data,
    output data_ready,
    inout sda,
    output sda_enable,
    inout scl,
    output scl_enable
  )/* synthesis syn_noprune = 1 */;

assign sda_enable = ena;
reg ena;
wire busy;
wire fifo_write_ack;
wire ack_error;
wire [7:0] byte_counter;
reg [7:0] number_of_bytes;
wire [31:0] data_rd;
reg reset_n;
integer delay_counter;

always @ ( posedge clk ) begin
  ena <= 0;
  reset_n <= 1;
  delay_counter <= delay_counter + 1;
  if((delay_counter%16_000)==0)begin
    ena <= 1;
    number_of_bytes<=3;
  end
end

i2c_master #(16_000_000,400_000)i2c(
  .clk(clk),
  .reset_n(reset_n),
  .ena(ena),
  .addr({4'b1010,addr[10:8]}),
  .rw(1),//'0' is write, '1' is read
  .data_wr({addr[7:0],24'hffffff}),
  .busy(busy),
  .data_rd(data_rd),
  .fifo_write_ack(fifo_write_ack),
  .ack_error(ack_error),
  .sda(sda),
  .scl(scl),
  .byte_counter(byte_counter),
  .read_only(0),
  .number_of_bytes(number_of_bytes)
  );

endmodule
