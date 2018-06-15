./configure --prefix=${PREFIX} --with-blas=openblas LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib" CXXFLAGS='-DADEPT_DOUBLE_PACKET_SIZE=1 -DADEPT_FLOAT_PACKET_SIZE=1 -g -O2 -fopenmp'
make -j ${CPU_COUNT}
make check
make install
