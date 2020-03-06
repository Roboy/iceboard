####---- CreateClock list ----2
create_clock  -period 62.50 -waveform {0.00 31.25} -name {CLK} [get_ports {CLK}] 
create_clock  -period 62.50 -waveform {0.00 31.25} -name {TinyFPGA_B|\eeprom/i2c/i2c_clk} [get_nets {eeprom.i2c.i2c_clk}] 

####---- SetFalsePath list ----2
set_false_path  -from [get_clocks {CLK}]  -to [get_clocks {TinyFPGA_B|\eeprom/i2c/i2c_clk}]
set_false_path  -from [get_clocks {TinyFPGA_B|\eeprom/i2c/i2c_clk}]  -to [get_clocks {CLK}]

