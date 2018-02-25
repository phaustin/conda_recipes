#!/bin/bash

# printenv

# echo "++++++++++++"
# echo "${CFLAGS}"
# echo "CONDA_PREFIX is ${CONDA_PREFIX} PREFIX is ${PREFIX}"

# PYSCRIPT="${RECIPE_DIR}/scripts/pyfile.py"
# out=$(python $PYSCRIPT "$CONDA_PREFIX/lib")
# echo "mother lib final: $out"


LD_DIR="$PREFIX/lib"
export LDFLAGS="$LDFLAGS -L${LD_DIR} -Wl,-rpath,${LD_DIR}"
export CFLAGS="$CFLAGS -fPIC -I$PREFIX/include"

./configure --prefix=$PREFIX
make -vv
make install
make check
