#!/bin/bash

TIME_VERSION=$1
GCC_VERSION=$2
ARCH_VERSION=$3
cd `dirname $0`
wget -q -c "https://github.com/ClangTools/clang-binaries/releases/download/mingw64-${TIME_VERSION}/mingw-${GCC_VERSION}.${ARCH_VERSION}.tar.gz"
mkdir -p "toolchains/gcc-mingw-msvcrt-${ARCH_VERSION}"
tar -C "toolchains/gcc-mingw-msvcrt-${ARCH_VERSION}" -xf "mingw-${GCC_VERSION}.${ARCH_VERSION}.tar.gz"

