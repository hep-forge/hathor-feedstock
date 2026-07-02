#! /usr/bin/bash

export LHAPDF=$(lhapdf-config --prefix)

# Library
cd lib
NPROC=$(nproc 2>/dev/null || sysctl -n hw.ncpu)
make -j$NPROC

cd ..
# make -j$(nproc) # Demo (notice: obsolete gfortranbeing)

# Install
cp -aL include/* ${PREFIX}/include
cp -aL lib/* ${PREFIX}/lib
cp -R gui ${PREFIX}
