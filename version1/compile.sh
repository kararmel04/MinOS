#!/bin/bash

nasm b.asm -f bin -o bootloader.bin

qemu-system-i386 -drive format=raw,file=bootloader.bin