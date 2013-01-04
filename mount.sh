#!/bin/sh

sudo mount -t proc proc ~/ubuntu_pascal/rootfs/proc
sudo mount -t sysfs sysfs ~/ubuntu_pascal/rootfs/sys
sudo mount -o bind /dev ~/ubuntu_pascal/rootfs/dev
sudo chroot ~/ubuntu_pascal/rootfs
