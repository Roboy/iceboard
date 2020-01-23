module pll8MHz(REFERENCECLK,
               PLLOUTCORE,
               PLLOUTGLOBAL,
               RESET,
               LOCK);

input REFERENCECLK;
input RESET;    /* To initialize the simulation properly, the RESET signal (Active Low) must be asserted at the beginning of the simulation */ 
output PLLOUTCORE;
output PLLOUTGLOBAL;
output LOCK;

SB_PLL40_CORE pll8MHz_inst(.REFERENCECLK(REFERENCECLK),
                           .PLLOUTCORE(PLLOUTCORE),
                           .PLLOUTGLOBAL(PLLOUTGLOBAL),
                           .EXTFEEDBACK(),
                           .DYNAMICDELAY(),
                           .RESETB(RESET),
                           .BYPASS(1'b0),
                           .LATCHINPUTVALUE(),
                           .LOCK(LOCK),
                           .SDI(),
                           .SDO(),
                           .SCLK());

//\\ Fin=16, Fout=8;
defparam pll8MHz_inst.DIVR = 4'b0000;
defparam pll8MHz_inst.DIVF = 7'b0111111;
defparam pll8MHz_inst.DIVQ = 3'b111;
defparam pll8MHz_inst.FILTER_RANGE = 3'b001;
defparam pll8MHz_inst.FEEDBACK_PATH = "SIMPLE";
defparam pll8MHz_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
defparam pll8MHz_inst.FDA_FEEDBACK = 4'b0000;
defparam pll8MHz_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
defparam pll8MHz_inst.FDA_RELATIVE = 4'b0000;
defparam pll8MHz_inst.SHIFTREG_DIV_MODE = 2'b00;
defparam pll8MHz_inst.PLLOUT_SELECT = "GENCLK";
defparam pll8MHz_inst.ENABLE_ICEGATE = 1'b0;

endmodule
