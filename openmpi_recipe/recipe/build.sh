#!/bin/bash


set -e
set -x

export FC="$CONDA_PREFIX/bin/x86_64-conda_cos6-linux-gnu-gfortran"
export CC="$CONDA_PREFIX/bin/x86_64-conda_cos6-linux-gnu-gcc"
export CXX="$CONDA_PREFIX/bin/x86_64-conda_cos6-linux-gnu-g++"

export LIBRARY_PATH="$PREFIX/lib"

./configure --prefix=$PREFIX \
	    --disable-dependency-tracking

make
make install

