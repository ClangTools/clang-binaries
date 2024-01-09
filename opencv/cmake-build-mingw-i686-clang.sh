#!/bin/bash

cd `dirname $0`
CURRENT_DIR=$(cd $(dirname $0); pwd)
mkdir -p "build-mingw-i686-clang"
cd build-mingw-i686-clang
TOOLCHAIN_ROOT_PATH=$CURRENT_DIR/../ cmake \
    -DCMAKE_TOOLCHAIN_FILE=../../toolchains/cmake/mingw-i686-clang.cmake \
    `cat ../options.txt` \
    ../opencv-src
make -j2
make install