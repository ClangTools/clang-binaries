#!/bin/bash

CLANG_VERSION=$1
UBUNTU_VERSION=$2
cd `dirname $0`
wget -q -c "https://github.com/llvm/llvm-project/releases/download/llvmorg-$CLANG_VERSION/clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION.tar.xz"
tar -C toolchains -xf "clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION.tar.xz"
mv "toolchains/clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION" "toolchains/llvm-linux-gnu-ubuntu-x86_64"
