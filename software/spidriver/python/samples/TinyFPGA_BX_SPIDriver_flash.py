#!/usr/bin/env python2

## Highly advise running `setserial /dev/ttyUSB0 low_latency` before flashing
from spidriver import SPIDriver
import struct
import time
import sys
import getopt

if __name__ == '__main__':
    try:
        optlist, args = getopt.getopt(sys.argv[1:], "h:r:w:")
    except getopt.GetoptError as reason:
        print()
        print('usage: TinyFPGA_BX_SPIDriver_flash [ -h device ] [ -r file ] [ -w file ]')
        print()
        print()
        sys.exit(1)
    optdict = dict(optlist)

    s = SPIDriver(optdict.get('-h', "/dev/ttyUSB0"))
    s.seta(0)
    s.unsel()

    def command(b):
        s.unsel()
        s.sel()
        s.write(b)

    def idcode():
        command([0x9f])
        return s.read(3)

    def write_enable():
        command([0x06])

    def wait_ready():
        while True:
            command([0x05])
            (r,) = struct.unpack("B", s.read(1))
            if (r & 1) == 0:
                break

    def addr24(a):
        return [(a >> 16) & 0xff, (a >> 8) & 0xff, a & 0xff]

    def page_program(a, b256):
        write_enable()
        command([0x02] + addr24(a))
        s.write(b256)
        wait_ready()

    def read(a):
        command([0x03] + addr24(a))

    print("Required: 1f 85 01 or 07 e2 00 or 07 e0 00")
    while True:
        ids = struct.unpack("BBB", idcode())
        print("Got JEDEC ID: %02x %02x %02x" % ids)
        if ids == (0x1f, 0x85, 0x01) or ids == (0x07, 0xe2, 0x00) or ids == (0x07, 0xe0, 0x00):
            break

    size_bytes = int(4000000 / 8)
    print("Flash size is %d Mbit" % ((size_bytes * 8) / 1000000))

    if '-r' in optdict:
        read(0)
        chunk = 8 * 1024
        with open(optdict['-r'], "wb") as f:
            for a in range(0, size_bytes, chunk):
                f.write(s.read(chunk))
                print("%d/%d KBytes" % (a / 1024, size_bytes / 1024))

    if '-w' in optdict:
        write_enable()
        print("Erasing chip...")
        command([0xc7])
        wait_ready()
        print("...Chip erased")
        with open(optdict['-w'], "rb") as f:
            for a in range(0, size_bytes, 256):
                page_program(a, f.read(256))
                print("%d/%d KBytes" % (a / 1024, size_bytes / 1024))

    s.unsel()
    s.seta(1)
    s.detach()
