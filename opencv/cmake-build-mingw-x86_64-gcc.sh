#!/bin/bash

cd `dirname $0`
CURRENT_DIR=$(cd $(dirname $0); pwd)
mkdir -p "build-mingw-x86_64-gcc"
cd build-mingw-x86_64-gcc
TOOLCHAIN_ROOT_PATH=$CURRENT_DIR/../ cmake \
    -DCMAKE_TOOLCHAIN_FILE=../../toolchains/cmake/mingw-x86_64-gcc.cmake \
    `cat ../options.txt` \
    ../opencv-src
make -j2
make install