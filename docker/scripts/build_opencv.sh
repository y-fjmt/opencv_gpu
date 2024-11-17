#!/bin/bash

set -e

apt update && apt install -y git cmake gcc g++ python3 python3-pip

pip install numpy

cd ~
git clone https://github.com/opencv/opencv
git clone https://github.com/opencv/opencv_contrib

mkdir ~/build
cd ~/build

cmake \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_TESTS=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DWITH_OPENEXR=OFF \
    -DWITH_CUDA=ON \
    -DWITH_CUBLAS=ON \
    -DWITH_CUDNN=ON \
    -DOPENCV_DNN_CUDA=ON \
    -DBUILD_opencv_python3=ON \
    -DOPENCV_EXTRA_MODULES_PATH="~/opencv_contrib/modules" \
    ~/opencv

make -j
make install