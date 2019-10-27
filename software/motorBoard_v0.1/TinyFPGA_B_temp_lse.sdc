create_clock -period 62.500000 -waveform { 0.000000 31.250000 } -name CLK [ get_ports { CLK } ]
 create_clock -period 62.500 -name TinyFPGA_B|LED_c [ get_nets LED_c ]
create_clock -period 62.500000 -name clk500 [get_nets clk32MHz]
create_clock -period 62.500000 -name clk502 [get_nets LED_c]
