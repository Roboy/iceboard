#!/bin/bash
tinyprog --pyserial -c /dev/ttyACM$2 --program motorBoard_v0.1/firmware/id$1.bin
