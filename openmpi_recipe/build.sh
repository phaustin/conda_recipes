#!/bin/bash


set -e
set -x

export LIBRARY_PATH="$PREFIX/lib"

./configure --prefix=$PREFIX \
	    --disable-dependency-tracking

make
make install

