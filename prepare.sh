#!/bin/bash
# install the module for ubuntu
apt update && apt install linux-image-extra-virtual
# configure 5 capture/playback interfaces
echo "options snd-aloop enable=1,1,1,1,1 index=0,1,2,3,4" > /etc/modprobe.d/alsa-loopback.conf
# setup autoload the module
echo "snd-aloop" >> /etc/modules
# check that the module is loaded
lsmod | grep snd_aloop

#reboot