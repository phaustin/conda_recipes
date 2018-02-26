#!/bin/bash


export CC=mpicc
export FC=mpif90
cmake -D NC_DIR=$PREFIX  MPI_DIR=$PREFIX

make VERBOSE=1
make install

