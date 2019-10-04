module motorControl #(parameter MAX_LIMIT = 128, parameter MIN_LIMIT = -128)(
    input CLK,
    input reset,
    input hall1,
    input hall2,
    input hall3,
    output reg [5:0] GATES,
    output reg signed [23:0] pwm,
    input signed [23:0] setpoint,
    input signed [23:0] state,
    input signed [23:0] Kp,
    input signed [23:0] Ki,
    input signed [23:0] Kd,
    input signed [23:0] PWMLimit,
    input signed [23:0] IntegralLimit,
    input signed [23:0] deadband
  );

  localparam  HA = 5;
  localparam  LA = 4;
  localparam  HB = 3;
  localparam  LB = 2;
  localparam  HC = 1;
  localparam  LC = 0;

  // if we use the err_prev every clock tick, Kd is effectively useless
  reg [6:0] Kd_delay_counter;

  always @ ( posedge CLK , posedge reset) begin: PID_CONTROLLER
    reg signed [31:0] err;
    reg signed [31:0] err_prev;
    reg signed [31:0] result;
    reg signed [9:0] integral;
    if(reset)begin
      err <= 0;
      err_prev <= 0;
      pwm <= 0;
    end else begin
      err <= (state-setpoint);
      if((integral<IntegralLimit) && (integral>-IntegralLimit)) begin
        integral <= integral+err;
      end
      result <= Kp*err + Kd * (err_prev-err) + Ki*integral;
      if((result>deadband) || (result < -deadband))begin
        if(result>PWMLimit)begin
          pwm <= PWMLimit;
        end else if(result<-PWMLimit)begin
          pwm <= -PWMLimit;
        end else begin
          pwm <= result;
        end
      end else begin
        pwm <= 0;
      end
      Kd_delay_counter <= Kd_delay_counter + 1;
      if(Kd_delay_counter==0)begin
        err_prev <= err;
      end
    end
  end

  reg [8:0] pwm_count;

  always @(posedge CLK) begin: BLDC_COMMUTATION
    if( pwm>=0 && pwm_count<pwm)begin
      GATES <= 0;
      if(hall1 && ~hall2 && hall3) begin // A -> B
        GATES[HA] <= 1;
        GATES[LB] <= 1;
      end else if(hall1 && ~hall2 && ~hall3)begin // A -> C
        GATES[HA] <= 1;
        GATES[LC] <= 1;
      end else if(hall1 && hall2 && ~hall3) begin // B -> C
        GATES[HB] <= 1;
        GATES[LC] <= 1;
      end else if(~hall1 && hall2 && ~hall3)begin // B -> A
        GATES[HB] <= 1;
        GATES[LA] <= 1;
      end else if(~hall1 && hall2 && hall3) begin // C -> A
        GATES[HC] <= 1;
        GATES[LA] <= 1;
      end else if(~hall1 && ~hall2 && hall3)begin // C -> B
        GATES[HC] <= 1;
        GATES[LB] <= 1;
      end
    end else if ( pwm<0 && pwm_count<(-pwm)) begin
      GATES <= 0;
      if(hall1 && ~hall2 && hall3) begin // A <- B
        GATES[LA] <= 1;
        GATES[HB] <= 1;
      end else if(hall1 && ~hall2 && ~hall3)begin // A <- C
        GATES[LA] <= 1;
        GATES[HC] <= 1;
      end else if(hall1 && hall2 && ~hall3) begin // B <- C
        GATES[LB] <= 1;
        GATES[HC] <= 1;
      end else if(~hall1 && hall2 && ~hall3)begin // B <- A
        GATES[LB] <= 1;
        GATES[HA] <= 1;
      end else if(~hall1 && hall2 && hall3) begin // C <- A
        GATES[LC] <= 1;
        GATES[HA] <= 1;
      end else if(~hall1 && ~hall2 && hall3)begin // C <- B
        GATES[LC] <= 1;
        GATES[HB] <= 1;
      end
    end else begin
      GATES <= 0;
    end
    pwm_count <= pwm_count+1;
  end


endmodule
