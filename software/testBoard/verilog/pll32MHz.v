module pll32MHz(REFERENCECLK,
                PLLOUTCORE,
                PLLOUTGLOBAL,
                RESET);

input REFERENCECLK;
input RESET;    /* To initialize the simulation properly, the RESET signal (Active Low) must be asserted at the beginning of the simulation */
output PLLOUTCORE;
output PLLOUTGLOBAL;

SB_PLL40_CORE pll32MHz_inst(.REFERENCECLK(REFERENCECLK),
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

//\\ Fin=16, Fout=32;
defparam pll32MHz_inst.DIVR = 4'b0000;
defparam pll32MHz_inst.DIVF = 7'b0000001;
defparam pll32MHz_inst.DIVQ = 3'b011;
defparam pll32MHz_inst.FILTER_RANGE = 3'b001;
defparam pll32MHz_inst.FEEDBACK_PATH = "PHASE_AND_DELAY";
defparam pll32MHz_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
defparam pll32MHz_inst.FDA_FEEDBACK = 4'b0000;
defparam pll32MHz_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
defparam pll32MHz_inst.FDA_RELATIVE = 4'b0000;
defparam pll32MHz_inst.SHIFTREG_DIV_MODE = 2'b00;
defparam pll32MHz_inst.PLLOUT_SELECT = "SHIFTREG_0deg";
defparam pll32MHz_inst.ENABLE_ICEGATE = 1'b0;

endmodule
