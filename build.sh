#!/usr/bin/env bash
set -ex

cargo build

rm -fr isodir
mkdir -p isodir/boot/grub
cp target/i686-unknown-none/debug/kernel isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir