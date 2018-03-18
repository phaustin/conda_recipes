#!/bin/bash

git checkout -b 4core origin/4core

export CC="$PREFIX/bin/mpicc"
export FC="$PREFIX/bin/mpif90"
export CXX="$PREFIX/bin/mpicxx"

mkdir -p build
cd build
rm -rf *
cmake -D NC_DIR="$PREFIX" \
      -D CMAKE_BUILD_TYPE=Release \
      -D INSTALL_DIR=$PREFIX .. 


make VERBOSE=1
make install

