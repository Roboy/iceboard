#!/bin/sh

PATH_TO_ICECUBE2=/home/$USER/lscc/iCEcube2.2017.08
DUMMY_MAC=00:00:12:21:00:00 #Set the mac associated with your license file

# First we set up the dummy network interface for the license
if ! ip link show | grep eth0 # We check if the interface exists (will not work
then                          # in systems using old (ethX) interface naming)
  sudo modprobe dummy         # ethX names should be unused for this to work
                              # Other names for the dummy interface could work,
                              # but there are reports that the icecube software
                              # only checks for eth0!
  sudo ip link add eth0 type dummy
  sudo ifconfig eth0 hw ether $DUMMY_MAC
fi

# Launch icecube2
exec $PATH_TO_ICECUBE2/iCEcube2 "$@"
