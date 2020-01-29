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

reg enable;
wire ready;
reg reset;
reg rw;
integer eeprom_counter;

assign data_ready = ready;

always @ ( posedge clk ) begin
  reset <= 0;
  enable <= 0;
  eeprom_counter <= eeprom_counter + 1;
  if((eeprom_counter%16_000_000)==0) begin
    enable <= 1;
    rw <= 0;
  end
end

i2c_controller i2c(
  .clk(clk),
  .rst(reset),
  .addr({4'b1010,addr[10:8]}),
  .data_in(addr[7:0]),
  .rw(rw),//'0' is write, '1' is read
  .read(1'b1),
  .enable(enable),
  .data_out(data),
  .ready(ready),
  .i2c_sda(sda),
  .i2c_scl(scl),
  .sda_enable(sda_enable),
  .scl_enable(scl_enable)
  );

endmodule
