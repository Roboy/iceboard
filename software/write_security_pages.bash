#!/bin/bash
echo "writing security pages"
tinyprog --security TinyFPGA-Bootloader/programmer/tinyprog/page0.bin -a 1
tinyprog --security TinyFPGA-Bootloader/programmer/tinyprog/page1.bin -a 2
tinyprog -m
echo "done"

