#!/bin/bash -x
CYANOGENMOD=../../..
# Starting Timer
START=$(date +%s)

export CROSS_COMPILE=/toolchain/arm-eabi-4.4.3/bin/arm-eabi-

#export CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf-
export INSTALL_MOD_PATH=~/ubuntu_pascal/rootfs

# Make mrproper
sudo make mrproper

# Set config
sudo make wifi_defconfig
sudo make menuconfig

# Make modules
sudo nice -n 10 make -j16 modules

# Build kernel wifi Module

#./build_wifi.sh

# Build kernel
sudo nice -n 10 make -j16 kernel.img

sudo make modules_install

# Make mrproper
#make mrproper

