module TinyFPGA_B_pll_1MHz(REFERENCECLK,
                           PLLOUTCORE,
                           PLLOUTGLOBAL,
                           RESET);

input REFERENCECLK;
input RESET;    /* To initialize the simulation properly, the RESET signal (Active Low) must be asserted at the beginning of the simulation */ 
output PLLOUTCORE;
output PLLOUTGLOBAL;

SB_PLL40_CORE TinyFPGA_B_pll_1MHz_inst(.REFERENCECLK(REFERENCECLK),
                                       .PLLOUTCORE(PLLOUTCORE),
                                       .PLLOUTGLOBAL(PLLOUTGLOBAL),
                                       .EXTFEEDBACK(),
                                       .DYNAMICDELAY(),
                                       .RESETB(RESET),
                                       .BYPASS(1'b0),
                                       .LATCHINPUTVALUE(),
                                       .LOCK(),
                                       .SDI(),
                                       .SDO(),
                                       .SCLK());

//\\ Fin=16, Fout=1;
defparam TinyFPGA_B_pll_1MHz_inst.DIVR = 4'b0000;
defparam TinyFPGA_B_pll_1MHz_inst.DIVF = 7'b0111111;
defparam TinyFPGA_B_pll_1MHz_inst.DIVQ = 3'b1010;
defparam TinyFPGA_B_pll_1MHz_inst.FILTER_RANGE = 3'b001;
defparam TinyFPGA_B_pll_1MHz_inst.FEEDBACK_PATH = "SIMPLE";
defparam TinyFPGA_B_pll_1MHz_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
defparam TinyFPGA_B_pll_1MHz_inst.FDA_FEEDBACK = 4'b0000;
defparam TinyFPGA_B_pll_1MHz_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
defparam TinyFPGA_B_pll_1MHz_inst.FDA_RELATIVE = 4'b0000;
defparam TinyFPGA_B_pll_1MHz_inst.SHIFTREG_DIV_MODE = 2'b00;
defparam TinyFPGA_B_pll_1MHz_inst.PLLOUT_SELECT = "GENCLK";
defparam TinyFPGA_B_pll_1MHz_inst.ENABLE_ICEGATE = 1'b0;

endmodule
