#!/bin/bash
cd $HOME
mkdir workarea-uhd && cd workarea-uhd
git clone https://github.com/EttusResearch/uhd
cd uhd
git tag -l
git checkout release_003_009_002 
cd host
mkdir build
cd build
cmake -DENABLE_E300=ON -DE300_FORCE_NETWORK=ON ..
make
make test
sudo make install
sudo ldconfig

cd $HOME && mkdir workarea-gnuradio && cd workarea-gnuradio
git clone --recursive https://github.com/gnuradio/gnuradio
cd gnuradio
git tag -l
git checkout v3.7.13.4
mkdir build && cd build
cmake ../
make
make test 
sudo make install
sudo ldconfig

##Verificación de la instalación
gnuradio-config-info --version
gnuradio-config-info --prefix
gnuradio-config-info --enabled-components

