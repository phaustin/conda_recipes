#!/bin/bash

export CC="$CONDA_PREFIX/bin/mpicc"
export FC="$CONDA_PREFIX/bin/mpif90"
export CXX="$CONDA_PREFIX/bin/mpicxx"

mkdir -p build
cd build
rm -rf *
cmake -D NC_DIR="$CONDA_PREFIX" \
      -D CMAKE_BUILD_TYPE=Release \
      -D INSTALL_DIR=$PREFIX .. 


make VERBOSE=1
make install

