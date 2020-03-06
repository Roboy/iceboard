--------------------------------------------------------------------------------
--
--   FileName:         quadrature_decoder.vhd
--   Dependencies:     None
--   Design Software:  Quartus II 64-bit Version 13.1.0 Build 162 SJ Web Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 9/7/2017 Scott Larson
--     Initial Public Release
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY quadrature_decoder IS
	GENERIC(
		debounce_time					:	INTEGER := 50_000 	--number of clock cycles required to register a new position = debounce_time + 2
		);
	PORT(
		clk				:	IN			STD_LOGIC;										--system clock
		a					:	IN			STD_LOGIC;										--quadrature encoded signal a
		b					:	IN			STD_LOGIC;  									--quadrature encoded signal b
		direction		:	OUT		STD_LOGIC;										--direction of last change, 1 = positive, 0 = negative
		position			:	BUFFER	INTEGER := 0);	--current position relative to index or initial value
END quadrature_decoder;

ARCHITECTURE logic OF quadrature_decoder IS
	SIGNAL	a_new 				:	STD_LOGIC_VECTOR(1 DOWNTO 0);						--synchronizer/debounce registers for encoded signal a
	SIGNAL	b_new					:	STD_LOGIC_VECTOR(1 DOWNTO 0); 					--synchronizer/debounce registers for encoded signal b
	SIGNAL	a_prev				:	STD_LOGIC;												--last previous stable value of encoded signal a
	SIGNAL	b_prev				:	STD_LOGIC;												--last previous stable value of encoded signal b
	SIGNAL	debounce_cnt		:	INTEGER RANGE 0 TO debounce_time;				--timer to remove glitches and validate stable values of inputs
BEGIN

	PROCESS(clk)
	BEGIN
		IF(clk'EVENT AND clk = '1') THEN													--rising edge of system clock

			--synchronize and debounce a and b inputs
			a_new <= a_new(0) & a;																--shift in new values of 'a'
			b_new <= b_new(0) & b;																--shift in new values of 'b'
			IF(((a_new(0) XOR a_new(1)) OR (b_new(0) XOR b_new(1))) = '1') THEN	--a input or b input is changing
				debounce_cnt <= 0;																	--clear debounce counter
			ELSIF(debounce_cnt = debounce_time) THEN										--debounce time is met
				a_prev <= a_new(1);																	--update value of a_prev
				b_prev <= b_new(1);																	--update value of b_prev
			ELSE																						--debounce time is not yet met
				debounce_cnt <= debounce_cnt + 1;												--increment debounce counter
			END IF;

			IF(debounce_cnt = debounce_time													--debounce time for a and b is met
					AND ((a_prev XOR a_new(1)) OR (b_prev XOR b_new(1))) = '1') THEN	--AND the new value is different than the previous value
				direction <= b_prev XOR a_new(1);													--update the direction
				IF((b_prev XOR a_new(1)) = '1') THEN												--clockwise direction
						position <= position + 1;																--advance position counter
				ELSE																							--counter-clockwise direction
						position <= position - 1;																--decrement position counter
				END IF;
			END IF;

		END IF;
	END PROCESS;

END logic;
