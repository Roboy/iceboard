create_clock -period 62.50 -name {CLK} -waveform [list 0.00 31.25] [get_ports CLK]
create_clock -period 62.50 -name {TinyFPGA_B|clk_slow} -waveform [list 0.00 31.25] [get_nets clk_slow]
set_false_path -from [get_clocks CLK] -to [get_clocks TinyFPGA_B|clk_slow]
set_false_path -from [get_clocks TinyFPGA_B|clk_slow] -to [get_clocks CLK]
