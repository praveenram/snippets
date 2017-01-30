#!/bin/bash

# Ubuntu fresh machine setup steps
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim git wget curl build-essential htop python-pip python3-pip tilda terminator flashplugin-installer autoconf automake cmake unzip libv4l-dev
sudo apt-get install libeigen3-dev cmake-qt-gui

# Java
sudo apt-get install openjdk-9-jdk
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
# Install any other version of official oracle jdk you need

# NVidia drivers and cuda
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-current nvidia-cuda-toolkit

# For Opencv
sudo apt-get install libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
sudo apt-get install python-dev python3-dev python-numpy python3-numpy libxvidcore-dev libx264-dev libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran

# Use cmake-gui to configure required items in cmake
# To finish installing OpenCV follow steps from the OpenCV website: docs.opencv.org/3.1.0/d7/d9f/tutorial_linux_install.html or http://www.pyimagesearch.com/2016/10/24/ubuntu-16-04-how-to-install-opencv/

cd
mkdir dev-tools
cd dev-tools

git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git

cd opencv
git checkout 3.2.0

cd ../opencv_contrib
git checkout 3.2.0

cd ../opencv
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D WITH_CUDA=ON \
    -D ENABLE_FAST_MATH=1 \
    -D CUDA_FAST_MATH=1 \
    -D WITH_CUBLAS=1 \
    -D WITH_EIGEN=1 \
    -D WITH_OPENGL=1 \
    -D WITH_NVCUVID=1 \
    -D WITH_LIBV4L=1 \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D OPENCV_EXTRA_MODULES_PATH=~/dev-tools/opencv_contrib/modules \
    -D BUILD_EXAMPLES=OFF ..

make -j8
sudo make install
sudo ldconfig

# Might need to make openCV again when OS is upgraded.

# Bash modifications
alias python='python3'
alias pip='pip3'

# For thesis
pip install jsonpickle numpy matplotlib PyCmdMessenger pyserial
sudo apt-get install gnuplot libserial-dev v4l-utils libboost-thread-dev libboost-iostreams-dev libboost-filesystem-dev

# General
sudo usermod -a -G staff dialout praveen

# VIm / Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Post setup commands
sudo apt-get install topmenu-gtk3 topmenu-gtk2 python3-tk
sudo apt-get install xournal
sudo apt-get install bluez-tools bluetooth
