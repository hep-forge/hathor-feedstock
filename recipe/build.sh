#! /usr/bin/bash

export LHAPDF=$(lhapdf-config --prefix)

# Library
cd lib
make -j$(nproc)

cd ..
# make -j$(nproc) # Demo (notice: obsolete gfortranbeing)

# Install
cp -aL include/* ${PREFIX}/include
cp -aL lib/* ${PREFIX}/lib
cp -R gui ${PREFIX}
