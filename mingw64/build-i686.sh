#!/bin/bash

cd `dirname $0`
wget https://raw.githubusercontent.com/Zeranoe/mingw-w64-build/master/mingw-w64-build
chmod +x mingw-w64-build
mkdir -p "mingw-ubuntu-i686"
mkdir -p "mingw-ubuntu-i686/i686"
./mingw-w64-build --jobs 2 --prefix mingw-ubuntu-i686/i686 --root mingw-ubuntu-i686 i686