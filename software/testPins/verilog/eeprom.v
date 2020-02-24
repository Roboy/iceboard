module EEPROM(
    input clk,
    input [10:0] addr,
    output [7:0] data,
    input read,
    output reg data_ready,
    output wire sda_out,
    input wire sda_in,
    output sda_enable,
    inout wire scl,
    output scl_enable
  )/* synthesis syn_noprune = 1 */;

localparam  IDLE = 0;
localparam  DUMMY_WRITE = 1;
localparam  READ = 2;

reg enable;
wire ready;
reg ready_prev;
reg reset;
reg rw;
reg [7:0] state;
reg [15:0] delay_counter;

always @ ( posedge clk ) begin: EEPROM_READOUT_FSM
  enable <= 1'b0;
  ready_prev <= ready;
  case(state)
    IDLE: begin
      reset <= 0;
      data_ready <= 1'b0;
      if(read)begin
        rw <= 1'b0; // write
        enable <= 1'b1;
        state <= DUMMY_WRITE;
        delay_counter <= 2000;
      end
    end
    DUMMY_WRITE: begin
      if(ready)begin
        if(delay_counter==0)begin
          rw <= 1'b1; // read
          enable <= 1'b1;
          state <= READ;
        end else begin
          delay_counter <= delay_counter-1;
        end
      end
    end
    READ: begin
      if(ready)begin
        data_ready <= 1'b1;
        state <= IDLE;
      end
    end
  endcase
end

i2c_controller i2c(
  .clk(clk),
  .rst(reset),
  .addr({4'b1010,addr[10:8]}),
  .data_in(addr[7:0]),
  .rw(rw),//'0' is write, '1' is read
  .enable(enable),
  .data_out(data),
  .ready(ready),
  .i2c_sda_out(sda_out),
  .i2c_sda_in(sda_in),
  .i2c_scl(scl),
  .sda_enable(sda_enable),
  .scl_enable(scl_enable)
  );

endmodule
