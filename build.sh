#!/usr/bin/env bash

set -uexo pipefail

wget -O gptfdisk-1.0.10.tar.gz https://downloads.sourceforge.net/project/gptfdisk/gptfdisk/1.0.10/gptfdisk-1.0.10.tar.gz
tar xzf gptfdisk-1.0.10.tar.gz
cd gptfdisk-1.0.10
export CXXFLAGS='-O2 -pipe -static -static-libstdc++ -static-libgcc -fno-pie'
export LDFLAGS='-static -static-libstdc++ -static-libgcc -no-pie'
make V=1 sgdisk LDFLAGS="$LDFLAGS"
strip -s sgdisk
