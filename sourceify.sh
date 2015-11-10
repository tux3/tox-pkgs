#!/bin/bash
# Downloads the upstream tarball and sets up a source package
wget https://github.com/irungentoo/filter_audio/archive/master.tar.gz
tar xf master.tar.gz
rm master.tar.gz
mv filter_audio-master libfilteraudio-0.1
tar cfz libfilteraudio_0.1.orig.tar.gz libfilteraudio-0.1
tar xvf libfilteraudio_0.1-1.debian.tar.xz -C libfilteraudio-0.1/
dpkg-source -b libfilteraudio-0.1/

