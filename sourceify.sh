#!/bin/bash
# Downloads the upstream tarball and sets up a source package
NAME=libtoxcore
GIT_URL=https://github.com/irungentoo/toxcore

git clone $GIT_URL $NAME
cd $NAME
UVER=0.1.`git rev-list --count HEAD`.`git rev-parse HEAD | head -c 7`
DVER=1
cd ..

mv $NAME "$NAME"-"$UVER"
mv "$NAME".debian.tar.xz "$NAME"_"$UVER"-"$DVER".debian.tar.xz
tar cfz "$NAME"_"$UVER".orig.tar.gz "$NAME"-"$UVER"
tar xvf "$NAME"_"$UVER"-"$DVER".debian.tar.xz -C "$NAME"-"$UVER"
sed s/UVER/$UVER/ -i "$NAME"-"$UVER"/debian/changelog
sed s/DVER/$DVER/ -i "$NAME"-"$UVER"/debian/changelog
dpkg-source -b "$NAME"-"$UVER"

