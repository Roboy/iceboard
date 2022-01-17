module coms #(parameter CLK_FREQ_HZ = 16_000_000)
(
	input CLK,
	input reset,
	output tx_o,
	output tx_enable,
	output reg driver_enable,
	input rx_i,
	input [31:0] baudrate,
	input [7:0] ID,
	input signed [23:0] duty,
	input signed [23:0] encoder0_position,
	input signed [23:0] encoder1_position,
	input signed [23:0] displacement,
	input signed [15:0] current,
	output reg signed [23:0] setpoint,
	output reg [7:0] control_mode,
	output reg signed [23:0] Kp,
	output reg signed [23:0] Ki,
	output reg signed [23:0] Kd,
	output reg [23:0] PWMLimit,
	output reg [23:0] IntegralLimit,
	output reg [23:0] deadband,
	output reg signed [15:0] current_limit
);

localparam  MAGIC_NUMBER_LENGTH = 4;
localparam  STATUS_REQUEST_FRAME_MAGICNUMBER = 32'h1CE1CEBB;
localparam	STATUS_REQUEST_FRAME_LENGTH = 7;
localparam 	STATUS_FRAME_MAGICNUMBER = 32'h1CEB00DA;
localparam  STATUS_FRAME_LENGTH = 28;
localparam 	SETPOINT_FRAME_MAGICNUMBER = 32'hD0D0D0D0;
localparam  SETPOINT_FRAME_LENGTH = 13;
localparam 	CONTROL_MODE_FRAME_MAGICNUMBER = 32'hBAADA555;
localparam  CONTROL_MODE_FRAME_LENGTH = 28;
localparam  MAX_FRAME_LENGTH = STATUS_FRAME_LENGTH;

	////////////////////////////////////////////////////////////////////////////////
	// Copyright (C) 1999-2008 Easics NV.
	// This source file may be used and distributed without restriction
	// provided that this copyright statement is not removed from the file
	// and that any derivative work contains the original copyright notice
	// and the associated disclaimer.
	//
	// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
	// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
	// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
	//
	// Purpose : synthesizable CRC function
	//   * polynomial: x^16 + x^15 + x^2 + 1
	//   * data width: 8
	//
	// Info : tools@easics.be
	//        http://www.easics.com
	////////////////////////////////////////////////////////////////////////////////

	// polynomial: x^16 + x^15 + x^2 + 1
	// data width: 8
	// convention: the first serial bit is D[7]
	function [15:0] nextCRC16_D8;

		input [7:0] Data;
		input [15:0] crc;
		reg [7:0] d;
		reg [15:0] c;
		reg [15:0] newcrc;
		begin
			d = Data;
			c = crc;

			newcrc[0] = d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[2] ^ d[1] ^ d[0] ^ c[8] ^ c[9] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[15];
			newcrc[1] = d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[2] ^ d[1] ^ c[9] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[15];
			newcrc[2] = d[1] ^ d[0] ^ c[8] ^ c[9];
			newcrc[3] = d[2] ^ d[1] ^ c[9] ^ c[10];
			newcrc[4] = d[3] ^ d[2] ^ c[10] ^ c[11];
			newcrc[5] = d[4] ^ d[3] ^ c[11] ^ c[12];
			newcrc[6] = d[5] ^ d[4] ^ c[12] ^ c[13];
			newcrc[7] = d[6] ^ d[5] ^ c[13] ^ c[14];
			newcrc[8] = d[7] ^ d[6] ^ c[0] ^ c[14] ^ c[15];
			newcrc[9] = d[7] ^ c[1] ^ c[15];
			newcrc[10] = c[2];
			newcrc[11] = c[3];
			newcrc[12] = c[4];
			newcrc[13] = c[5];
			newcrc[14] = c[6];
			newcrc[15] = d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[2] ^ d[1] ^ d[0] ^ c[7] ^ c[8] ^ c[9] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[15];
			nextCRC16_D8 = newcrc;
		end
	endfunction

	wire rx_data_ready;
	wire [7:0] rx_data ;

	uart_rx #(CLK_FREQ_HZ) rx(CLK,baudrate,rx_i,rx_data_ready,rx_data);

	reg [7:0] data_in[MAGIC_NUMBER_LENGTH-1:0];
	reg [7:0] data_in_frame[MAX_FRAME_LENGTH-1:0];
	reg [7:0] data_out_frame[STATUS_FRAME_LENGTH-1:0];

	reg [15:0] rx_crc ;

	reg tx_transmit ;
	reg [7:0] byte_transmit_counter;
	wire tx_active ;
	wire tx_done ;
	wire [7:0] tx_data ;
	assign tx_data = data_out_frame[byte_transmit_counter] ;
	uart_tx #(CLK_FREQ_HZ) tx(CLK,baudrate,tx_transmit,tx_data,tx_active,tx_o,tx_enable,tx_done);

	always @(posedge CLK, posedge reset) begin: FRAME_MATCHER
		localparam IDLE = 4'h0, RECEIVE_STATUS_REQUEST = 4'h1, CHECK_CRC_STATUS_REQUEST = 4'h2, RECEIVE_CONTROL_MODE = 4'h3,
				CHECK_CRC_CONTROL_MODE = 4'h4, RECEIVE_SETPOINT = 4'h5, CHECK_CRC_SETPOINT = 4'h6, SEND_STATUS = 4'h7, GENERATE_STATUS_CRC = 4'h8;
		integer state;
		integer next_state;
		reg [15:0] tx_crc;
		integer i, j, k;
		reg rx_data_ready_prev;
		if(reset) begin
			state <= IDLE;
			i <= 0;
			PWMLimit <= 500;
			setpoint <= 0;
			Kp <= 10;
			Ki <= 0;
			Kd <= 0;
			deadband <= 0;
			IntegralLimit <= 50;
		end else begin
			tx_transmit <= 0;
			rx_data_ready_prev <= rx_data_ready;
			if(rx_data_ready)begin
			  data_in[MAGIC_NUMBER_LENGTH-1] <= rx_data;
			  for(j=MAGIC_NUMBER_LENGTH-2;j>=0;j=j-1)begin
					data_in[j] <= data_in[j+1];
			  end
			end
			if({data_in[0],data_in[1],data_in[2],data_in[3]}==STATUS_REQUEST_FRAME_MAGICNUMBER)begin
			 	state <= RECEIVE_STATUS_REQUEST;
			end
			if({data_in[0],data_in[1],data_in[2],data_in[3]}==SETPOINT_FRAME_MAGICNUMBER)begin
			 	state <= RECEIVE_SETPOINT;
			end
			if({data_in[0],data_in[1],data_in[2],data_in[3]}==CONTROL_MODE_FRAME_MAGICNUMBER)begin
			 	state <= RECEIVE_CONTROL_MODE;
			end
			case(state)
				IDLE: begin
					i <= 0;
					driver_enable <= 0;
				end
				RECEIVE_STATUS_REQUEST: begin
					driver_enable <= 1;
					if(rx_data_ready==1 && rx_data_ready_prev==0)begin
						data_in_frame[i] = rx_data;
						i <= i+1;
					end
					if(i>STATUS_REQUEST_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1) begin
						state <= CHECK_CRC_STATUS_REQUEST;
					end
				end
				CHECK_CRC_STATUS_REQUEST: begin
					rx_crc = 16'hFFFF;
					for(k=0;k<STATUS_REQUEST_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2;k=k+1) begin
						rx_crc = nextCRC16_D8(data_in_frame[k],rx_crc);
					end
					if(rx_crc[15:8]==data_in_frame[STATUS_REQUEST_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2]
						  && rx_crc[7:0]==data_in_frame[STATUS_REQUEST_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1]
						  && data_in_frame[0]==ID) begin // MATCH! and for me!
						data_out_frame[0] <= STATUS_FRAME_MAGICNUMBER[31:24];
						data_out_frame[1] <= STATUS_FRAME_MAGICNUMBER[23:16];
						data_out_frame[2] <= STATUS_FRAME_MAGICNUMBER[15:8];
						data_out_frame[3] <= STATUS_FRAME_MAGICNUMBER[7:0];
						data_out_frame[4] <= ID;
						data_out_frame[5] <= control_mode;
						data_out_frame[6] <= encoder0_position[23:16];
						data_out_frame[7] <= encoder0_position[15:8];
						data_out_frame[8] <= encoder0_position[7:0];
						data_out_frame[9] <= encoder1_position[23:16];
						data_out_frame[10] <= encoder1_position[15:8];
						data_out_frame[11] <= encoder1_position[7:0];
						data_out_frame[12] <= setpoint[23:16];
						data_out_frame[13] <= setpoint[15:8];
						data_out_frame[14] <= setpoint[7:0];
						data_out_frame[15] <= duty[23:16];
						data_out_frame[16] <= duty[15:8];
						data_out_frame[17] <= duty[7:0];
						data_out_frame[18] <= displacement[23:16];
						data_out_frame[19] <= displacement[15:8];
						data_out_frame[20] <= displacement[7:0];
						data_out_frame[21] <= current[15:8];
						data_out_frame[22] <= current[7:0];
						data_out_frame[23] <= 0;
						data_out_frame[24] <= 0;
						data_out_frame[25] <= 0;
						state <= GENERATE_STATUS_CRC;
					end else begin
						state <= IDLE;
					end
				end
				GENERATE_STATUS_CRC: begin
					tx_crc = 16'hFFFF;
					for(k=MAGIC_NUMBER_LENGTH;k<STATUS_FRAME_LENGTH-2;k=k+1) begin
						tx_crc = nextCRC16_D8(data_out_frame[k],tx_crc);
					end
					data_out_frame[STATUS_FRAME_LENGTH-2] = tx_crc[15:8];
					data_out_frame[STATUS_FRAME_LENGTH-1] = tx_crc[7:0];
					byte_transmit_counter <= 0;
					tx_transmit <= 1;
					state <= SEND_STATUS;
				end
				SEND_STATUS: begin
					if(!tx_active && !tx_transmit) begin
					  if(byte_transmit_counter<(STATUS_FRAME_LENGTH-1)) begin
							byte_transmit_counter <= byte_transmit_counter + 1;
							tx_transmit <= 1;
					  end else begin
							state <= IDLE;
					  end
					end
				end
				RECEIVE_SETPOINT: begin
					if(rx_data_ready==1 && rx_data_ready_prev==0)begin
						data_in_frame[i] = rx_data;
						i <= i+1;
					end
					if(i>SETPOINT_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1) begin
						state <= CHECK_CRC_SETPOINT;
					end
				end
				CHECK_CRC_SETPOINT: begin
					rx_crc = 16'hFFFF;
					for(k=0;k<SETPOINT_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2;k=k+1) begin
						rx_crc = nextCRC16_D8(data_in_frame[k],rx_crc);
					end
					if(rx_crc[15:8]==data_in_frame[SETPOINT_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2]
						  && rx_crc[7:0]==data_in_frame[SETPOINT_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1]
						  && data_in_frame[0]==ID) begin // MATCH! and for me!
						// data_out_frame[0] <= ID;
						// byte_transmit_counter <= 0;
						// tx_transmit <= 1;
						state <= IDLE;
						setpoint[23:16] <= data_in_frame[1];
						setpoint[15:8] <= data_in_frame[2];
						setpoint[7:0] <= data_in_frame[3];
					end else begin
						state <= IDLE;
					end
				end
				RECEIVE_CONTROL_MODE: begin
					if(rx_data_ready==1 && rx_data_ready_prev==0)begin
						data_in_frame[i] = rx_data;
						i <= i+1;
					end
					if(i>CONTROL_MODE_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1) begin
						state <= CHECK_CRC_CONTROL_MODE;
					end
				end
				CHECK_CRC_CONTROL_MODE: begin
					rx_crc = 16'hFFFF;
					for(k=0;k<CONTROL_MODE_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2;k=k+1) begin
						rx_crc = nextCRC16_D8(data_in_frame[k],rx_crc);
					end
					if(rx_crc[15:8]==data_in_frame[CONTROL_MODE_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-2]
						  && rx_crc[7:0]==data_in_frame[CONTROL_MODE_FRAME_LENGTH-MAGIC_NUMBER_LENGTH-1]
						  && data_in_frame[0]==ID) begin // MATCH! and for me!
							// data_out_frame[0] <= ID;
							// byte_transmit_counter <= 0;
							// tx_transmit <= 1;
							control_mode <= data_in_frame[1];
							Kp[15:8] <= data_in_frame[2];
							Kp[7:0] <= data_in_frame[3];
							Ki[15:8] <= data_in_frame[4];
							Ki[7:0] <= data_in_frame[5];
							Kd[15:8] <= data_in_frame[6];
							Kd[7:0] <= data_in_frame[7];
							PWMLimit[23:16] <= data_in_frame[8];
							PWMLimit[15:8] <= data_in_frame[9];
							PWMLimit[7:0] <= data_in_frame[10];
							IntegralLimit[23:16] <= data_in_frame[11];
							IntegralLimit[15:8] <= data_in_frame[12];
							IntegralLimit[7:0] <= data_in_frame[13];
							deadband[23:16] <= data_in_frame[14];
							deadband[15:8] <= data_in_frame[15];
							deadband[7:0] <= data_in_frame[16];
							setpoint[23:16] <= data_in_frame[17];
							setpoint[15:8] <= data_in_frame[18];
							setpoint[7:0] <= data_in_frame[19];
							current_limit[15:8] <= data_in_frame[20];
							current_limit[7:0] <= data_in_frame[21];
						  state <= IDLE;
					end else begin
						  state <= IDLE;
					end
				end
			endcase
		end
	end

endmodule
