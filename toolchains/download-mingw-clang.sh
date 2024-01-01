#!/bin/bash

TIME_VERSION=$1
UBUNTU_VERSION=$2
cd `dirname $0`
wget -q -c "https://github.com/mstorsjo/llvm-mingw/releases/download/$TIME_VERSION/llvm-mingw-$TIME_VERSION-msvcrt-ubuntu-$UBUNTU_VERSION-x86_64.tar.xz"
tar -C toolchains -xf "llvm-mingw-$TIME_VERSION-msvcrt-ubuntu-$UBUNTU_VERSION-x86_64.tar.xz"
mv "toolchains/llvm-mingw-$TIME_VERSION-msvcrt-ubuntu-$UBUNTU_VERSION-x86_64" "toolchains/llvm-mingw-msvcrt"
