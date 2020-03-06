module EEPROM(
    input clk,
    input [10:0] addr,
    output [7:0] id,
    output [31:0] baudrate,
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
localparam  WAIT_FOR_READ = 3;
localparam  CHECK_DONE = 4;

reg enable;
wire ready;
wire [7:0] data;
reg ready_prev;
reg reset;
reg rw;
reg [7:0] state;
reg [15:0] delay_counter;
reg [7:0] bytes[4:0];
integer byte_counter;

assign id = bytes[0];
assign baudrate = {bytes[4],bytes[3],bytes[2],bytes[1]};

always @ ( posedge clk ) begin: EEPROM_READOUT_FSM
  enable <= 1'b0;
  ready_prev <= ready;
  case(state)
    IDLE: begin
      reset <= 0;
      data_ready <= 1'b0;
      if(read)begin
        state <= DUMMY_WRITE;
        byte_counter <= 0;
      end
    end
    DUMMY_WRITE: begin
      rw <= 1'b0; // write
      enable <= 1'b1;
      delay_counter <= 2000;
      state <= READ;
    end
    READ: begin
      if(ready)begin
        if(delay_counter==0)begin
          rw <= 1'b1; // read
          enable <= 1'b1;
          state <= WAIT_FOR_READ;
        end else begin
          delay_counter <= delay_counter-1;
        end
      end
    end
    WAIT_FOR_READ: begin
      if(ready && !ready_prev)begin
        bytes[byte_counter] <= data;
        state <= CHECK_DONE;
        byte_counter <= byte_counter+1;
      end
    end
    CHECK_DONE: begin
      if(byte_counter<5)begin
        state <= READ;
        delay_counter <= 2000;
      end else begin
        // id <= bytes[0];
        // baudrate <= {bytes[4],bytes[3],bytes[2],bytes[1]};
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
