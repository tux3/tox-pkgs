#!/bin/bash
# Downloads the upstream tarball and sets up a source package
NAME=qtox
UVER=1.1
DVER=1
wget https://github.com/tux3/qTox/archive/master.tar.gz
tar xf master.tar.gz
rm master.tar.gz
mv qTox-master "$NAME"-"$UVER"
tar cfz "$NAME"_"$UVER".orig.tar.gz "$NAME"-"$UVER"
tar xvf "$NAME"_"$UVER"-"$DVER".debian.tar.xz -C "$NAME"-"$UVER"
dpkg-source -b "$NAME"-"$UVER"

