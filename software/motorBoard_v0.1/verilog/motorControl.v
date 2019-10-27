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
    input signed [23:0] deadband,
    output pwm_out
  );

  localparam  HA = 5;
  localparam  LA = 4;
  localparam  HB = 3;
  localparam  LB = 2;
  localparam  HC = 1;
  localparam  LC = 0;

  // if we use the err_prev every clock tick, Kd is effectively useless
  reg [6:0] Kd_delay_counter;
  reg signed [23:0] result;
  assign duty = result;

  always @ ( posedge CLK , posedge reset) begin: PID_CONTROLLER
    reg signed [23:0] err;
    reg signed [23:0] err_prev;
    reg signed [23:0] integral;
    if(reset)begin
      err <= 0;
      err_prev <= 0;
      result <= 0;
      integral <= 0;
    end else begin
      err <= (state-setpoint);
      if((integral<IntegralLimit) && (integral>-IntegralLimit)) begin
        integral <= integral+err;
      end
      result <= Kp*err + Ki*integral;//;// + Kd * (err_prev-err)
      // if((result>deadband) || (result < -deadband))begin
      if(result>PWMLimit)begin
        result <= PWMLimit;
      end else if(result<-PWMLimit)begin
        result <= -PWMLimit;
      end
      // end else begin
      //   result <= 0;
      // end
      // Kd_delay_counter <= Kd_delay_counter + 1;
      // if(Kd_delay_counter==0)begin
      //   err_prev <= err;
      // end
    end
  end

endmodule
