#!/bin/bash

export CROSS_COMPILE=$(pwd)/bin/aarch64-linux-android-

export ARCH=arm64 && export SUBARCH=arm64

make clean -j$(nproc --all)

make mrproper -j$(nproc --all)

make exynos9810-crownlte_defconfig -j$(nproc --all)

make -j$(nproc --all)

