#!/usr/bin/sh
# Build and install the core MINC library in the MouseAtlas tree: 
# For OpenSuSE ensure the following packages are installed 
#   cmake, hdf5-devel, hdf5-devel-static, netcdf-devel, netcdf-devel-static

MA=/opt/MouseAtlas
#export MA=$HOME/MouseAtlas/Build/
#MA=$HOME/MouseAtlas/Build/debug

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$MA \
    -DCMAKE_COLOR_MAKEFILE=False \
    -DCMAKE_VERBOSE_MAKEFILE=True \
    -DLIBMINC_MINC1_SUPPORT=True \
    -DLIBMINC_BUILD_SHARED_LIBS=True \
    .

make
make install

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$MA \
    -DCMAKE_COLOR_MAKEFILE=False \
    -DCMAKE_VERBOSE_MAKEFILE=True \
    -DLIBMINC_MINC1_SUPPORT=True \
    -DLIBMINC_BUILD_SHARED_LIBS=False \
    .

make
make install
