#!/bin/bash
# Downloads the upstream tarball and sets up a source package
NAME=libtoxcore
UVER=0.1
DVER=1
wget https://github.com/irungentoo/toxcore/archive/master.tar.gz
tar xf master.tar.gz
rm master.tar.gz
mv toxcore-master "$NAME"-"$UVER"
tar cfz "$NAME"_"$UVER".orig.tar.gz "$NAME"-"$UVER"
tar xvf "$NAME"_"$UVER"-"$DVER".debian.tar.xz -C "$NAME"-"$UVER"
dpkg-source -b "$NAME"-"$UVER"

