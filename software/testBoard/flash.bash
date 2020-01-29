#!/bin/bash
tinyprog --pyserial -c /dev/ttyACM$1 --program ./template_Implmnt/sbt/outputs/bitmap/TinyFPGA_B_bitmap.bin
