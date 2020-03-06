// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Sep 13 03:00:10 2019
//
// Verilog Description of module TinyFPGA_B_pll
//

module TinyFPGA_B_pll (REFERENCECLK, PLLOUTCORE, PLLOUTGLOBAL, RESET) /* synthesis syn_module_defined=1 */ ;   // verilog/TinyFPGA_B_pll.v(1[8:22])
    input REFERENCECLK;   // verilog/TinyFPGA_B_pll.v(6[7:19])
    output PLLOUTCORE;   // verilog/TinyFPGA_B_pll.v(8[8:18])
    output PLLOUTGLOBAL;   // verilog/TinyFPGA_B_pll.v(9[8:20])
    input RESET;   // verilog/TinyFPGA_B_pll.v(7[7:12])
    
    
    wire GND_net, REFERENCECLK_c, RESET_c, PLLOUTCORE_c, PLLOUTGLOBAL_c, 
        VCC_net;
    
    VCC i7 (.Y(VCC_net));
    SB_IO PLLOUTGLOBAL_pad (.PACKAGE_PIN(PLLOUTGLOBAL), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(PLLOUTGLOBAL_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PLLOUTGLOBAL_pad.PIN_TYPE = 6'b011001;
    defparam PLLOUTGLOBAL_pad.PULLUP = 1'b0;
    defparam PLLOUTGLOBAL_pad.NEG_TRIGGER = 1'b0;
    defparam PLLOUTGLOBAL_pad.IO_STANDARD = "SB_LVCMOS";
    SB_PLL40_CORE TinyFPGA_B_pll_inst (.REFERENCECLK(REFERENCECLK_c), .PLLOUTCORE(PLLOUTCORE_c), 
            .PLLOUTGLOBAL(PLLOUTGLOBAL_c), .BYPASS(GND_net), .RESETB(RESET_c)) /* synthesis syn_instantiated=1 */ ;
    defparam TinyFPGA_B_pll_inst.FEEDBACK_PATH = "SIMPLE";
    defparam TinyFPGA_B_pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam TinyFPGA_B_pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam TinyFPGA_B_pll_inst.SHIFTREG_DIV_MODE = 2'b00;
    defparam TinyFPGA_B_pll_inst.FDA_FEEDBACK = 4'b0000;
    defparam TinyFPGA_B_pll_inst.FDA_RELATIVE = 4'b0000;
    defparam TinyFPGA_B_pll_inst.PLLOUT_SELECT = "GENCLK";
    defparam TinyFPGA_B_pll_inst.DIVR = 4'b0000;
    defparam TinyFPGA_B_pll_inst.DIVF = 7'b0111011;
    defparam TinyFPGA_B_pll_inst.DIVQ = 3'b011;
    defparam TinyFPGA_B_pll_inst.FILTER_RANGE = 3'b001;
    defparam TinyFPGA_B_pll_inst.ENABLE_ICEGATE = 1'b0;
    defparam TinyFPGA_B_pll_inst.TEST_MODE = 1'b0;
    defparam TinyFPGA_B_pll_inst.EXTERNAL_DIVIDE_FACTOR = 1;
    SB_IO REFERENCECLK_pad (.PACKAGE_PIN(REFERENCECLK), .OUTPUT_ENABLE(VCC_net), 
          .D_IN_0(REFERENCECLK_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam REFERENCECLK_pad.PIN_TYPE = 6'b000001;
    defparam REFERENCECLK_pad.PULLUP = 1'b0;
    defparam REFERENCECLK_pad.NEG_TRIGGER = 1'b0;
    defparam REFERENCECLK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO RESET_pad (.PACKAGE_PIN(RESET), .OUTPUT_ENABLE(VCC_net), .D_IN_0(RESET_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam RESET_pad.PIN_TYPE = 6'b000001;
    defparam RESET_pad.PULLUP = 1'b0;
    defparam RESET_pad.NEG_TRIGGER = 1'b0;
    defparam RESET_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(GND_net));
    SB_IO PLLOUTCORE_pad (.PACKAGE_PIN(PLLOUTCORE), .OUTPUT_ENABLE(VCC_net), 
          .D_OUT_0(PLLOUTCORE_c));   // /media/external/iCEcube2/LSE/userware/unix/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam PLLOUTCORE_pad.PIN_TYPE = 6'b011001;
    defparam PLLOUTCORE_pad.PULLUP = 1'b0;
    defparam PLLOUTCORE_pad.NEG_TRIGGER = 1'b0;
    defparam PLLOUTCORE_pad.IO_STANDARD = "SB_LVCMOS";
    
endmodule
