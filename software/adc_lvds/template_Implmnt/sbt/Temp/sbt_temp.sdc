####---- CreateClock list ----2
create_clock  -period 62.50 -waveform {0.00 31.25} -name {CLK} [get_ports {CLK}] 
create_clock  -period 62.50 -waveform {0.00 31.25} -name {TinyFPGA_B|clk_slow} [get_nets {clk_slow}] 

####---- SetFalsePath list ----2
set_false_path  -from [get_clocks {CLK}]  -to [get_clocks {TinyFPGA_B|clk_slow}]
set_false_path  -from [get_clocks {TinyFPGA_B|clk_slow}]  -to [get_clocks {CLK}]

