module motorControl(
    input CLK,
    input reset,
    output signed [23:0] duty,
    input signed [23:0] setpoint,
    input signed [23:0] state,
    input signed [23:0] Kp,
    input signed [23:0] Ki,
    input signed [23:0] Kd,
    input signed [23:0] PWMLimit,
    input signed [23:0] IntegralLimit,
    input signed [23:0] deadband
  );

  localparam  CLOCK_FREQ = 16_000_000;
  localparam  CONTROL_FREQ = 1000;

  // if we use the err_prev every clock tick, Kd is effectively useless
  reg [6:0] Kd_delay_counter;
  reg signed [23:0] result;
  assign duty = result;
  reg control_update;
  integer counter;

  always @ ( posedge CLK ) begin
    counter <= counter+1;
    control_update <= 0;
    if(counter>(CLOCK_FREQ/CONTROL_FREQ))begin
      counter <= 0;
      control_update <= 1;
    end
  end

  always @ ( posedge CLK , posedge reset) begin: PID_CONTROLLER
    reg signed [23:0] err;
    reg signed [23:0] err_prev;
    reg signed [23:0] integral;
    if(reset)begin
      err = 0;
      err_prev <= 0;
      result = 0;
      integral = 0;
    end else begin
      if(control_update)begin
        err = (setpoint-state);
        integral = integral+err;
        if(integral>IntegralLimit) begin
          integral = IntegralLimit;
        end else if(integral<-IntegralLimit) begin
          integral = -IntegralLimit;
        end
        result = Kp*err + Ki*integral;
        if((result>deadband) || (result < -deadband))begin
          if(result>PWMLimit)begin
            result = PWMLimit;
          end else if(result<-PWMLimit)begin
            result = -PWMLimit;
          end
        end else begin
          result = 0;
        end
      end
    end
  end

endmodule
