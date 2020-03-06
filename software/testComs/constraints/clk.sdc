# ##############################################################################

# iCEcube SDC

# Version:            2017.01.27914

# File Generated:     Jul 9 2017 15:15:35

# ##############################################################################

####---- CreateClock list ----1
create_clock  -period 62.50 -name {CLK} [get_ports {CLK}]
create_clock  -period 31.25 -name {clk32MHz} [get_ports {clk32MHz}]
