if [ "$(uname)" == "Darwin" ]; then
  export CXXFLAGS="${CXXFLAGS} -DADEPT_DOUBLE_PACKET_SIZE=1 -DADEPT_FLOAT_PACKET_SIZE=1"
else
  export CXXFLAGS="${CXXFLAGS} -DADEPT_DOUBLE_PACKET_SIZE=1 -DADEPT_FLOAT_PACKET_SIZE=1 -fopenmp"
fi

./configure --prefix=${PREFIX} --with-blas=openblas LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib" CXXFLAGS="${CXXFLAGS}"
make -j ${CPU_COUNT}
make check
make install
