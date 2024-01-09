#!/bin/bash

cd `dirname $0`
wget https://raw.githubusercontent.com/Zeranoe/mingw-w64-build/master/mingw-w64-build
chmod +x mingw-w64-build
mkdir -p "mingw-ubuntu-x86_64"
mkdir -p "mingw-ubuntu-x86_64/x86_64"
./mingw-w64-build --jobs 2 --prefix $(pwd)/mingw-ubuntu-x86_64/x86_64 --root $(pwd)/mingw-ubuntu-x86_64 x86_64