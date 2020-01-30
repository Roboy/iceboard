create_clock -period 62.500000 -waveform { 0.000000 31.250000 } -name CLK [ get_ports { CLK } ]
 create_clock -period 62.500 -name TinyFPGA_B|\eeprom/i2c/i2c_clk [ get_nets \eeprom/i2c/i2c_clk ]
create_clock -period 62.500000 -name clk500 [get_nets clk32MHz]
create_clock -period 62.500000 -name clk502 [get_nets \eeprom/i2c/i2c_clk]
