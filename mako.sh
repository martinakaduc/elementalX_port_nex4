#!/bin/bash
BUILD_START=$(date +"%s")
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=../uber-4.9/bin/arm-linux-androideabi-
export KBUILD_BUILD_USER="quangduc"
export KBUILD_BUILD_HOST="quangduc"
echo -e " Initializing mako defconfig! "
make elementalx_defconfig
rm -f arch/arm/boot/zImage
echo -e " Building kernel"
make -j16
