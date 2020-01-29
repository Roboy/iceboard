create_clock -period 62.500000 -waveform { 0.000000 31.250000 } -name CLK [ get_ports { CLK } ]
 create_clock -period 62.500 -name TinyFPGA_B|scl_enable [ get_nets scl_enable ]
create_clock -period 62.500000 -name clk500 [get_nets scl_enable]
