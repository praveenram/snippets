#!/bin/bash

# Ubuntu fresh machine setup steps
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim git wget curl build-essential htop python-pip python3-pip tilda terminator flashplugin-installer autoconf automake cmake unzip libv4l-dev
sudo apt-get install libeigen3-dev cmake-qt-gui

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


# Bash modifications
alias python='python3'
alias pip='pip3'

# For thesis
pip install jsonpickle numpy matplotlib PyCmdMessenger pyserial
sudo apt-get install gnuplot libserial-dev v4l-utils libboost-thread-dev libboost-iostreams-dev libboost-filesystem-dev

# General
sudo usermod -a -G staff dialout praveen
