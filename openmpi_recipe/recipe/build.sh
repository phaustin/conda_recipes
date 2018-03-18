#!/bin/bash


set -e
set -x

export FC="$PREFIX/bin/x86_64-conda_cos6-linux-gnu-gfortran"
export CC="$PREFIX/bin/x86_64-conda_cos6-linux-gnu-gcc"
export CXX="$PREFIX/bin/x86_64-conda_cos6-linux-gnu-g++"

export LIBRARY_PATH="$PREFIX/lib"

./configure --prefix=$PREFIX \
	    --disable-dependency-tracking

make
make install

