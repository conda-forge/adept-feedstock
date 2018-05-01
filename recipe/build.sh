./configure --prefix=${PREFIX} --with-blas=openblas LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib" CXXFLAGS='-mno-sse2 -mno-avx -g -O2 -fopenmp'
make -j ${CPU_COUNT}
make check
make install
