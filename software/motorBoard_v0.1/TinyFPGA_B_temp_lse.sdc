create_clock -period 62.500000 -waveform { 0.000000 31.250000 } -name CLK [ get_ports { CLK } ]
create_clock -period 62.500000 -name clk500 [get_nets clk32MHz]
