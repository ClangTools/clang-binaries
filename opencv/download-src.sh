#!/bin/bash

cd `dirname $0`
rm -rf "opencv-src"
wget -c "https://github.com/opencv/opencv/archive/refs/tags/$1.tar.gz"
tar -xf "$1.tar.gz"
mv "opencv-$1" opencv-src
