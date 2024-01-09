#!/bin/bash

cd `dirname $0`
mkdir -p toolchains
bash download-mingw-clang.sh $MINGW_CLANG_VERSION $MINGW_UBUNTU_VERSION
bash download-llvm-clang.sh $LLVM_CLANG_VERSION $LLVM_UBUNTU_VERSION
bash download-mingw-gcc.sh $MINGW_GCC_TIME_VERSION $MINGW_GCC_VERSION "i686"
bash download-mingw-gcc.sh $MINGW_GCC_TIME_VERSION $MINGW_GCC_VERSION "x86_64"
ls toolchains