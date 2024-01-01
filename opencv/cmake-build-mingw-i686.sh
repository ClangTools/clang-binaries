#!/bin/bash

cd `dirname $0`
CURRENT_DIR=$(cd $(dirname $0); pwd)
mkdir -p "build-mingw-i686"
cd build-mingw-i686
TOOLCHAIN_ROOT_PATH=$CURRENT_DIR/../ cmake \
    -DCMAKE_MAKE_PROGRAM=make \
    -DCMAKE_TOOLCHAIN_FILE=../../toolchains/cmake/mingw-i686.cmake \
    -DOPENCV_BIN_INSTALL_PATH=lib \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_STATIC_LIBS=OFF \
    -DWITH_FFMPEG=ON \
    -DBUILD_LIST="core,highgui,dnn,imgcodecs,imgproc,video,videoio,calib3d,features2d,objdetect,flann" \
    -DWITH_IPP=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_opencv_apps=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DINSTALL_PYTHON_EXAMPLES=OFF \
    -DINSTALL_C_EXAMPLES=OFF \
    -DBUILD_NEW_PYTHON_SUPPORT=OFF \
    -DBUILD_opencv_java_bindings_gen=OFF \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_opencv_python_tests=OFF \
    -DBUILD_opencv_photo=OFF \
    -DWITH_OBSENSOR=OFF \
    -DHAVE_MSMF=OFF \
    -DWITH_MSMF=OFF \
    -DWITH_MSMF_DXVA=OFF \
    -DHAVE_MSMF_DXVA=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_ZLIB=ON \
    -DBUILD_JASPER=ON \
    -DBUILD_JPEG=ON \
    -DBUILD_opencv_gapi=OFF \
    -DBUILD_TIFF=ON \
    -DCMAKE_BUILD_TYPE=Release \
    ../opencv-src
make -j2
make install