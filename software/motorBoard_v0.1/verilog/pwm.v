module pwm(
  input clk,
  input reset,
  input [23:0] duty,
  output reg pwm_out
);

localparam CLK_FREQ   = 32_000_000;
localparam PWM_FREQ   = 20_000;

integer pwm_counter;

always @(posedge clk, posedge reset) begin: PWM
  if(reset) begin
    pwm_counter <= 0;
  end else begin
    pwm_counter <= pwm_counter+1;
    if(pwm_counter>=(CLK_FREQ/PWM_FREQ)) begin
      pwm_counter <= 0;
    end
    if(pwm_counter<duty)begin
      pwm_out <= 1;
    end else begin
      pwm_out <= 0;
    end
  end
end


endmodule
