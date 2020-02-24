#!/bin/bash
echo "connect spidriver via programmer port on the motorboard, press and hold reset and connect power"


./spidriver/python/samples/TinyFPGA_BX_SPIDriver_flash.py -w TinyFPGA-Bootloader/boards/TinyFPGA_BX/fw.bin

read -r -p "flash done, proceed? [y/n] " response
response=${response,,}    # tolower
if [[ $response =~ ^(yes|y)$ ]]; then
  echo "writing security pages"
  tinyprog --security TinyFPGA-Bootloader/programmer/tinyprog/page0.bin -a 1
  tinyprog --security TinyFPGA-Bootloader/programmer/tinyprog/page1.bin -a 2
  tinyprog -m

  echo "writing testPins fpga image"
  tinyprog --pyserial -c /dev/ttyACM0 --program testPins/template_Implmnt/sbt/outputs/bitmap/TinyFPGA_B_bitmap.bin
fi
echo "done"
