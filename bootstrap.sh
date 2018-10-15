#!/bin/sh
[ ! -e configure ] && ./autogen.sh
./configure --host=arm-linux --with-sysroot=/chroot --prefix= --disable-external-libs --disable-sqlite --disable-full-suite
make -j8
make DESTDIR=/chroot install
