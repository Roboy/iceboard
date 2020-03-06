create_clock -period 62.50 -name {CLK} -waveform [list 0.00 31.25] [get_ports CLK]
create_clock -period 62.50 -name {TinyFPGA_B|\eeprom/i2c/i2c_clk} -waveform [list 0.00 31.25] [get_nets eeprom.i2c.i2c_clk]
set_false_path -from [get_clocks CLK] -to [get_clocks {TinyFPGA_B|\eeprom/i2c/i2c_clk}]
set_false_path -from [get_clocks {TinyFPGA_B|\eeprom/i2c/i2c_clk}] -to [get_clocks CLK]
