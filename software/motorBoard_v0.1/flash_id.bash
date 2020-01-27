#!/bin/bash
tinyprog --pyserial -c /dev/ttyACM0 --program firmware/iceboardDriver_ID_$1.bin
